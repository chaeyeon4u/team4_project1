<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%-- <%@ include file="/WEB-INF/views/special/cartListLinks.jsp"%> --%>
<%-- <%@ include file="/WEB-INF/views/common/headerBelowLinks.jsp"%> --%>

<div class="orderwrap1807">
	<div id="bodyWrap">
		<h3 class="cnts_title cnts_tlt1807">
			<span>장바구니</span>
		</h3>

		<div class="cart-form">
			<div class="tblwrap">
				<table class="tbl_ltype">
					<caption>장바구니</caption>
					<colgroup>
						<col style="width: 10px;">
						<col>
						<col style="width: 150px">
						<col style="width: 105px">
						<col style="width: 110px">
					</colgroup>
					<thead>
						<tr>
							<th scope="col">
								<input type="checkbox" id="entryCheckAll" name="entryCheckAll" onclick="checkAll(this);selectProductCount(${cartSize});selectProductPrice();" />
							</th>
							<th scope="col">상품정보</th>
							<th scope="col">수량</th>
							<th scope="col">판매가</th>
							<th scope="col">선택</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="product" items="${cartItems}" varStatus="status">
							<%-- 첫번째 행의 시작 --%>
							<tr class="entryProductInfo">
								<%-- 체크박스 --%>
								<td class="frt">
									<!-- value는 리스트의 개수만큼 내림차순으로 -->
									<input type="checkbox" class="entryProductCheck" value="${status.count}" onclick="selectProductCount(${cartSize});selectProductPrice();" />
								</td>
								<%-- 상품정보 --%>
								<td class="pt_list_wrap">
									<div class="pt_list_all">
										<a href="/cart/set/${product.productColor.id}">
											<img src="${product.productColor.img1}" style="image-rendering: -webkit-optimize-contrast;" alt="">
										</a>
										<div class="tlt_wrap">
											<a href="/cart/set/${product.productColor.id}" class="basket_tlt">
												<span class="tlt">${product.brand.name}</span>
												<span class="sb_tlt">${product.productCommon.name}</span>
											</a>
											<p class="color_op">
												color : ${product.productColor.colorCode}
												<span>/</span>
												size : ${product.productStock.sizeCode}
											</p>
											<!-- stock check -->
											<!-- 3개부터 품절임박 표시 -->
											<c:if test="${product.productStock.stock < 4 and product.productStock.stock > 0}">
												<p class="stock_info">품절 임박 ! 현재 선택하신 상품의 재고가 ${product.productStock.stock}개 남았습니다.</p>
											</c:if>

											<c:if test="${product.productStock.stock < 1}">
												<p class="stock_info">품절</p>
											</c:if>
											<input type="hidden" name="stock" value="${product.productStock.stock}" />
											<!-- //stock check -->
											<div class="option_wrap">
												<input type="hidden" value="${product.productCommon.id}" />
												<a href="javascript:void(0);" class="btn_option" onclick="display_opt(this, '${product.productColor.colorCode}', '${product.productStock.sizeCode}', '${product.productCommon.id}','${product.productColor.id}' , ${status.count})">옵션변경</a>
											</div>
										</div>
									</div>
								</td>
								<%-- 수량 --%>
								<td class="al_middle">
									<form action="/cart/update/quantity" method="post">
										<input type="hidden" name="productStockId" value="${product.productStock.id}" />
										<span class="qty_sel num">
											<a href="javascript:void(0)" class="left" onclick="quantity_control(this, 'minus');">이전 버튼</a>
											<!-- css 적용하기 위해 number type이 아닌 text 타입을 사용함 -->
											<input id="quantity${status.count}" name="quantity" type="text" class="mr0" value="${product.cart.quantity}" size="1" maxlength="3" min="1" onchange="quantity_check(this)"/>
											<a href="javascript:void(0)" class="right" onclick="quantity_control(this, 'plus');">다음 버튼</a>
										</span>
										<button id="QuantityProduct" class="btn wt_ss qty_w mr0">변경</button>
									</form>
								</td>
								<%-- 가격 --%>
								<td class="al_middle">
									<div class="price_wrap">
										<span>
											₩
											<fmt:formatNumber type="number" maxFractionDigits="3" value="${product.productColor.price * product.cart.quantity}" />
										</span>
										<input type="hidden" name="appliedPrice" value="${product.productColor.price * product.cart.quantity}">
									</div>
								</td>
								<%-- 삭제 --%>
								<td class="al_middle">
									<!-- <div class="btn_wrap">
										<button class="btn wt_ss">삭제</button>
									</div> -->
									<div class="btn_wrap">
										<form class="cartItem" action="/cart/delete" method="post">
											<input type="hidden" name="hidden_pcolorId" value="${product.productColor.id}" />
											<input type="hidden" name="hidden_brand_name" value="${product.brand.name}" />
											<input type="hidden" name="hidden_product_name" value="${product.productCommon.name}" />
											<input type="hidden" name="hidden_color_code" value="${product.productColor.colorCode}" />
											<input type="hidden" name="hidden_size_code" value="${product.productStock.sizeCode}" />
											<input type="hidden" name="hidden_img1" value="${product.productColor.img1}" />
											<input type="hidden" name="hidden_quantity" value="${product.cart.quantity}" />
											<input type="hidden" name="hidden_applied_price" class="hidden_applied_price" value="${product.cart.quantity * product.productColor.price}" />
											<button class="btn wt_ss">삭제</button>
										</form>
									</div>
								</td>
							</tr>
							<%--// 첫번째 행의 끝 --%>

							<%-- 두번째 행의 시작 --%>
							<%-- 옵션변경 클릭 시 보여지는 상품 정보--%>
							<tr>
								<td colspan="6" class="basket_wrap">
									<div class="basket_info" style="display: hidden;">
										<input type="hidden" name="statusCount" value="${status.count}" />
										<span class="btn_arr">위치아이콘</span>
										<%-- 변경 버튼 누를 때의 폼 시작 --%>
										<form action="/cart/update/options" method="post">
											<div class="info">
												<div class="pt_list" id="pt_list_4">
													<!-- 클릭 시 상품 상세 화면으로 -->
													<a href="/cart/set/${product.productColor.id}">
														<!-- 상품 사진 -->
														<img src="${product.productColor.img3}" style="image-rendering: -webkit-optimize-contrast;" alt="">
													</a>
													<div class="tlt_wrap">
														<!-- 클릭 시 상품 상세 화면으로 -->
														<a href="/cart/set/${product.productColor.id}">
															<div class="tlt" style="text-align: left;">${product.brand.name}</div>
															<div class="sb_tlt" style="text-align: left;">${product.productCommon.name}</div>
														</a>
														<%-- 변경 버튼 클릭 시 디비에 업데이트 되는 정보 --%>
														<input type="hidden" name="productStockId" value="${product.productStock.id}" />
														<input type="hidden" name="productCommonId" value="${product.productCommon.id}" />
														<input type="hidden" name="colorCode" class="color_option" value="${product.productColor.colorCode}" />
														<input type="hidden" name="sizeCode" class="size_option" value="${product.productStock.sizeCode}" />
														<input type="hidden" name="quantity" value="${product.cart.quantity}" />

														<%--// 변경 버튼 클릭 시 디비에 업데이트 되는 정보 --%>
														<dl class="cs_wrap">
															<dt style="font-size: 18px;">COLOR</dt>
															<dd class="color_wrap">
																<div id="select_color${status.count}" class="cl_select">
																	<%-- color.jsp fragment가 들어가는 부분 --%>
																</div>
															</dd>
															<dt style="font-size: 18px;">SIZE</dt>
															<dd style="width: 90%; height: 100%;">
																<div id="select_size${status.count}" class="sz_select">
																	<%-- size.jsp fragment가 들어가는 부분--%>
																</div>
															</dd>
														</dl>
													</div>
												</div>
												<div class="btns">
													<button class="btn wt_ss mr0" id="UpdateCart_4">변경</button>
													<a href="javascript:void(0)" class="btn wt_ss mt10 mr0" id="optCancelLayer_4" onclick="hidden_opt(this)">취소</a>
													<a href="javascript:void(0)" class="btn_close" id="optCloseLayer_0" onclick="hidden_opt(this)">닫기</a>
												</div>
											</div>
										</form>
										<%--// 변경 버튼 누를 때의 폼 끝 --%>
									</div>
								</td>
							</tr>
							<%-- //옵션변경 클릭 시 보여지는 상품 정보--%>
							<%-- // 두번째 행의 끝 --%>
						</c:forEach>

					</tbody>
				</table>
			</div>
			<!--// shoppingback table-->
			<!--Total wrap-->
			<div class="total_wrap">
				<!-- total -->
				<div class="total_price_wrap">
					<dl>
						<dt>상품 합계</dt>
						<dd>
							<span id="cartDataSubtotal">₩0</span>
						</dd>
						<dt class="delch_wrap">배송비</dt>
						<dd>
							<span id="cartDataDeliveryCost">₩0</span>
						</dd>
					</dl>
					<dl class="total">
						<dt style="display: inline;">합계</dt>
						<dd>
							<span id="cartDataTotalPrice">₩0</span>
						</dd>
					</dl>
				</div>
				<div class="total_count_cart">
					<p>
						총
						<span id="selectProductCount">0</span>
						개 상품
					</p>
				</div>
				<!-- //total -->
			</div>
			<!--//Total wrap-->
		</div>

		<!--button wrap-->
		<div class="btnwrap order" id="checkout_btn_wrap">

			<input value="선택상품삭제" class="btn wt delBtn" type="button" />

			<input type="hidden" id="finalPrice" name="data" />

			<form id="orderForm" method="post" action="/order/orderform">
				<input type="hidden" id="orderContent" name="orderContent" />
				<input type="button" onclick="makeOrder()" value="선택상품 주문하기" class="btn gray mr0 orderBtn">
			</form>
		</div>
	</div>
