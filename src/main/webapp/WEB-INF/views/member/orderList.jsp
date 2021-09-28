<%@ page contentType="text/html; charset=UTF-8" %>

<%@ include file="/WEB-INF/views/common/header.jsp" %>

<body oncontextmenu="return false">
	<div id="bodyWrap">
	
		<%-- 상단 중앙 페이지 제목--%>
		<h3 class="cnts_title">
			<span id="menuTitle">주문/취소</span>
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
				
				<%--
				<!-- ph_guide -->
				<div class="ph_guide">
					<p class="tlt">고객센터 운영 안내</p>
					<p class="phone">1800-5700</p>
					<p class="txt">
						평일(월~금)<br>
						am 09:00 ~ pm 18:00<span>토/일, 공휴일 휴무</span>
					</p>
					<a href="mailto:shophelp@thehandsome.com">shophelp<br>@thehandsome.com</a>
				</div>
				<!-- //ph_guide -->
				--%>
			</div>
			<%-- 마이페이지 왼쪽 네비게이션바 끝--%>
			
			
			<!-- cnts -->
			<div class="sub_cnts">
			
				<%-- 
				<!-- search1 -->
				<form id="orderSearchForm" action="/ko/mypage/order/myorderlist">
					<div class="search_wrap">
						<!-- cnd -->
						<ul>
							<li>
								<p class="bul_sty01">
									<label for="term">조회기간<!-- 조회기간 --></label>
								</p>
								<div class="calendar_wrap mr5">
									<input type="text" name="sterm"
										class="input_date hasDatepicker"
										title="mypage.order.history.serch.term.insert" id="sterm"
										readonly="">
									<button type="button" class="ui-datepicker-trigger ico_cld">...</button>
									<!-- <a href="#" class="ico_cld">날짜 선택 버튼</a> -->
									<div class="form_hyphen pl5">-</div>
									<input type="text" name="eterm"
										class="input_date hasDatepicker"
										title="mypage.order.history.serch.term.insert" id="eterm"
										readonly="">
									<button type="button" class="ui-datepicker-trigger ico_cld">...</button>
									<!-- <a href="#" class="ico_cld">날짜 선택 버튼</a> -->
								</div>
								<div class="tab_c">
									<ul class="clearfix">
										<li><a href="javascript:void(0);" id="setDateBtn1"
											class="on">1주일<!-- 1주일 --></a></li>
										<li><a href="javascript:void(0);" id="setDateBtn2">1개월<!-- 1개월 --></a></li>
										<li><a href="javascript:void(0);" id="setDateBtn3">3개월<!-- 3개월 --></a></li>
									</ul>
								</div>
							</li>
							<li class="space">
								<p class="bul_sty01">
									<label for="id_sel">검색구분<!-- 검색구분 --></label>
								</p> <select name="searchType" title="검색구분" class="select">
									<option value="productName">상품명
										<!-- 상품명 --></option>
									<option value="orderNumber">주문번호
										<!-- 주문번호 --></option>
							</select> <input type="text" name="searchWord" class="input_all"
								title="검색어 입력"> <!-- 검색어 입력 -->
							</li>
						</ul>
						<!-- //cnd -->
						<input type="button" id="searchBtn" class="btn_search"
							value="조회하기">
						<!-- 조회하기 -->
					</div>
				</form>
				--%>
				
				<!-- //search1 -->
				
				<div class="title_wrap mt50">
					<h4>
						상품 주문 목록
						<!-- 상품 주문목록 -->
					</h4>
				</div>
				
				<!-- table -->
				<div class="tblwrap lncl1812">
					<!-- 클래스추가 181204 -->
					<table class="tbl_ltype review_betterment1905">
						<caption>상품 주문 목록</caption>
						<colgroup class="interval1812">
							<!-- 수정 181204 -->
							<col style="width: 120px">
							<col>
							<col style="width: 43px">
							<col style="width: 112px">
							<col style="width: 89px">
							<col style="width: 111px">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">주문번호<!-- 주문번호 --></th>
								<th scope="col">상품정보<!-- 상품정보 --></th>
								<th scope="col" style="padding: 15px 0">수량<!-- 수량 --></th>
								<!-- 스타일추가 181204 -->
								<th scope="col">판매가<!-- 판매가 --></th>
								<th scope="col">주문상태<!-- 주문상태 --></th>
								<th scope="col">구분<!-- 구분 --></th>
							</tr>
						</thead>
						<tbody id="listBody">
							<tr class="al_middle">
								<td rowspan="1" class="frt"><p class="num">주문번호자리</p>
									<span class="sum_date">(날짜자리)</span>
								</td>
								<td>
									<div class="pt_list_all">
										<a href="/ko/p/O22B9ROT502W_CR_76">
										<img src="${pageContext.request.contextPath}/resources/images/womanouter/CS2B9QJC005WCJ_BK_T01.jpg"
											alt="상품 이미지"></a>
										<div class="tlt_wrap">
											<a href="/ko/p/O22B9ROT502W_CR_76" class="basket_tlt">
				<%-- 브랜드명 자리--%>
												<span class="tlt">브랜드명</span> 
				<%-- 상품명 자리--%>
												<span class="sb_tlt">상품명</span>
											</a>
				<%-- 색상명, 사이즈 자리--%>
											<p class="color_op">
												color : 색상명 <span class="and_line">/</span> size : 사이즈
											</p>
										</div>
									</div>
								</td>
				<%-- 수량 자리--%>
								<td>수량</td>
				<%-- 가격 자리--%>
								<td>가격</td>
				<%-- 주문상태 및 날짜 자리--%>
								<td>주문상태<span class="sum_date">(날짜)</span></td>
								<td rowspan="1"><div class="btn_wrap">
										<a href="/" class="btn wt_ss">주문취소</a>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<!-- //table -->
				
				<%--
				<!-- paging -->
				<div class="paging">
					<a class="prev2" href="javascript:void(0);">처음 페이지로 이동</a><a
						href="javascript:void(0);" class="prev">이전 페이지로 이동</a><span
						class="num"><a href="javascript:void(0);"
						class="pageBtn  on  " pagenum="1">1</a></span><a
						href="javascript:void(0);" class="next">다음 페이지로 이동</a><a
						href="javascript:void(0);" class="next2">마지막 페이지로 이동</a>
				</div>
				<!-- //paging -->
				 --%>
				 
				<!-- Guide Table -->
				
				<div class="gd_wrap">
					<div class="delivery_step">
						<p class="title">
							주문/배송프로세스
							<!-- 주문 / 배송 프로세스 -->
						</p>
						<ol>
							<li>
								<p class="step">
									<span>STEP 1</span> 1. 입금대기중
									<!-- 입금 대기중 -->
								</p>
								<p class="txt">
									가상계좌를 선택 하셨다면 결제를 완료해 주세요.
									<!-- 가상계좌를 선택 하셨다면<br>결제를 완료해 주세요. -->
								</p>
							</li>
							<li>
								<p class="step">
									<span>STEP 2</span> 2. 주문완료
									<!-- 주문완료 -->
								</p>
								<p class="txt">
									주문정보를 확인하고 있습니다.
									<!-- 주문정보를 확인 하고<br>있습니다. -->
								</p>
							</li>
							<li>
								<p class="step">
									<span>STEP 3</span> 3. 배송준비중
									<!-- 배송 준비중 -->
								</p>
								<p class="txt">
									상품의 배송을 준비하고 있습니다.
									<!-- 상품의 배송을 준비하고<br>있습니다. -->
								</p>
							</li>
							<li>
								<p class="step">
									<span>STEP 4</span> 4. 배송중
									<!-- 배송중 -->
								</p>
								<p class="txt">
									물품이 발송되어 고객님께 배송 중 입니다.
									<!-- 물품이 발송되어 고객님께<br>배송 중 입니다. -->
								</p>
							</li>
							<li>
								<p class="step">
									<span>STEP 5</span> 5. 배송완료
									<!-- 배송완료 -->
								</p>
								<p class="txt">
									배송이 완료 되었습니다.
									<!-- 배송이 완료 되었습니다.-->
								</p>
							</li>
						</ol>
					</div>
				</div>
				
			</div>
			<!-- //cnts -->
		</div>
	</div>

</body>




<%@ include file="/WEB-INF/views/common/footer.jsp" %>