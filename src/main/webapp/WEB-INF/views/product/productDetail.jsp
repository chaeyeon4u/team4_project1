<%@ page contentType="text/html; charset=UTF-8" %>

<%@ include file="/WEB-INF/views/common/headerAboveLinks.jsp"%>
<%@ include file="/WEB-INF/views/special/productDetailLinks.jsp"%>
<%@ include file="/WEB-INF/views/common/headerBelowLinks.jsp"%>

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
										<!-- <span class="qty_sel num"> -->
										<span> 
										  <button onclick="detailProductCountChange('down');" style="margin:0px;" type="button" class="btn btn-light left1">-</button>
										  <input id="quantity4" name="quantity" type="text" class="mr0" value="1" size="1" maxlength="3" />
										  <button onclick="detailProductCountChange('up');" style="margin:0px;" type="button" class="btn btn-light right1">+</button>
										</span>
									</span>
								
									<script>
										/* 수량 증가 감소 처리
										size 미선택시 증가 감소 불가
										수량 0이하 불가
										총 합계(#sumPrice) 값 변경 */
										function detailProductCountChange(updown){
											console.log("수량 실행");
											
											let val = $("#quantity4").val();
											console.log("type" + typeof(val));
											if(updown=="down"){
												if(val>1){
													$("#quantity4").attr("value", (val*1 -1));
												}
											}else{
												$("#quantity4").attr("value", (val*1 +1));
											}
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
								
								<input type="button" value="쇼핑백 담기" class="cartbtn" id="addToCartButton" onclick="location.href='${pageContext.request.contextPath}/order/cartlist';">
								<!-- csrf 토큰 -->
								<div>
									<input type="hidden" name="CSRFToken" value="51186ab6-ee25-449c-af23-3c5e41d80d71">
								</div>
							</form>
					    </div>
					    </br>
					    
					    <script>
					    	/* 위시리스트 버튼 처리
					    	위시리스트 추가 : 상품 데이터 db에 반영, 이미지 변경, 사용자에게 알림
					    	위시리스트 제거 : 상품 데이터 db에 제거, 이미지 변경, 사용자에게 알림 */
					    	function addWishListClick(){
					    		
					    	}
					    </script>

<!------------------------------------------------>
						<div class="related_evt" style="margin-bottom: 75px;" >
							<div class="cd-n-lb-tab" id="codi_lookbook_tab" style="">
								<ul>
									<li class="on"><a href="#cd-n-lb-tab-01" onclick="GA_Event('상품_상세','함께 코디한 상품','함께 코디한 상품');">함께 코디한 상품</a></li>
								</ul>
							</div>
							
							<!-- box1 -->
							<div class="cd-n-lb-content-box" id="cd-n-lb-tab-01" style="display: block;">
								<div class="matches_list together-codi-list" id="referencesListContent">
									<ul class="clearfix slides">
							            <li id="prod_YN2B8KCD922W_YN" style="margin-right: 10px;">                    
				                            <div class="together-codi-pic">
												<a href="javascript:goDetailPage('YN2B8KCD922W_YN');" onclick="GA_Event('상품_상세','코디상품','백 레터링 니트 가디건');" class="pic">
													<img src="${pageContext.request.contextPath}/resources/images/womanshirts/image_blouse_3.jpg" alt="코디상품" class="respon_image">
												</a>
											</div>
				                            <span class="info_wrap item_info2">
				                                <span class="brand BR35">FOURM THE STORE</span>
				                                <span class="title">백 레터링 니트 가디건</span>
				                                	<span class="price">
				                                    	₩325,000
				                                    </span>
			                                    </span>
				                            
				                            <!-- 컬러칩 -->
											<div class="we-codi-colorchip">
												<ul class="color_chip clearfix">
													<li id="chipbtn_YN2B8KCD922W_BK">
															<!-- <input type="hidden" class="colorNameVal" value="BLACK"> -->
															<a href="#;" onclick="chngColorChip(this, 'YN2B8KCD922W_YN','YN2B8KCD922W_BK');" class="beige" style="background:#000000 url('http://newmedia.thehandsome.com/YN/2B/FW/YN2B8KCD922W_BK_C01.jpg/dims/resize/24x24')" onmouseover="setColorName('BLACK');" onmouseout="setColorName('');"></a>
														</li>
													<li id="chipbtn_YN2B8KCD922W_MP">
															<input type="hidden" class="colorNameVal" value="SMOKE PINK">
															<a href="#;" onclick="chngColorChip(this, 'YN2B8KCD922W_YN','YN2B8KCD922W_MP');" class="beige" style="background:#d29692 url('http://newmedia.thehandsome.com/YN/2B/FW/YN2B8KCD922W_MP_C01.jpg/dims/resize/24x24')" onmouseover="setColorName('SMOKE PINK');" onmouseout="setColorName('');"></a>
														</li>
													<input type="hidden" id="colorName" value="YELLOW GREEN">
													<li id="chipbtn_YN2B8KCD922W_YN">
															<input type="hidden" class="colorNameVal" value="YELLOW GREEN">
															<a href="#;" onclick="chngColorChip(this, 'YN2B8KCD922W_YN','YN2B8KCD922W_YN');" class="beige on" style="background:#d5b966 url('http://newmedia.thehandsome.com/YN/2B/FW/YN2B8KCD922W_YN_C01.jpg/dims/resize/24x24')"></a>
														</li>
													</ul>
											</div>
				                        </li>
				                    <li id="prod_YN2B8TTO620W_WT" style="margin-right: 10px;">                    
				                            <div class="together-codi-pic">
												<a href="javascript:goDetailPage('YN2B8TTO620W_WT');" onclick="GA_Event('상품_상세','코디상품','레이스 티셔츠');" class="pic">
													<img src="${pageContext.request.contextPath}/resources/images/womanshirts/image_blouse_2.jpg" alt="코디상품" class="respon_image">
												</a>
											</div>
				                            <span class="info_wrap item_info2">
				                                <span class="brand BR35">FOURM THE STORE</span>
				                                <span class="title">레이스 티셔츠</span>
					                                <span class="price">
					                                    ₩235,000
				                                    </span>
			                                    </span>
				                            
				                            <!-- 컬러칩 추가 -->
											<div class="we-codi-colorchip">
												<ul class="color_chip clearfix">
													<li id="chipbtn_YN2B8TTO620W_BK">
														<input type="hidden" class="colorNameVal" value="BLACK">
														<a href="#;" onclick="chngColorChip(this, 'YN2B8TTO620W_WT','YN2B8TTO620W_BK');" class="beige" style="background:#000000 url('http://newmedia.thehandsome.com/YN/2B/FW/YN2B8TTO620W_BK_C01.jpg/dims/resize/24x24')" onmouseover="setColorName('BLACK');" onmouseout="setColorName('');"></a>
													</li>
												<input type="hidden" id="colorName" value="WHITE">
												<li id="chipbtn_YN2B8TTO620W_WT">
														<input type="hidden" class="colorNameVal" value="WHITE">
														<a href="#;" onclick="chngColorChip(this, 'YN2B8TTO620W_WT','YN2B8TTO620W_WT');" class="beige on" style="background:#ffffff url('http://newmedia.thehandsome.com/YN/2B/FW/YN2B8TTO620W_WT_C01.jpg/dims/resize/24x24')"></a>
													</li>
												</ul>
											</div>
				                        </li>
				                    </ul>
								</div>
							</div>
							<!-- //box1 -->
						</div>
						
<!------------------------------------------------>
					</div>
					
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