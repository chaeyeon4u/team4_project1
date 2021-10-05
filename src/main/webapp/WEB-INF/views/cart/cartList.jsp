<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/views/common/headerAboveLinks.jsp"%>
<%@ include file="/WEB-INF/views/special/cartListLinks.jsp"%>
<%@ include file="/WEB-INF/views/common/headerBelowLinks.jsp"%>

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
								<input type="checkbox" id="entryCheckAll" value="cartlist" onclick="checkAll()">
							</th>
							<th scope="col">상품정보</th>
							<th scope="col">수량</th>
							<th scope="col">판매가</th>
							<th scope="col">적립율</th>
							<th scope="col">선택</th>
						</tr>
						<script>
                    function checkAll() {
                      if ($("#entryCheckAll").is(':checked')) {
                        $("input[type=checkbox]").prop("checked", true);
                      } else {
                        $("input[type=checkbox]").prop("checked", false);
                      }
                    }
                  </script>

						<script>
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

/*                     function display_opt(e, pcommonId, count) {
	                    console.log("pcommonId", pcommonId)
	                   	var url = "/cart/selectOptions";
						var id_color = "#select_color" + count;
						$.ajax({
							url : url,
							method : "post",
							data : {"pcommonId":pcommonId},
							success : function(result) {
								console.log("result", result);
								$(result).()
								$(id_color).html($("#colorOptions").html());
								$(id_size).html($("#sizeOptions").html());
							}
						})
						 */
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
                      let closest_basket_info = $(next_tr).find(
                        ".basket_info");
                      $(closest_basket_info).attr("style", "display: block;");
                    }

                    function hidden_opt(e) {
                      let closest_basket_info = $(e).closest(".basket_info");
                      $(closest_basket_info)
                        .attr("style", "display: hidden;");
                    }
                    
