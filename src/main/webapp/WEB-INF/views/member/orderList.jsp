<%@ page contentType="text/html; charset=UTF-8" %>

<%@ include file="/WEB-INF/views/special/orderListLinks.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<body oncontextmenu="return false">
	<div id="bodyWrap">
	
		<%-- 상단 중앙 페이지 제목--%>
		<h3 class="cnts_title">
			<span id="menuTitle">주문/취소/배송</span>
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
							<a href="${pageContext.request.contextPath}/member/orderlist">주문/취소</a>
						</dd>
					</dl>
				</div>
			</div>
			<%-- 마이페이지 왼쪽 네비게이션바 끝--%>
			
			
			<div class="sub_cnts">				
				<div class="title_wrap mt50">
					<h4>
						상품 주문 목록
						<!-- 상품 주문목록 -->
					</h4>
				</div>
				
				<!-- table -->
				<div class="tblwrap lncl1812">
					<table id= "forRowspan" class="tbl_ltype review_betterment1905">
						<caption>상품 주문 목록</caption>
						<colgroup class="interval1812">
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
								<th scope="col">판매가<!-- 판매가 --></th>
								<th scope="col">주문상태<!-- 주문상태 --></th>
								<th scope="col">배송상태<!-- 배송상태 --></th>
								<th scope="col">구분<!-- 구분 --></th>
							</tr>
						</thead>
						<c:forEach var="orderx" items="${orderProduct}">
						<tbody id="listBody">
							<tr class="al_middle">
							<!-- 주문번호 자리 -->
								<td rowspan="1" class="frt">
									<p class="num">${orderx.orders.id}</p>
									<!-- 날짜 -->	
									<script>console.log("${bytime}")</script>
									<span class="sum_date"><fmt:formatDate value="${orderx.orderItem.orderByTime}" pattern="yyyy.MM.dd"/></span>
								</td>
								<td>
									<div class="pt_list_all">
										<a href="cart/set/${orderx.productCommon.id}">
										<!-- 상품 이미지 -->
										<img src="${orderx.productColor.img1}"
										"${pageContext.request.contextPath}/${orderx.productColor.img1}"
											alt="상품 이미지"></a>
										<div class="tlt_wrap">
											<a href="/cart/set/${orderx.productColor.img1}" class="basket_tlt">
				<%-- 브랜드명 자리--%>
												<span class="tlt">${orderx.brand.name}</span> 
				<%-- 상품명 자리--%>
												<span class="sb_tlt">${orderx.productCommon.name}</span>
											</a>
				<%-- 색상명, 사이즈 자리--%>
											<p class="color_op">
												color : ${orderx.productColor.colorCode} <span class="and_line">/</span> size : ${orderx.productStock.sizeCode}
											</p>
										</div>
									</div>
								</td>
				<%-- 수량 자리--%>
								<td>${orderx.orderItem.count}</td>
				<%-- 가격 자리--%>
								<td><span> ₩ <fmt:formatNumber type="number" maxFractionDigits="3" value="${orderx.orderItem.totalPrice}"/></span></td>
				<%-- 주문상태 및 날짜 자리--%>
								<td>${orderx.orders.status}<span class="sum_date"><fmt:formatDate value="${orderx.orderItem.orderByTime}" pattern="yyyy.MM.dd"/></span></td>
								<!--배송 싱테 --> 
								<td class="delivery">${orderx.orders.deliveryStatus}</td>
								<td rowspan="1">
								<div class="btn_wrap">
									<form method="post" action="/order/delete" name="hidden_field">
										<input type="hidden" name="hidden_ordersId" value="${orderx.orders.id}" />
										<input type="hidden" name="hidden_pstockId" value="${orderx.orderItem.productStockId}" />

									<a href="${pageContext.request.contextPath}/member/orderlist" class="" style="border:1px solid; border-radius:10%; font-size:15px; padding=20px; background-color: gray; color:#ffffff; ">주문취소</a>
									</form>	
									</div>
								</td>
							</tr>
						</tbody>
					</c:forEach>
					</table>
				</div>
				<!-- //table -->
					 
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
		</div>
	</div>
</body>



<%@ include file="/WEB-INF/views/common/footer.jsp" %>