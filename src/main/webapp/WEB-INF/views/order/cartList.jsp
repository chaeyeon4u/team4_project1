<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="/WEB-INF/views/common/headerAboveLinks.jsp"%>
<%@ include file="/WEB-INF/views/special/cartListLinks.jsp"%>
<%@ include file="/WEB-INF/views/common/headerBelowLinks.jsp"%>

<div id="bodyWrap">
	<h3 class="cnts_title cnts_tlt1807">
		<span>쇼핑백</span>
	</h3>

	<!--shoppingback table-->
	<div class="tblwrap">
		<table class="table">
			<caption>쇼핑백</caption>
			<colgroup>
				<col style="width: 10px;">
				<col>
				<col style="width: 150px">
				<col style="width: 105px">
				<col style="width: 140px">
				<col style="width: 110px">
			</colgroup>
			<thead class="thead-light">
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
				<tr id="entryProductInfo">
					<td class="frt">
						<!-- value는 리스트의 개수만큼 내림차순으로 -->
						<input type="checkbox" name="cartlist" data-pk="10277981880364" value="con 4">
					</td>
					<td class="pt_list_wrap">
						<div class="pt_list_all">
							<a href="con 제품상세정보 uri">
								<img src="http://newmedia.thehandsome.com/CM/2B/FW/CM2B9WOT400W_SW_S01.jpg" alt="">
							</a>
							<div class="tlt_wrap">
								<a href="con 제품상세정보 uri" class="basket_tlt">
									<span class="tlt">the CASHMERE</span>
									<span class="sb_tlt"> 캐시미어 칼라리스 재킷</span>
								</a>

								<p class="color_op">

									color : Sepia Brown
									<span>/</span>
									size : 82
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
							<input type="hidden" name="entryNumber" value="4">
							<input type="hidden" name="productCode" value="CM2B9WOT400W_SW_82">
							<input type="hidden" name="initialQuantity" value="1">
							<input type="hidden" name="chgProductCode" value="">
							<input type="hidden" name="curSize" value="82">
							<input type="hidden" name="storeId" value="">
							<input type="hidden" name="storePickupDate" value="">
							<input type="hidden" name="deliveryKind" value="">
							<input type="hidden" name="cartDivision" value="">
							<!-- <input type="text" name="entryNumber" value="4">
							<input type="text" name="productCode" value="CM2B9WOT400W_SW_82">
							<input type="text" name="initialQuantity" value="1">
							<input type="text" name="chgProductCode" value="">
							<input type="text" name="curSize" value="82">
							<input type="text" name="storeId" value="">
							<input type="text" name="storePickupDate" value="">
							<input type="text" name="deliveryKind" value="">
							<input type="text" name="cartDivision" value=""> -->
							<!-- qty_sel -->
							<span class="qty_sel num">
								<!-- <a href="#none" onmousedown="javascript:AEC_F_D('CM2B9WOT400W_SW_82','o',1);" class="left" onclick="GA_Event('쇼핑백', '수량', '-');">이전 버튼</a> -->
								<button type="button" class="btn btn-light left" onclick="quantity_control(this, 'minus');">-</button>
								<input id="quantity4" name="quantity" type="text" class="mr0" value="1" size="1" maxlength="3" />
								<button type="button" class="btn btn-light right" onclick="quantity_control(this, 'plus');">+</button>
								<!-- <a href="#none" onmousedown="javascript:AEC_F_D('CM2B9WOT400W_SW_82','i',1);" class="right" onclick="GA_Event('쇼핑백', '수량', '+');">다음 버튼</a> -->

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
							<a href="#none" class="btn wt_ss" onclick="callWishListClick('캐시미어 칼라리스 재킷',$(this),'CM2B9WOT400W_SW_82');" data-value="0">위시리스트</a>
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
										<img src="http://newmedia.thehandsome.com/CM/2B/FW/CM2B9WOT400W_SW_S01.jpg" alt="">
									</a>
									<div class="tlt_wrap">
										<a href="/ko/HANDSOME/WOMEN/OUTER/JACKET/%EC%BA%90%EC%8B%9C%EB%AF%B8%EC%96%B4-%EC%B9%BC%EB%9D%BC%EB%A6%AC%EC%8A%A4-%EC%9E%AC%ED%82%B7/p/CM2B9WOT400W_SW" class="basket_tlt">
											<span class="tlt">the CASHMERE</span>
											<span class="sb_tlt">캐시미어 칼라리스 재킷</span>
										</a>
										<!-- color_size -->
										<dl class="cs_wrap">
											<dt>COLOR</dt>
											<dd>
												<div class="cl_select">
													<a href="javascript:void(0);" onclick="setOptions(this, '4', 'CM2B9WOT400W_SW', 'style');" class="beige on"
														style="background: #362626 url('http://newmedia.thehandsome.com/CM/2B/FW/CM2B9WOT400W_SW_C01.jpg/dims/resize/18x18')">BROWN</a>
													<span class="cs_sel1807">Sepia Brown</span>
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

				<!-- //Info wrap -->

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
									<button type="button" class="btn btn-light left" onclick="quantity_control(this, 'minus');">-</button>
									<input id="quantity4" name="quantity" type="text" class="mr0" value="1" size="1" maxlength="3" />
									<button type="button" class="btn btn-light right" onclick="quantity_control(this, 'plus');">+</button>
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
								<a href="#none" class="btn wt_ss" onclick="callWishListClick('캐시미어 칼라리스 재킷',$(this),'CM2B9WOT400W_SW_82');" data-value="0">위시리스트</a>
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

				<!-- //Info wrap -->
				<tr name="entryProductInfo" data-pk="10272543899692" data-deliverykind="" data-outofstock="false">
					<td class="frt">
						<!-- 2019.11.07 쇼핑백 진입 시 선택 상품 없도록 수정 -->
						<input type="checkbox" name="cartlist" data-pk="10272543899692" data-division="" data-deliverykind="" value="0">
					</td>
					<td class="pt_list_wrap">
						<!-- pt_list_all -->
						<div class="pt_list_all">
							<a href="/ko/HANDSOME/WOMEN/OUTER/DOWN-JUMPER/%ED%81%AC%EB%A1%AD-%EA%B5%AC%EC%8A%A4-%EB%8B%A4%EC%9A%B4-%EC%A0%90%ED%8D%BC/p/MW2B9QOT606W_SW_S"
								onclick="javascript:setEcommerceData('4', 'Click ADD');GA_Event('쇼핑백','상품','크롭 구스 다운 점퍼');">
								<img src="http://newmedia.thehandsome.com/MW/2B/FW/MW2B9QOT606W_SW_S01.jpg" alt="">
							</a>
							<div class="tlt_wrap">
								<a href="/ko/HANDSOME/WOMEN/OUTER/DOWN-JUMPER/%ED%81%AC%EB%A1%AD-%EA%B5%AC%EC%8A%A4-%EB%8B%A4%EC%9A%B4-%EC%A0%90%ED%8D%BC/p/MW2B9QOT606W_SW_S" class="basket_tlt"
									onclick="javascript:setEcommerceData('4', 'Click ADD');GA_Event('쇼핑백','상품','크롭 구스 다운 점퍼');">
									<span class="tlt">CLUB MONACO</span>
									<span class="sb_tlt"> 크롭 구스 다운 점퍼</span>
								</a>

								<p class="color_op">

									color : Sepia Brown
									<span class="and_line">/</span>
									size : S
								</p>


								<div class="option_wrap">
									<a href="#none" class="btn_option" id="optOpenLayer^0^MW2B9QOT606W_SW" onclick="GA_Event('쇼핑백','옵션변경', '크롭 구스 다운 점퍼')">옵션변경</a>
								</div>
							</div>
						</div>
						<!-- //pt_list_all-->
					</td>
					<td class="al_middle">
						<form id="updateCartForm0" action="cart/update" method="post">
							<input type="hidden" name="entryNumber" value="0">
							<input type="hidden" name="productCode" value="MW2B9QOT606W_SW_S">
							<input type="hidden" name="initialQuantity" value="1">
							<input type="hidden" name="chgProductCode" value="">
							<input type="hidden" name="curSize" value="S">
							<input type="hidden" name="storeId" value="">
							<input type="hidden" name="storePickupDate" value="">
							<input type="hidden" name="deliveryKind" value="">
							<input type="hidden" name="cartDivision" value="">
							<!-- qty_sel -->
							<span class="qty_sel num">
								<a href="#none" onmousedown="javascript:AEC_F_D('MW2B9QOT606W_SW_S','o',1);" class="left" onclick="GA_Event('쇼핑백', '수량', '-');">이전 버튼</a>
								<input id="quantity0" name="quantity" type="text" class="mr0" value="1" size="1" maxlength="3">
								<a href="#none" onmousedown="javascript:AEC_F_D('MW2B9QOT606W_SW_S','i',1);" class="right" onclick="GA_Event('쇼핑백', '수량', '+');">다음 버튼</a>
							</span>
							<!-- //qty_sel -->
							<a href="#none" id="QuantityProduct_0" class="btn wt_ss qty_w mr0">변경</a>
						</form>
					</td>
					<td class="al_middle">
						<!-- Price -->
						<div class="price_wrap">
							<span>₩598,000</span>
							<input type="hidden" name="checkZeroPrice" value="598000.0">
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
							<a href="#none" class="btn wt_ss" onclick="callWishListClick('크롭 구스 다운 점퍼',$(this),'MW2B9QOT606W_SW_S');" data-value="4">위시리스트</a>
							<a href="#none" id="RemoveProduct_0" class="btn wt_ss" onclick="GA_Event('쇼핑백','삭제','크롭 구스 다운 점퍼');">삭제</a>
						</div>
						<!-- //Button size -->
					</td>
				</tr>
				<!-- Info wrap -->
				<tr>
					<td colspan="6" class="basket_wrap">
						<!-- Info -->
						<div class="basket_info" style="display: block;">
							<span class="btn_arr">위치아이콘</span>
							<div class="info">
								<!-- Products -->
								<div class="pt_list" id="pt_list_0">
									<a href="/ko/HANDSOME/WOMEN/OUTER/DOWN-JUMPER/%ED%81%AC%EB%A1%AD-%EA%B5%AC%EC%8A%A4-%EB%8B%A4%EC%9A%B4-%EC%A0%90%ED%8D%BC/p/MW2B9QOT606W_SW">
										<img src="http://newmedia.thehandsome.com/MW/2B/FW/MW2B9QOT606W_SW_S01.jpg" alt="">
									</a>
									<div class="tlt_wrap">
										<a href="/ko/HANDSOME/WOMEN/OUTER/DOWN-JUMPER/%ED%81%AC%EB%A1%AD-%EA%B5%AC%EC%8A%A4-%EB%8B%A4%EC%9A%B4-%EC%A0%90%ED%8D%BC/p/MW2B9QOT606W_SW" class="basket_tlt">
											<span class="tlt">CLUB MONACO</span>
											<span class="sb_tlt">크롭 구스 다운 점퍼</span>
										</a>
										<!-- color_size -->
										<dl class="cs_wrap">
											<dt>COLOR</dt>
											<dd>
												<div class="cl_select">
													<a href="javascript:void(0);" onclick="setOptions(this, '0', 'MW2B9QOT606W_SW', 'style');" class="beige on"
														style="background: #362626 url('http://newmedia.thehandsome.com/MW/2B/FW/MW2B9QOT606W_SW_C01.jpg/dims/resize/18x18')">BROWN</a>
													<a href="javascript:void(0);" onclick="setOptions(this, '0', 'MW2B9QOT606W_DG', 'style');" class="beige"
														style="background: #464646 url('http://newmedia.thehandsome.com/MW/2B/FW/MW2B9QOT606W_DG_C01.jpg/dims/resize/18x18')">GREY</a>
													<span class="cs_sel1807">Sepia Brown</span>
												</div>
											</dd>
											<dt>SIZE</dt>
											<dd style="width: 90%; height: 100%;">
												<div class="sz_select">
													<a href="javascript:void(0);" onclick="setOptions(this, '0', 'MW2B9QOT606W_SW_XS', 'size');">XS</a>
													<a href="javascript:void(0);" onclick="setOptions(this, '0', 'MW2B9QOT606W_SW_S', 'size');" class="on" style="line-height: 15px;">S</a>
													<a href="javascript:void(0);" onclick="setOptions(this, '0', 'MW2B9QOT606W_SW_M', 'size');">M</a>
												</div>
											</dd>
										</dl>
										<!-- //color_size -->
									</div>

								</div>
								<!-- //Products -->
								<!-- btns -->
								<div class="btns">
									<a href="#none" class="btn wt_ss mr0" id="UpdateCart_0">변경</a>
									<a href="#none" class="btn wt_ss mt10 mr0" id="optCancelLayer_0">취소</a>
									<a href="#none" class="btn_close" id="optCloseLayer_0">닫기</a>
								</div>
								<!-- //btns -->
							</div>
						</div>
						<!-- //Info -->
					</td>
				</tr>
				<!-- //Info wrap -->
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
					<p class="tlt_ship">배송비</p>
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
<%@ include file="/WEB-INF/views/common/footer.jsp"%>