//                     function set_color(e) {
//                     	$(e).toggleClass("on");
// 					}
                  </script>
					</thead>

					<tbody>
						<!-- test -->
						<c:forEach var="product" items="${cartItems}" varStatus="status">
							<tr id="entryProductInfo">
								<%-- 체크박스 --%>
								<td class="frt">
									<!-- value는 리스트의 개수만큼 내림차순으로 -->
									<input type="checkbox" name="cartlist" data-pk="10277981880364" value="con 4">
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
										<!-- qty_sel -->
										<span class="qty_sel num">
											<a href="javascript:void(0)" class="left" onclick="quantity_control(this, 'minus');">이전 버튼</a>
											<input id="quantity${status.count}" name="quantity" type="text" class="mr0" value="${product.cart.quantity}" size="1" maxlength="3" />
											<a href="javascript:void(0)" class="right" onclick="quantity_control(this, 'plus');">다음 버튼</a>
										</span>
										<!-- //qty_sel -->
										<button id="QuantityProduct" class="btn wt_ss qty_w mr0">변경</button>
									</form>
								</td>
								<%-- 가격 --%>
								<td class="al_middle">
									<!-- Price -->
									<div class="price_wrap">
										<span>${product.productColor.price}</span>
										<input type="hidden" name="checkZeroPrice" value="con제품 가격">
									</div>
									<!-- //Price -->
								</td>
								<%-- 적립율 --%>
								<td class="al_middle">
									<span class="earn">5% (한섬마일리지)</span>
									<br>
									<span class="earn">0.1% (H.Point)</span>
								</td>
								<%-- 삭제 --%>
								<td class="al_middle">
									<!-- Button size -->
									<div class="btn_wrap">
										<a href="#none" id="RemoveProduct_4" class="btn wt_ss" onclick="GA_Event('쇼핑백','삭제','캐시미어 칼라리스 재킷');">삭제</a>
									</div>
									<!-- //Button size -->
								</td>
							</tr>

							<%-- 옵션변경 --%>
							<tr>
								<td colspan="6" class="basket_wrap">
									<!-- Info -->
									<div class="basket_info" style="display: hidden;">
										<span class="btn_arr">위치아이콘</span>
										<form action="/cart/update/options" method="post">
											<div class="info">
												<!-- Products -->
												<div class="pt_list" id="pt_list_4">
													<a href="/ko/HANDSOME/WOMEN/OUTER/JACKET/%EC%BA%90%EC%8B%9C%EB%AF%B8%EC%96%B4-%EC%B9%BC%EB%9D%BC%EB%A6%AC%EC%8A%A4-%EC%9E%AC%ED%82%B7/p/CM2B9WOT400W_SW">
														<img src="${product.productColor.img1}" alt="">
													</a>
													<div class="tlt_wrap">
														<a href="/ko/HANDSOME/WOMEN/OUTER/JACKET/%EC%BA%90%EC%8B%9C%EB%AF%B8%EC%96%B4-%EC%B9%BC%EB%9D%BC%EB%A6%AC%EC%8A%A4-%EC%9E%AC%ED%82%B7/p/CM2B9WOT400W_SW" class="basket_tlt">
															<span class="tlt">${product.brand.name}</span>
															<span class="sb_tlt">${product.productCommon.name}</span>
														</a>
														<input type="hidden" name="pstockId" value="${product.productStock.id}" />
														<input type="hidden" name="pcommonId" value="${product.productCommon.id}" />
														<input type="hidden" name="color" class="color_option" value="${product.productColor.colorCode}" />
														<input type="hidden" name="size" class="size_option" value="${product.productStock.sizeCode}" />
														<!-- color_size -->
														<dl class="cs_wrap">
															<dt>COLOR</dt>
															<dd>
																<div id="select_color${status.count}" class="cl_select">
																	<%--다른 파일 불러옴 --%>
																	<%-- 																<c:forEach var="color" items="${colors}"> --%>
																	<%-- 																	<a href="javascript:void(0);" onclick="set_color(this);" class="${color.colorCode}" --%>
																	<%-- 																		style="background: #362626 url('${color.colorImg}')">${color.colorCode}</a> --%>
																	<%-- 																</c:forEach> --%>
																	<%--//다른 파일 불러옴 --%>
																</div>
															</dd>
															<script>
														function set_color(e) {
															var value = $(e).text();
															console.log("value =", value);
															
															$(e).closest("form").find(":input[name='color']").val(value);
// 															$($(e).closest(".color_option")).attr("value", value);
// 															console.log(color_option);
														}
														</script>
															<dt>SIZE</dt>
															<dd style="width: 90%; height: 100%;">
																<div id="select_size${status.count}" class="sz_select">
																	<%-- 															<c:forEach var="size" items="${sizes}"> --%>
																	<!-- 																<a href="javascript:void(0);" onclick="set_size(this);"  -->
																	<%-- 																	class="on" style="line-height: 15px;">${size.sizeCode}</a> --%>
																	<%-- 															</c:forEach> --%>
																</div>
															</dd>
															<script>
														function set_size(e) {
															var value = $(e).text();
															console.log("value : ", value);
															$(e).closest("form").find(":input[name='size']").val(value);
														
														}
														</script>
														</dl>
														<!-- //color_size -->
													</div>
													<script>
													
												</script>
												</div>
												<!-- //Products -->
												<!-- btns -->
												<div class="btns">
													<button class="btn wt_ss mr0" id="UpdateCart_4">변경</button>
													<a href="javascript:void(0)" class="btn wt_ss mt10 mr0" id="optCancelLayer_4" onclick="hidden_opt(this)">취소</a>
													<a href="javascript:void(0)" class="btn_close" id="optCloseLayer_0" onclick="hidden_opt(this)">닫기</a>
												</div>
												<!-- //btns -->
											</div>
										</form>
									</div>
									<!-- //Info -->
								</td>
							</tr>
							<!-- //test -->
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
						<span id="selectProductCount">5</span>
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
				<input value="선택상품삭제" class="btn wt" type="button">
			</a>
			<a href="orderform" onclick="checkoutPage();">
				<input value="선택상품 주문하기" class="btn gray mr0" type="button">
			</a>

		</div>
	</div>
</div>

<%@ include file="/WEB-INF/views/common/footer.jsp"%>