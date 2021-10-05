<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/views/common/headerAboveLinks.jsp"%>
<%@ include file="/WEB-INF/views/special/cartListLinks.jsp"%>
<%@ include file="/WEB-INF/views/common/headerBelowLinks.jsp"%>

<script>
function checkAll() {
	if ($("#entryCheckAll").is(':checked')) {
		$("input[type=checkbox]").prop("checked", true);
	} else {
		$("input[type=checkbox]").prop("checked", false);
	}
}

function quantity_control(e, operator) {
	let obj = $(e).siblings("input")[0];
	let value = Number($(obj).val());
	console.log("obj=", obj);
	console.log("value=", value);
	if (operator === 'minus') {
		if (value > 1) {
			console.log("실행");
			$(obj).attr("value", value - 1);
		}
	} else if (operator === 'plus') {
		console.log("실행");
		$(obj).attr("value", value + 1);
	}
}

function set_color(e) {
	var value = $(e).text();
	console.log("value =", value);
	$(e).closest("form").find(":input[name='color']").val(value);
}

function set_size(e) {
	var value = $(e).text();
	console.log("value : ", value);
	$(e).closest("form").find(":input[name='size']").val(value);
}

function display_opt(e, pcommonId, count) {
	console.log("pcommonId", pcommonId)
	var url = "/cart/selectColors";
	var id_color = "#select_color" + count;
	$.ajax({
		url : url,
		method : "post",
		data : {"pcommonId":pcommonId},
		success : function(result) {
			console.log("result", result);
			$(id_color).html(result);
		}
	})

	var url = "/cart/selectSizes";
	var id_size = "#select_size" + count;
	$.ajax({
		url:url,
		method:"post",
		data:{"pcommonId":pcommonId},
		success:function(result) {
			$(id_size).html(result);
		}
	})
	let next_tr = $(e).closest("tr").next();
	let closest_basket_info = $(next_tr).find(".basket_info");
	$(closest_basket_info).attr("style", "display: block;");
}

function hidden_opt(e) {
	let closest_basket_info = $(e).closest(".basket_info");
	$(closest_basket_info).attr("style", "display: hidden;");
}



</script>