</div>

<script>
// 뒤로가기 버튼 누르면 이전에 체크되었던 항목들이 해제된다.
$(document).ready(function () {
	$("input:checked").each(function(){
		$(this).prop("checked", false);
		console.log("실행");
	});
	// 재고가 0개 이하인 상품 체크박스 disabled
	$(".entryProductInfo").each(function() {
		var stockElem = $(this).find("input[name='stock']");
		var stock = $(stockElem).val();
		if (stock < 1) {
			$(this).find(".entryProductCheck").prop("disabled", true);
		}
	});
});


function checkAll(e) {
	if ($(e).is(':checked')) {
		$(".entryProductCheck").prop("checked", true);
		// 체크할 수 없게 막힌 체크박스는 선택할 수 없게 한다.
		$(".entryProductCheck:disabled").prop("checked", false);
		
	} else {
		$(".entryProductCheck").prop("checked", false);
	}
}


function selectProductCount(cartSize) {
	// cartSize: 장바구니에 담긴 물품의 개수
	
	// 체크된 체크박스의 개수
	var currChecked = $(".entryProductCheck:checked").length;
	// 체크할 수 있는 체크박스의 개수
	var canChecked = $(".entryProductCheck:enabled").length;
	
	if (currChecked !== canChecked) {
		$("#entryCheckAll").prop("checked", false);
	} else { // 현재 체크할 수 있는 체크박스를 모두 체크한 경우
		$("#entryCheckAll").prop("checked", true); // 전체 체크박스를 체크 상태로 보여줌
	}
	console.log("count = ", currChecked);
	$("#selectProductCount").text(currChecked);
}

