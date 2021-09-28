<%@ page contentType="text/html; charset=UTF-8" %>

<%@ include file="/WEB-INF/views/common/header.jsp" %>

  <body oncontextmenu="return false" style="">
	<!-- csrf 토큰 -->
	<form id="CSRFForm" action="csrfToken" method="post">
		<div>
			<!-- <input type="hidden" name="CSRFToken" value="51186ab6-ee25-449c-af23-3c5e41d80d71"> -->
			<!-- 설명 hidden -->
			<!-- <input type="hidden" name="CSRFToken" value="Token-value"> -->
		</div>
	</form>
	
    <div id="globalMessages"></div>
    <div id="bodyWrap" class="item_detail">
        <div id="oneEventLayer"></div>

        <div class="adaptive_wrap">
            <div class="clearfix prd_detail1905" id="clearfix">
				<div class="clearfix image_view3">
					<div class="image_view1" id="image_view1">
						<div class="item_visual" id="imageDiv" style="margin-top: 20px;">
							<ul>
								<!-- <li><img src="http://newmedia.thehandsome.com/IL/2B/FW/IL2B9WBL572W_NY_W06.jpg/dims/resize/684x1032/" class="respon_image" alt="패널 번아웃 블라우스" onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img1.jpg'"></li> -->
								<li><img src="${pageContext.request.contextPath}/resources/images/womanshirts/image_blouse_1.jpg" class="respon_image" alt="패널 번아웃 블라우스" onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img1.jpg'"></li>
								<li><img src="${pageContext.request.contextPath}/resources/images/womanshirts/image_blouse_1.jpg" class="respon_image" alt="패널 번아웃 블라우스" onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img1.jpg'"></li>	
								<li><img src="${pageContext.request.contextPath}/resources/images/womanshirts/image_blouse_1.jpg" class="respon_image" alt="패널 번아웃 블라우스" onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img1.jpg'"></li>
								<li><img src="${pageContext.request.contextPath}/resources/images/womanshirts/image_blouse_1.jpg" class="respon_image" alt="패널 번아웃 블라우스" onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img1.jpg'"></li>	
								<li><img src="${pageContext.request.contextPath}/resources/images/womanshirts/image_blouse_1.jpg" class="respon_image" alt="패널 번아웃 블라우스" onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img1.jpg'"></li>
								<li><img src="${pageContext.request.contextPath}/resources/images/womanshirts/image_blouse_1.jpg" class="respon_image" alt="패널 번아웃 블라우스" onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img1.jpg'"></li>
							</ul>
						</div>
					</div>
			    </div>


				<div class="item_detail_info float_right" id="contentDiv" style="margin-top: 20px; top: 0px; left: 638px;">
					<div class="info">
						<div class="info_sect">
							<h4 class="item_name">
								<div class="brand-name">
									<a href="javascript:fn_goCategori('br31')" onclick="GA_Detail('brand',$(this))">LÄTT</a>
								</div>
								<span class="name ko_fir_spel">
									패널 번아웃 블라우스<input type="hidden" id="brandName" value="LÄTT">
									<!-- 상품명과 상품 번호에 대한 hidden 타입의 input -->
									<!-- <input type="hidden" id="productName" value="패널 번아웃 블라우스">
									<input type="hidden" id="productCode" value="IL2B9WBL572W_NY"> -->
									
									<!-- 설명 hidden -->
									<!-- <input type="text" id="productName" value="상품명 / hidden" readonly>
									<input type="text" id="productCode" value="상품번호 / hidden" readonly> -->
								</span>
							</h4>
							
							<div class="flag">
							</div>
							
							<p class="price">
								<span>₩375,000</span>
								<!-- 상품가격에 대한 hidden 타입의 input -->
								<!-- <input type="hidden" id="productPrice" value="375000"> -->
								
								<!-- 설명 hidden -->
								<!-- <input type="text" id="productPrice" value="가격 / hidden" readonly> -->
							</p>
				            <div class="prod-detail-con-box">
			                    <strong class="number-code">상품품번 : <span>IL2B9WBL572W_NY</span></strong>
			                    <div class="round-style">
			                        <p>글리터 원사를 더한 번아웃 패턴의 텍스처로 래트만의 섬세하고 완성도 높은 퀄리티가 돋보이는 블라우스입니다. 앞뒤의 양옆에 패널을 블록하였으며, 넥라인과 여밈, 패널 끝단에 레이스를 블록해 페미닌한 디테일을 더했습니다.</p>
			                    </div>		                            
		                    </div>
						</div>
							        
				       	<div class="info_sect">
							<ul class="point_delivery">
								<li>
									<span class="title">한섬마일리지</span>
									<span class="txt">18,750&nbsp;M&nbsp;(5%)</span>
								</li>
								
								<li>
				                    <span class="title">H.Point</span>
				                    <!-- point는 제품 가격에 따라 변동 -->
				                    <span class="txt">375&nbsp;P&nbsp;(0.1%)</span>
								</li>
								
								<li>
									<span class="title">배송비</span>
									<span class="txt">30,000원 이상 무료배송 (실결제 기준)</span>
								</li>
							</ul>
						</div>
						
						<div class="info_sect">
							<ul class="color_size_qty">
								<li>
									<span class="title">색상</span>
									<div class="txt">
										<ul class="color_chip clearfix">
											<li id="IL2B9WBL572W_IV">
												<!-- colorNameValue 정보를 담은 hidden 타입의 input -->
												<!-- <input type="hidden" class="colorNameVal" value="IVORY"> -->
												
												<!-- 설명 hidden -->
												<!-- <input type="text" class="colorNameVal" value="colorValue / hidden" readonly> -->
												
												<!-- <a href="javascript:fn_detailProductAjax('IL2B9WBL572W_IV');" class="beige" style="background:#fbfaea url('http://newmedia.thehandsome.com/IL/2B/FW/IL2B9WBL572W_IV_C01.jpg/dims/resize/24x24')" onmouseover="setColorName('IVORY');" onmouseout="setColorName('');" onclick="GA_Event('상품_상세','컬러칩','IV')"></a> -->
												
												
												<a href="javascript:detailProductColorChangeAjax('IL2B9WBL572W_IV');" class="beige" style="background:#000000;"></a>
											</li>
											
											<input type="hidden" id="colorName" value="NAVY">
											<li id="IL2B9WBL572W_NY">
												<!-- colorNameValue 정보를 담은 hidden 타입의 input -->
												<!-- <input type="hidden" class="colorNameVal" value="NAVY"> -->
												<!-- 설명 hidden -->
												<!-- <input type="text" class="colorNameVal" value="colorValue / hidden" readonly> -->
												
												<!-- <a href="#;" class="beige on" style="background:#23416e url('http://newmedia.thehandsome.com/IL/2B/FW/IL2B9WBL572W_NY_C01.jpg/dims/resize/24x24')" onmouseover="setColorName('NAVY');" onmouseout="setColorName('');"></a> -->
												<a href="#;" class="beige on" style="background:#ffffff;" onmouseover="setColorName('NAVY');" onmouseout="setColorName('');"></a>
											</li>
										</ul>
									</div>
									<script>
										/* 색상 변경시 처리
										원래 선택되어있던 색상(a태그) href값 javascript:detailProductColorChangeAjax('상품명_색상값');으로 바꾸기
										새로 선택된 색상(a태그) href값 #으로 바꾸기
										색상에 알맞은 이미지 변경 */
										function detailProductColorChangeAjax(idColor){
											
										}
									</script>
									
									<span class="cl_name" id="colorNameContent"></span>
								</li>
								<li>
								    <span class="title">사이즈</span>
									<span class="txt">
										<ul class="size_chip clearfix sizeChipKo1901">
											<li id="IL2B9WBL572W_NY_82">
												<!-- <a href="javascript:fn_detailProductAjax('IL2B9WBL572W_NY_82')" onclick="GA_Event('상품_상세','사이즈','82')">82<span class="ko_size1901">&nbsp;(55)</span></a> -->
												<a href="javascript:detailProductSizeChangeAjax('IL2B9WBL572W_NY_82');" onclick="">82<span class="ko_size1901">&nbsp;(55)</span></a>
											</li>
											<li id="IL2B9WBL572W_NY_88">
												<!-- <a href="javascript:fn_detailProductAjax('IL2B9WBL572W_NY_88')" onclick="GA_Event('상품_상세','사이즈','88')">88<span class="ko_size1901">&nbsp;(66)</span></a> -->
												<a href="#" onclick="">88<span class="ko_size1901">&nbsp;(66)</span></a>
											</li>
										</ul>
									</span>
									<script>
										/* 사이즈 변경시
										기존 선택 사이즈(a태그) href값 javascript:detailProductSizeChangeAjax('IL2B9WBL572W_NY_82');으로 바꾸기
										새로 선택된 사이즈(a태그) href값 #으로 바꾸기
										*/
										function detailProductSizeChangeAjax(idColorSize){
											
										}
									</script>
				                </li>
								<li>
									<span class="title">수량</span>
									<span class="txt">
										<!-- css .qty_sel a 이미지(left, right) 변경 -->
										<!-- <span class="qty_sel num">
											<a href="javascript:detailProductCountChange('down');" class="left">이전 버튼</a>
											<input type="text" id="txtqty" title="수량" value="1" class="mr0" readonly="readonly">
											<a href="javascript:detailProductCountChange('up');" class="right">다음 버튼</a>
										</span> -->
										<span class="qty_sel num">
										  <button type="button" class="btn btn-light left">-</button>
										  <input id="quantity4" name="quantity" type="text" class="mr0" value="1" size="1" maxlength="3" />
										  <button type="button" class="btn btn-light right">+</button>
										</span>
									</span>
								
									<script>
										/* 수량 증가 감소 처리
										size 미선택시 증가 감소 불가
										수량 0이하 불가
										총 합계(#sumPrice) 값 변경 */
										function detailProductCountChange(updown){
											
										}
									</script>
									<!-- <input type="hidden" id="erpWorkOrderNumber">     <input type="hidden" id="reserveSalesStockpile">  <input type="hidden" id="erpWorkOrderProdCode"> --> 
									
									<!-- 설명 hidden -->
									<!-- <input type="text" id="erpWorkOrderNumber" value="주문번호 / hidden" readonly>     <input type="text" id="reserveSalesStockpile" value="예약재고 / hidden" readonly>  <input type="text" id="erpWorkOrderProdCode" value="제품코드 / hidden" readonly> -->
								</li>
							</ul>
						</div>
						<div class="total_price clearfix">
							<div class="title float_left" style="width:auto;">총 합계</div>
							<div class="pirce float_right">
								<span id="sumPrice">₩375,000</span>
							</div>
						</div>
						
						
						<div class="btnwrap clearfix" style="position: absolute; width: 473px; margin-top: 0px; margin-bottom: 0px;">
							<!-- wishlist button 삭제-->
							<!-- <input type="button" value="" class="btn wishlist1803 float_left ml0  " onclick="addWishListClick();GA_Event('상품_상세','하단 고정 버튼','좋아요');"> -->
							<!-- <input type="button" value="" class="btn wishlist1803_1 float_left ml0" onclick="addWishListClick();"> -->
							<a type="button" value="" class="btn wishlist1803_1 float_left ml0" onclick="addWishListClick();">wish</a>
							
							<form id="addToCartForm" name="addToCartForm" action="/ko/HANDSOME/WOMEN/Top/Blouse/%ED%8C%A8%EB%84%90-%EB%B2%88%EC%95%84%EC%9B%83-%EB%B8%94%EB%9D%BC%EC%9A%B0%EC%8A%A4/p/IL2B9WBL572W_NY?categoryCode=we012" method="post">
								<!-- <input type="hidden" maxlength="3" size="1" name="qty" class="qty">
								<input type="hidden" name="productCodePost" value="IL2B9WBL572W_NY">
								<input type="hidden" id="productCodeType" name="productCodeType" value="ApparelStyleVariantProduct">
								<input type="hidden" id="stockCnt" value="0">
								<input type="hidden" name="storeId" id="storeId" value="">
								<input type="hidden" name="storePickupDate" id="storePickupDate" value="">
								<input type="hidden" name="workOrder" id="workOrder" value="">
								<input type="hidden" name="recommendProduct" id="recommendProduct" value="">
								<input type="hidden" name="deliveryKind" id="deliveryKind" value="">
								<input type="hidden" name="streetname" id="streetname" value="">
								<input type="hidden" name="streetnumber" id="streetnumber" value="">
								<input type="hidden" name="postalcode" id="postalcode" value="">
								<input type="hidden" name="quickStreetname" id="quickStreetname" value="">
					            <input type="hidden" name="quickStreetnumber" id="quickStreetnumber" value="">
					            <input type="hidden" name="quickPostalcode" id="quickPostalcode" value="">
								<input type="hidden" name="fourpmList" id="fourpmList">
								<input type="hidden" name="athomeList" id="athomeList">
								<input type="hidden" name="pickupList" id="pickupList">
								<input type="hidden" name="quickList" id="quickList">
								<input type="hidden" name="buyNowYn" id="buyNowYn" value="false">
								<input type="button" value="쇼핑백 담기" class="btn cart1803 float_left ml0" id="addToCartButton" onclick="addToCart();GA_Event('상품_상세','하단 고정 버튼','쇼핑백담기');"> -->
								
							<!-- 설명 hidden -->
								<!-- <input type="" maxlength="3" size="1" name="qty" class="qty" value="qty(수량) / hidden">
								<input type="" name="productCodePost" value="상품번호 / hidden">
								<input type="" id="stockCnt" value="재고 / hidden">
								<input type="" name="storeId" id="storeId" value="storeId / hidden">
								<input type="" name="storePickupDate" id="storePickupDate" value="쇼핑백담기 butten클릭시 21개의 hidden 전달, db설계 이후 유동적 선택"> -->
								
								<input type="button" value="쇼핑백 담기" class="btn cart1803 float_left ml0" id="addToCartButton" onclick="addToCart();GA_Event('상품_상세','하단 고정 버튼','쇼핑백담기');">
								<!-- csrf 토큰 -->
								<div>
									<input type="hidden" name="CSRFToken" value="51186ab6-ee25-449c-af23-3c5e41d80d71">
								</div>
							</form>
							<input type="button" value="바로주문" class="btn order float_right mr0" id="addToCartBuyNowButton" onclick="GA_Event('상품_상세','하단 고정 버튼','바로주문');addToCart(true);">   
					    </div>
					    
					    <script>
					    	/* 위시리스트 버튼 처리
					    	위시리스트 추가 : 상품 데이터 db에 반영, 이미지 변경, 사용자에게 알림
					    	위시리스트 제거 : 상품 데이터 db에 제거, 이미지 변경, 사용자에게 알림 */
					    	function addWishListClick(){
					    		
					    	}
					    </script>
					                
						<dl class="toggle_type1" style="margin-top:80px;">
							<!--상품평 btn, 클릭시 상품평 화면으로 넘어가게-->
					        <div class="mt-32 popup_customer_review1807" id="customerReview">
					            <a href="#;" onclick="GA_Event('상품_상세','정보','상품평');">상품평(<span id="customerReviewCnt">0</span>)
					                <div class="star_score1807" id="prodTotalStarScoreWrapper" style="display: none;"></div>
					            </a>
					        </div>
						</dl>
					</div>
					
					<!-- QnA button 삭제-->
					<!-- <div class="clearfix mt30">
						<div class="btnwrap float_left">
							<a href="javascript:productDetailQnA();" class="btn arrow mr0" onclick="GA_Event('상품_상세','Q&amp;A','클릭');">Q&amp;A(<span class="data" id="productQnACnt">0</span>)</a>
						</div>
					</div> -->
					
					
				
					<input type="hidden" id="viewExhibitionPageCode" value="">
					<input type="hidden" id="viewExhibitionPageName" value="">
				
				  </div>
									    
				<form id="PAY_FORM" method="post" accept-charset="euc-kr">
				</form>
			</div>
        </div>
		
	</div>
    
    <form id="productOneCLickDeliveryForm" action="/ko/mypage/myDeliveryList">
        <input type="hidden" name="code" id="code" value="">
    </form>
    
    <input type="hidden" id="chkToastFirstYn" name="chkToastFirstYn" value="N">

<iframe height="0" width="0" title="Criteo DIS iframe" style="display: none;"></iframe></body>
  
<%@ include file="/WEB-INF/views/common/footer.jsp" %>