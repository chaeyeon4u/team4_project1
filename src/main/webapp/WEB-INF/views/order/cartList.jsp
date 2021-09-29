<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="/WEB-INF/views/common/headerAboveLinks.jsp"%>
<%@ include file="/WEB-INF/views/special/cartListLinks.jsp"%>
<%@ include file="/WEB-INF/views/common/headerBelowLinks.jsp"%>

<div class="orderwrap1807">

	<div id="bodyWrap">
		<h3 class="cnts_title cnts_tlt1807">
			<span>쇼핑백</span>
		</h3>

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

                    function display_opt(e) {
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
                  </script>
				</thead>

				<tbody>
					<!-- test -->
					<c:forEach var="product" items="${products}">
						<tr id="entryProductInfo">
							<td class="frt">
								<!-- value는 리스트의 개수만큼 내림차순으로 -->
								<input type="checkbox" name="cartlist" data-pk="10277981880364" value="con 4">
							</td>
							<td class="pt_list_wrap">
								<div class="pt_list_all">
									<a href="con 제품상세정보 uri">
										<img src="${product.imgSrc}" alt="">
									</a>
									<div class="tlt_wrap">
										<a href="con 제품상세정보 uri" class="basket_tlt">
											<span class="tlt">${product.brand}</span>
											<span class="sb_tlt">${product.name}</span>
										</a>

										<p class="color_op">

											color : ${product.color}
											<span>/</span>
											size : ${product.size}
										</p>
										<div class="option_wrap">
											<!-- <a href="#none" class="btn_option" id="optOpenLayer^4^CM2B9WOT400W_SW" onclick="GA_Event('쇼핑백','옵션변경', '캐시미어 칼라리스 재킷')">옵션변경</a> -->
											<a href="javascript:void(0);" class="btn_option" onclick="display_opt(this)">
												옵션변경
												</button>
										</div>
									</div>
								</div>
							</td>
							<td class="al_middle">
								<form id="updateCartForm4" action="cart/update" method="post">
									<!-- qty_sel -->
									<span class="qty_sel num">
										<!-- 									<button type="button" class="btn btn-light left" onclick="quantity_control(this, 'minus');">-</button> -->
										<a href="#none" class="left" onclick="quantity_control(this, 'minus');">이전 버튼</a>
										<input id="quantity4" name="quantity" type="text" class="mr0" value="1" size="1" maxlength="3" />
										<a href="#none" class="right" onclick="quantity_control(this, 'plus');">
											다음 버튼
											</button>
									</span>
									<!-- //qty_sel -->
									<button id="QuantityProduct_4" class="btn wt_ss qty_w mr0">변경</button>
								</form>
							</td>

							<td class="al_middle">
								<!-- Price -->
								<div class="price_wrap">
									<span>${product.price}</span>
									<input type="hidden" name="checkZeroPrice" value="con제품 가격">
								</div>
								<!-- //Price -->
							</td>

							<td class="al_middle">
								<span class="earn">5% (한섬마일리지)</span>
								<br>
								<span class="earn">0.1% (H.Point)</span>
							</td>

							<td class="al_middle">
								<!-- Button size -->
								<div class="btn_wrap">
									<a href="#none" id="RemoveProduct_4" class="btn wt_ss" onclick="GA_Event('쇼핑백','삭제','캐시미어 칼라리스 재킷');">삭제</a>
								</div>
								<!-- //Button size -->
							</td>
						</tr>
						<tr>
							<td colspan="6" class="basket_wrap">
								<!-- Info -->
								<div class="basket_info" style="display: hidden;">
									<span class="btn_arr">위치아이콘</span>
									<div class="info">
										<!-- Products -->
										<div class="pt_list" id="pt_list_4">
											<a href="/ko/HANDSOME/WOMEN/OUTER/JACKET/%EC%BA%90%EC%8B%9C%EB%AF%B8%EC%96%B4-%EC%B9%BC%EB%9D%BC%EB%A6%AC%EC%8A%A4-%EC%9E%AC%ED%82%B7/p/CM2B9WOT400W_SW">
												<img src="${product.imgSrc}" alt="">
											</a>
											<div class="tlt_wrap">
												<a href="/ko/HANDSOME/WOMEN/OUTER/JACKET/%EC%BA%90%EC%8B%9C%EB%AF%B8%EC%96%B4-%EC%B9%BC%EB%9D%BC%EB%A6%AC%EC%8A%A4-%EC%9E%AC%ED%82%B7/p/CM2B9WOT400W_SW" class="basket_tlt">
													<span class="tlt">${product.brand}</span>
													<span class="sb_tlt">${product.name}</span>
												</a>
												<!-- color_size -->
												<dl class="cs_wrap">
													<dt>COLOR</dt>
													<dd>
														<div class="cl_select">
															<a href="javascript:void(0);" onclick="setOptions(this, '4', 'CM2B9WOT400W_SW', 'style');" class="beige on"
																style="background: #362626 url('http://newmedia.thehandsome.com/CM/2B/FW/CM2B9WOT400W_SW_C01.jpg/dims/resize/18x18')">BROWN</a>
															<span class="cs_sel1807">${product.color}</span>
														</div>
													</dd>
													<dt>SIZE</dt>
													<dd style="width: 90%; height: 100%;">
														<div class="sz_select">
															<a href="javascript:void(0);" onclick="setOptions(this, '4', 'CM2B9WOT400W_SW_82', 'size');" class="on" style="line-height: 15px;">82</a>
															<a href="javascript:void(0);" onclick="setOptions(this, '4', 'CM2B9WOT400W_SW_88', 'size');">88</a>
														</div>
													</dd>
												</dl>
												<!-- //color_size -->
											</div>

										</div>
										<!-- //Products -->
										<!-- btns -->
										<div class="btns">
											<a href="#none" class="btn wt_ss mr0" id="UpdateCart_4">변경</a>
											<a href="#none" class="btn wt_ss mt10 mr0" id="optCancelLayer_4" onclick="hidden_opt(this)">취소</a>
											<a href="#none" class="btn_close" id="optCloseLayer_0" onclick="hidden_opt(this)">닫기</a>
										</div>
										<!-- //btns -->
									</div>
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