function selectProductPrice() {
	console.log("selectProductPrice 실행");
	var subTotalPrice = 0;
	var totalPrice = 0;
	$(".entryProductCheck:checked").each(function() {
		var row = $(this).closest("tr");

		var price = Number($(row).find(":input[name='appliedPrice']").val());
		console.log("appliedPrice=", price);
		subTotalPrice += price;
		totalPrice += price;
		}
	);
	
	$("#cartDataSubtotal").text('₩'+subTotalPrice.toLocaleString());
	$("#cartDataTotalPrice").text('₩'+totalPrice.toLocaleString());
	$("#finalPrice").val(totalPrice);
}

function quantity_control(e, operator) {
	let obj = $(e).siblings("input")[0];
	let value = Number($(obj).val());
	if (operator === 'minus') {
		if (value > 1) {
			console.log("실행");
			$(obj).attr("value", value - 1);
		}
	} else if (operator === 'plus') {
		$(obj).attr("value", value + 1);
	}
}

/*
 * author: 현지
 "수량" 음수와 소수점 처리
 */
function quantity_check(e) {
	console.log("실행");
	var _input = $(e).val();
	// 0이거나 문자일 경우
	if (isNaN(_input) === true || _input == 0) {
		$(e).val(1);
	} else {
		// 소숫점이거나 음수일 경우
		var validInput = Math.floor(Math.abs(_input));
		$(e).val(validInput);
	}
}

function set_color(e) {
	var value = $(e).text();
	
	$(e).closest("form").find(":input[name='colorCode']").val(value);
	var pcommonId = $(e).closest(".tlt_wrap").find(":input[name='productCommonId']").val();
	var statusCount = $(e).closest(".basket_info").find(":input[name='statusCount']").val();
	var pcolorId = pcommonId + "_" + value;
	console.log("pcolorId", pcolorId);	
		
	// 컬러에 따라 사이즈 리스트가 달라지기 때문에, 컬러 선택 시 컬러 아이디를 통해 사이즈를 비동기로 가져오게 처리 
	var url = "/cart/selectSizesByPcolorId";
	var id_size = "#select_size" + statusCount;
	console.log("id_size =", id_size);
	$.ajax({
		url:url,
		method:"post",
		data:{"pcolorId":pcolorId},
		success:function(result) {
			$(id_size).html(result);
			console.log("success");
		}
	});
	
	//color 선택시 css 추가(동일 버튼 두번 클릭시 처리)
	/* let currValue = $(e).parents(".opt_color").css("background-color")+"";
	if(currValue === "rgb(140, 178, 151)"){
		$(e).parents(".opt_color").css("background-color", "");
		return;} */
	//color 선택시 css 추가 
	var test = ".opt_color" + value;
	$(e).addClass("on");
	$(e).parents(test).siblings().find("a").removeClass("on");
}