<div class="orderwrap1807">
	<div id="bodyWrap">
		<h3 class="cnts_title cnts_tlt1807">
			<span>쇼핑백</span>
		</h3>

		<div class="cart-form">
			<!--shoppingback table-->
			<div class="tblwrap">
				<table class="tbl_ltype">
					<caption>쇼핑백</caption>
					<colgroup>
						<col style="width: 10px;">
						<col>
						<col style="width: 150px">
						<col style="width: 105px">
						<col style="width: 140px">
						<col style="width: 110px">
					</colgroup>
					<thead>
						<tr>
							<th scope="col">
								<input type="checkbox" id="entryCheckAll" name="entryCheckAll" onclick="checkAll();" onchange="selectProductCount();selectProductPrice();" onselect="sumPrice()" />
							</th>
							<th scope="col">상품정보</th>
							<th scope="col">수량</th>
							<th scope="col">판매가</th>
							<th scope="col">적립율</th>
							<th scope="col">선택</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="product" items="${cartItems}" varStatus="status">
							<%-- 첫번째 행의 시작 --%>
							<tr id="entryProductInfo">
								<%-- 체크박스 --%>
								<td class="frt">
									<!-- value는 리스트의 개수만큼 내림차순으로 -->
									<input type="checkbox" name="chkbox" data-pk="10277981880364" value="${status.count}" onchange="selectProductCount();selectProductPrice()" />
								</td>
								<%-- 상품정보 --%>
								<td class="pt_list_wrap">
									<div class="pt_list_all">
										<a href="/cart/set/${product.productColor.id}">
											<img src="${product.productColor.img1}" alt="">
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
											<div class="option_wrap">
												<input type="hidden" value="${product.productCommon.id}" />
												<a href="javascript:void(0);" class="btn_option" onclick="display_opt(this, '${product.productCommon.id}', ${status.count})">옵션변경</a>
											</div>
										</div>
									</div>
								</td>
								<%-- 수량 --%>
								<td class="al_middle">
									<form id="updateCartForm${status.count}" class="updateCartForm" action="/cart/update/quantity" method="post">
										<input type="hidden" name="pstockId" value="${product.productStock.id}" />
										<span class="qty_sel num">
											<a href="javascript:void(0)" class="left" onclick="quantity_control(this, 'minus');">이전 버튼</a>
											<input id="quantity${status.count}" name="quantity" type="text" class="mr0" value="${product.cart.quantity}" size="1" maxlength="3" />
											<a href="javascript:void(0)" class="right" onclick="quantity_control(this, 'plus');">다음 버튼</a>
										</span>
										<button id="QuantityProduct" class="btn wt_ss qty_w mr0">변경</button>
									</form>
								</td>
								<%-- 가격 --%>
								<td class="al_middle">
									<div class="price_wrap">
										<span>${product.productColor.price}</span>
										<input type="hidden" name="checkZeroPrice" value="con제품 가격">
									</div>
								</td>
								<%-- 적립율 --%>
								<td class="al_middle">
									<span class="earn">5% (한섬마일리지)</span>
									<br>
									<span class="earn">0.1% (H.Point)</span>
								</td>
								<%-- 삭제 --%>
								<td class="al_middle">
									<div class="btn_wrap">
										<a href="#none" id="RemoveProduct_4" class="btn wt_ss" onclick="GA_Event('쇼핑백','삭제','캐시미어 칼라리스 재킷');">삭제</a>
									</div>
									<form method="post" action="/order/orderform" name="hidden_field" style="display: none">
										<input type="hidden" name="hidden_pcolorId" value="${product.productColor.id}" />
										<input type="hidden" name="hidden_brand_name" value="${product.brand.name}" />
										<input type="hidden" name="hidden_product_name" value="${product.productCommon.name}" />
										<input type="hidden" name="hidden_color_code" value="${product.productColor.colorCode}" />
										<input type="hidden" name="hidden_size_code" value="${product.productStock.sizeCode}" />
										<input type="hidden" name="hidden_img1" value="${product.productColor.img1}" />
										<input type="hidden" name="hidden_quantity" value="${product.cart.quantity}" />
										<input type="hidden" name="hidden_applied_price" class="hidden_applied_price" value="${product.cart.quantity * product.productColor.price}" />
									</form>
								</td>
							</tr>
							<%--// 첫번째 행의 끝 --%>

							<%-- 두번째 행의 시작 --%>
							<%-- 옵션변경 클릭 시 보여지는 상품 정보--%>
							<tr>
								<td colspan="6" class="basket_wrap">
									<div class="basket_info" style="display: hidden;">
										<span class="btn_arr">위치아이콘</span>
										<form action="/cart/update/options" method="post">
											<div class="info">
												<div class="pt_list" id="pt_list_4">
													<!-- 클릭 시 상품 상세 화면으로 -->
													<a href="/cart/set/${product.productColor.id}">
														<!-- 상품 사진 -->
														<img src="${product.productColor.img3}" alt="">
													</a>
													<div class="tlt_wrap">
														<!-- 클릭 시 상품 상세 화면으로 -->
														<a href="/cart/set/${product.productColor.id}">
															<span class="tlt">${product.brand.name}</span>
															<span class="sb_tlt">${product.productCommon.name}</span>
														</a>
														<%-- 변경 버튼 클릭 시 디비에 업데이트 되는 정보 --%>
														<input type="hidden" name="pstockId" value="${product.productStock.id}" />
														<input type="hidden" name="pcommonId" value="${product.productCommon.id}" />
														<input type="hidden" name="color" class="color_option" value="${product.productColor.colorCode}" />
														<input type="hidden" name="size" class="size_option" value="${product.productStock.sizeCode}" />
														<%--// 변경 버튼 클릭 시 디비에 업데이트 되는 정보 --%>
														<dl class="cs_wrap">
															<dt>COLOR</dt>
															<dd>
																<div id="select_color${status.count}" class="cl_select">
																	<%-- color.jsp fragment가 들어가는 부분 --%>
																</div>
															</dd>
															<dt>SIZE</dt>
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
						<dt class="delch_wrap">
							<!--                     <p class="tlt_ship">배송비</p> -->
							배송비
						</dt>
						<dd>
							<span id="cartDataDeliveryCost">₩0</span>
						</dd>
					</dl>
					<dl class="total ">
						<dt>합계</dt>
						<dd>
							<span id="cartDataTotalPrice">₩0</span>
						</dd>
					</dl>
				</div>
				<div class="total_count1807">
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
			<a href="#;" onclick="selectRemove();">
				<input value="선택상품삭제" class="btn wt" type="button" />
			</a>
			<!-- 			<a href="/order/orderform" onclick="checkoutPage();"> -->
			<a href="#">
				<input type="hidden" id="finalProducts" name="data" />
				<input type="hidden" id="finalPrice" name="data" />
				<button id="submitFrm" value="선택상품 주문하기" class="btn gray mr0">선택상품 주문하기</button>
			</a>
		</div>
		<script>
		$("#submitFrm").on("click", function() {
			var form = $("<form action='/order/orderform' method='post' style='display:none'>" +
				getCheckedProducts() + "</form>"
			);
			$("body").append(form);
			form.method = "post";
			form.submit();
		});
		function getCheckedProducts() {
			var checkedElems = $("input[name='chkbox']:checked");
			if (checkedElems.length < 1) {
				alert("상품을 선택해주세요.");
				return;
			} else {
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
					checkedInputs += "<input type='text' name='pcolorId' value='"+pcolorId+"'>";
					checkedInputs += "<input type='text' name='brandName' value='"+brandName+"'>";
					checkedInputs += "<input type='text' name='productName' value='"+productName+"'>";
					checkedInputs += "<input type='text' name='colorCode' value='"+colorCode+"'>";
					checkedInputs += "<input type='text' name='sizeCode' value='"+sizeCode+"'>";
					checkedInputs += "<input type='text' name='img' value='"+img+"'>";
					checkedInputs += "<input type='text' name='appliedPrice' value='"+appliedPrice+"'>";
					checkedInputs += "<input type='text' name='quantity' value="+quantity+">";
					
				});
				
				var totalPrice = Number($("#finalPrice").val());
				checkedInputs += "<input type='text' name='totalPrice' value="+totalPrice+">";
			}
			return checkedInputs;
		}

		function selectProductCount() {
			var count = $("input[name='chkbox']:checked").length;
			console.log("count = ", count);
			$("#selectProductCount").text(count);
		}

		function selectProductPrice() {
			var subTotalPrice = 0;
			var totalPrice = 0;
		  $("input[name='chkbox']:checked").each(
		    function() {
		      var row = $(this).closest("tr");
		      var price = Number($(row).find(".hidden_applied_price").val());
		      console.log("hidden_applied_price=", price);
		      subTotalPrice += price;
		      totalPrice += price;
		    }
		  )
		  $("#cartDataSubtotal").text('₩'+subTotalPrice.toLocaleString());
		  $("#cartDataTotalPrice").text('₩'+totalPrice.toLocaleString());
		  $("#finalPrice").val(totalPrice);
		}
		</script>
	</div>
</div>

<%@ include file="/WEB-INF/views/common/footer.jsp"%>