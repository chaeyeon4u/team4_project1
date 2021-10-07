<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/views/common/headerAboveLinks.jsp"%>
<%@ include file="/WEB-INF/views/special/orderCancellationLinks.jsp"%>
<%@ include file="/WEB-INF/views/common/headerBelowLinks.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<body oncontextmenu="return false"> 

<!-- bodyWrap -->
      <div id="bodyWrap">
      
    <h3 class="cnts_title">
      <span id="menuTitle">주문 취소</span>
    </h3>
    <div class="sub_container">
      			<%-- 마이페이지 왼쪽 네비게이션바 시작--%>
			<div class="lnb_wrap">
				<h4>
					<a href="/">마이페이지<!-- 마이페이지 --></a>
				</h4>
				<div class="lnb">
					<dl>
		<%-- 마이페이지 분류1--%>
						<dt>주문조회</dt>
						<dd>
							<a href="/">주문/취소</a>
						</dd>
					</dl>
					<dl>
		<%-- 마이페이지 분류2--%>
						<dt>분류2</dt>
						<dd>
							<a href="/">분류2-1</a>
						</dd>
						<dd>
							<a href="/">분류2-2</a>
						</dd>
						<dd>
							<a href="/">분류2-3</a>
						</dd>
						<dd>
							<a href="/">분류2-4</a>
						</dd>
					</dl>
					<dl>
		<%-- 마이페이지 분류3--%>
						<dt>분류3</dt>
						<dd>
							<a href="/">분류3-1</a>
						</dd>
						<dd>
							<a href="/">분류3-2</a>
						</dd>
						<dd>
							<a href="/">분류3-3</a>
						</dd>
						<dd>
							<a href="/">분류3-4</a>
						</dd>
					</dl>
					<dl>
						<dt>분류4</dt>
						<dd>
							<a href="/">분류4-1</a>
						</dd>
						<dd>
							<a href="/">분류4-2</a>
						</dd>
						<dd>
							<a href="/">분류4-3</a>
						</dd>
						<dd>
							<a href="/">분류4-4</a>
						</dd>
					</dl>
					<dl>
						<dt>분류5</dt>
						<dd>
							<a href="/">분류5-1</a>
						</dd>
						<dd>
							<a href="/">분류5-2</a>
						</dd>
						<dd>
							<a href="/">분류5-3</a>
						</dd>
					</dl>
				</div>
			</div>
      <!-- //lnb -->
      <!-- cnts -->
      <div class="sub_cnts">
            <div class="order_info clearfix">
              <div class="order_num">
                <strong>주문번호 : </strong> <span id="orderNumber">211007P10961088</span>	</div>
              <div class="order_date" style="white-space: nowrap;">주문일시 : <span id="orderDate">2021.10.07. 02:25</span></div> </div>
            <div class="title_wrap mt50">
              <h4>주문상품</h4>	</div>
            <!-- Table -->
            <div class="tblwrap">
              <table id="egiftTable" class="tbl_ltype">
                <caption>주문상품 목록</caption>	<colgroup>
                  <col style="width:10px">
                  <col>
                  <col style="width:120px">
                  <col style="width:110px">
                  <col style="width:110px">
  </colgroup>
                <thead>
                  <tr>
                    <th scope="col"><input type="checkbox" title="선택" value="" name="allcheck" style="display: none;"></th>	<th scope="col">상품정보</th>	<th scope="col">수량</th>	<th scope="col">판매가</th>	<th scope="col">주문선택</th>	</tr>
                </thead>
                <tbody id="orderEntries">
                  
                <tr class="entryRows">                                                                                                    	<td class="frt"><input type="checkbox" title="선택" value="" name="checkpd" style="display:none;" checked=""></td>                    	<td class="pt_list_wrap">                                                                            		<!-- pt_list_all -->                                                                             		<div class="pt_list_all">                                                                        			<a href="/ko/p/MN2B9WJC649W_BG_82"><img src="http://newmedia.thehandsome.com/MN/2B/FW/MN2B9WJC649W_BG_S01.jpg" alt="상품 이미지"></a>   			<div class="tlt_wrap">                                                                       				<a href="/ko/p/MN2B9WJC649W_BG_82" class="basket_tlt">                 					<span class="tlt">MINE</span>                                                   <span class="sb_tlt">멜란지 크롭 재킷</span>                    				</a>                                                                                     <p class="color_op">color : BEIGE  <span class="and_line">/</span>  size : 82</p>				<div class="option_wrap">                                                                					&nbsp;                                                                               				</div>			</div>                                                                                       		</div>                                                                                           		<!-- //pt_list_all -->                                                                           	</td>                                                                                                	<td class="al_middle">                                                                               		<!-- qty_sel -->                                                                                 		<span class="qty_sel num">                                                                       			3<input type="hidden" title="수량" value="3" class="mr0 quantityValue" baseprice="795000" productcode="MN2B9WJC649W_BG_82" readonly="">		</span>                                                                                          		<!-- //qty_sel -->                                                                               	</td>                                                                                                	<td class="al_middle">                                                                               		<!-- Price -->                                                                                   		<div class="price_wrap">                                                                         			<span>￦2,385,000</span>                                                      		</div>                                                                                           		<!-- //Price -->                                                                                 	</td>                                                                                                	<td class="al_middle">                                                                               		<p class="num">입금대기</p>		<span class="sum_date">(2021-10-07)</span>                                                       	</td>                                                                                                </tr>                                                                                                   </tbody>
              </table>
            </div>
            <!-- //Table -->
  
  
            <div class="btnwrap atHomeDisabled">
              <input type="button" value="환불 예상금액 계산하기" class="btn gray mr0" id="refundAmountCalculator">	</div>
  
            <div class="title_wrap mt50 clearfix atHomeDisabled">
              <h4 class="float_left">환불 예상금액 확인</h4>	<div class="btn_wrap">
            </div>
            <!-- Table -->
            <div class="tblwrap atHomeDisabled">
              <table class="tbl_wtype1 mt10">
                <caption>환불 예상금액 확인</caption>	<colgroup>
                  <col style="width:23%">
                  <col>
                </colgroup>
                <tbody>
                  <tr>
                    <th scope="row">주 결제수단 환불</th>	<td><em class="vBl" id="oname" style="vertical-align: baseline;">우체국</em> <em class="vBl" id="cnum" style="vertical-align: baseline;"></em></td>
                  </tr>
                  <tr>
                    <th scope="row">금액</th>	<td>₩<em class="vBl" id="refundAmount" style="vertical-align: baseline;">0</em></td>
                  </tr>
                  <tr>
                    <th scope="row">기타 환급</th>	<td>
                      <ul class="bul_sty01_li">
                        <li>한섬마일리지: <em class="vBl" id="refundPoint" style="vertical-align: baseline;">0</em>M</li>
                      </ul>
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
            <!-- //Table -->
            <div class="btnwrap mypage1">
              <input type="button" value="이전 페이지로" id="returnCancleBtn" class="btn wt">	
              <input type="button" value="선택상품주문취소" id="returnRequestBtn" class="btn gray mr0">	
            </div>
  
            <!-- Guide Table -->
            <div class="gd_wrap mt50">
              <dl class="gd_list com pl0">
                <dt>증빙서류출력 안내</dt>	<dd>
                  <strong>주문취소 안내</strong>	<ul class="bul_sty01_li mb26">
                    <li>상품취소는 상품이 상품 발송 이전까지 가능합니다.</li>
                    <li>주문 취소 내역은 마이페이지&gt;주문/배송 조회&gt;상세보기에서 확인 하실 수 있습니다.</li>
                  </ul>
                  <strong>주문 취소 처리</strong>	<ul class="bul_sty01_li">
                    <li>카드결제 취소: 카드 결제는 카드사로 즉시 취소 요청을 합니다. <br>(단 카드사에서 승인 취소 처리를 하는데 2-3일이 소요 될 수 있습니다.)</li>
                    <li>실시간 계좌 이체: 결제를 진행하신 계좌로 환불 처리 됩니다.</li>
                    <li>가상계좌: 등록하신 환불 계좌로 2-3일내 입금처리 됩니다.<br></li>
                    <li>한섬마일리지: 주문 취소 후 즉시 복원 됩니다.</li>
                    <li>기프트 카드 : 주문 취소 후 포인트로 복원 되며, 복원 비율은 1:1 입니다.</li>
                    <li>쿠폰/프로모션 코드: 주문 취소 후 즉시 복원 됩니다. 단 부분 주문 취소 시에는 복원 되지 않습니다.</li>
  </ul>
                </dd>
                
                </dl>
            </div>
            <!-- //Guide Table -->
  
      
  </div>
      <!-- //cnts -->
    </div>
  </div>

    <div id="ariaStatusMsg" class="skip" role="status" aria-relevant="text" aria-live="polite"></div>
    
    <!--loadingbar-->
    <div class="layerBg"></div>
    <!--//loadingbar-->
    
    <div class="layerArea" id="mapleLayer" style="display:none;">
       <div class="layerBg"></div>
    </div>
  

          <!-- Guide Table -->
          <dl class="gd_list com pl0">
            <dt>환불안내</dt>	<dd>
            
              <ul class="bul_sty01_li">
                <li>쿠폰 적용된 상품의 취소/반품 시, 상품 가격에 따라 쿠폰 할인된 금액을 차감 후 환불됩니다.</li>
                <li>쿠폰 기간 만료 시 환급되어도 사용 불가하며, 자세한 사항은 ‘마이페이지&gt;쿠폰’ 메뉴에서 확인하실 수 있습니다.</li>
                <li>쿠폰 적용 여부에 따라서 취소/반품 신청하신 상품의 판매가 보다 환불금액이 작을 수 있습니다.</li>
                <li>특정 구매금액 이상일 때 적용되는 쿠폰의 경우 환불로 인해 구매금액이 감소할 때 쿠폰 적용이 취소될 수 있습니다.</li>
                <li>반품 시 환불예상금액에서 반품배송비가 차감될 수 있습니다.</li>
                <li>반품배송비는 한섬마일리지 &gt; e-money &gt; 주결제수단(신용카드 등) 순으로 차감됩니다.</li>
                <li>반품배송비 결제를 [차감 후 환불]로 선택하신 경우는 환불 예상금액에서 반품배송비가 차감됩니다.</li>
                <li>환불 시 결제수단별 환불 순서는 다음과 같습니다.<br>
                  1.주결제 수단 환불     2. 기프트카드 환급     3. 한섬마일리지 환급</li>
  				</ul>
            </dd>
          </dl>
</body>

<%@ include file="/WEB-INF/views/common/footer.jsp"%>