function set_size(e) {
	var value = $(e).text();
	console.log("value : ", value);
	$(e).closest("form").find(":input[name='sizeCode']").val(value);

	//size 클릭시 처리(일반)
	$(e).siblings().css("background-color", "#ffffff");
	$(e).siblings().css("color", "#000000");
	$(e).css("background-color", "#8CB297");
	$(e).css("color", "#ffffff");
}

/*
 * author: 현지
 "옵션 변경" 버튼을 누를 시 hidden 행을 display 하는 함수
 */
function display_opt(e, colorCode, sizeCode, pcommonId, pcolorId, count) {
	console.log("pcommonId", pcommonId)
	// 비동기로 데이터를 요청할 url
	var url = "/cart/selectColors";
	// 컬러마다 특정된 id값을 활용
	var id_color = "#select_color" + count;
	$.ajax({
		url : url,
		method : "post",
		// pcommonId를 이용해 공통 상품이 가지고있는 색상의 리스트를 보여줌
		data : {"pcommonId":pcommonId},
		success : function(result) {
			console.log("result", result);
			// 색상 리스트를 보여주는 jsp 파일을 id값을 가진 태그 사이에 삽입
			$(id_color).html(result);

			// 회원이 장바구니에 담은 상품의 기존 선택되어있는 컬러칩을 표시해줌
			console.log("colorCode",colorCode);
			var test = ".opt_color" + colorCode;
			
			$(test).find("a").addClass("on");
		}
	});

	/* "옵션 변경" 버튼을 눌렀을 때 보여지는 사이즈의 리스트는 현재 저장된 pcolorId의 사이즈 리스트가 나와야한다. */
	var url = "/cart/selectSizesByPcolorId";
	var id_size = "#select_size" + count;
	$.ajax({
		url:url,
		method:"post",
		data:{"pcolorId":pcolorId},
		success:function(result) {
			$(id_size).html(result);
			
			//size 기본 선택 추가
			let currSizeCs = "."+sizeCode;
			console.log("sizeCode", currSizeCs);
			$(id_size).find(currSizeCs).css("background-color", "#8CB297");
			$(id_size).find(currSizeCs).css("color","#ffffff");
		}
	});
	let next_tr = $(e).closest("tr").next();
	let closest_basket_info = $(next_tr).find(".basket_info");
	$(closest_basket_info).attr("style", "display: block;");
	
	
}

function hidden_opt(e) {
	let closest_basket_info = $(e).closest(".basket_info");
	$(closest_basket_info).attr("style", "display: hidden;");
}



function makeOrder() {
	// "선택상품 주문하기" 버튼 클릭 시 선택한 상품의 데이터가 넘어가고 페이지가 전환된다.
	var checkedElems = $(".entryProductCheck:checked");
	if (checkedElems.length < 1) {
		alert("상품을 선택해주세요.");
		return "";
	} else {

		var products = [];
		var checkedInputs="";
		checkedElems.each(function () {
			var row = $($(this).closest("tr"));
			var pcolorId = row.find(":input[name='hidden_pcolorId']").val();
			var brandName = row.find(":input[name='hidden_brand_name']").val();
			var productName = row.find(":input[name='hidden_product_name']").val();
			var colorCode = row.find(":input[name='hidden_color_code']").val();
			var sizeCode = row.find(":input[name='hidden_size_code']").val();
			var img = row.find(":input[name='hidden_img1']").val();
			var appliedPrice = Number(row.find(":input[name='hidden_applied_price']").val());
			var quantity = Number(row.find(":input[name='hidden_quantity']").val());
			
			var json = {
				pcolorId,
				brandName,
				productName,
				colorCode,
				sizeCode,
				img,
				appliedPrice,
				quantity
			};
			products.push(json);
		});
		
		
		var totalPrice = Number($("#finalPrice").val());
		
		var orderContent = {
				products,
				totalPrice
		}
		
		var strOrderContent = JSON.stringify(orderContent);
		$("#orderContent").val(strOrderContent);
		$("#orderForm")[0].submit();
	}
}
</script>

<%@ include file="/WEB-INF/views/common/footer.jsp"%>