<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="/WEB-INF/views/common/headerAboveLinks.jsp"%>
<%@ include file="/WEB-INF/views/special/orderCompleteLinks.jsp"%>
<%@ include file="/WEB-INF/views/common/headerBelowLinks.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>






<!-- bodyWrap -->
<div id="bodyWrap">
	<!--title-->
	<h3 class="cnts_title">
		<span>주문완료</span>
	</h3>
	<div class="sub_container">
		<div class="order_title ">
			<p class="title">주문이 완료되었습니다.</p>
			<p class="s_title">주문번호 :${orderProduct[0].orders.id} (주문일시 : <fmt:formatDate value="${orderProduct[0].orderItem.orderByTime}" pattern="yyyy.MM.dd HH:MM"/>)</p>
			<p class="ss_title">
			<!-- 계좌 남은 시간 -->	
				<span class="guide_comment">입금 가상계좌로 결제 금액을 
				${timeP} 까지 입금하셔야 주문이 완료됩니다.</span> (입금하지 않으시면 주문이 취소됩니다.)
			</p>
		</div>

		<div class="tblwrap">
			<table class="tbl_ltype ">
				<caption>쇼핑백</caption>
				<colgroup>
					<col>
					<col style="width: 85px">
					<col style="width: 105px">
				</colgroup>
				<thead>
					<tr>
						<th scope="col">상품정보</th>
						<th scope="col">수량</th>
						<th scope="col">판매가</th>
					</tr>
				</thead>
				<tbody>
				<!-- 상품정보 -->
			<c:forEach var="ordercomplete" items="${orderProduct}">
					<tr class="al_middle">
						<td class="frt">
							<!-- 옷 정보 -->
							<div class="pt_list_all">
								<a href="${ordercomplete.productCommon.id}">
									<img src="${ordercomplete.productColor.img1}" alt="">
								</a>
								<div class="tlt_wrap">
									<a href="${ordercomplete.productCommon.id}"
										class="basket_tlt"> 
										<span class="tlt">${ordercomplete.brand.name}</span>
										<span class="sb_tlt">${ordercomplete.productCommon.name}</span>
									</a>
									<p class="color_op">
										color : ${ordercomplete.productColor.colorCode}<span class="and_line">/</span> size : ${ordercomplete.productStock.sizeCode}
									</p>
								</div>
							</div> 
						</td>
						<td>${ordercomplete.orderItem.count}</td>
						<td>
							<!-- 판매가 -->
							<div class="price_wrap">
								<span> ₩ <fmt:formatNumber type="number" maxFractionDigits="3" value="${ordercomplete.orderItem.totalPrice}"/></span>
							</div> 
						</td>
					</tr>
				 </c:forEach>
				</tbody>
			</table>
		</div>

		<!--상품 합계-->
		<div class="total_wrap order">
			 <div class="total_price_wrap">
				<dl>
					<dt >상품 합계</dt>
					<dd > 
					<span> ₩ <fmt:formatNumber type="number" maxFractionDigits="3" value="${bfdcprice}"/></dd></span>
					<dt >한섬 마일리지</dt>
					<dd > 
					<span> -₩ <fmt:formatNumber type="number" maxFractionDigits="3" value="${mileage}"/></span></dd>
				</dl>

		
				<dl class="total">
					<dt >합계</dt>
					<dd >
					<span> ₩ <fmt:formatNumber type="number" maxFractionDigits="3" value="${afdcprice}"/></span></dd>
				</dl>
			</div>
		</div> 
	

		<!-- 결제 수단 -->
		<div class="title_wrap clearfix">
			<h4 class="float_left">결제수단</h4>
		</div>
		<div class="tblwrap mb40">
			<table class="tbl_wtype1">
				<caption>결제수단</caption>
				<colgroup>
					<col style="width: 140px">
					<col>
				</colgroup>
				<c:if test="${fn:substring(orderpayment[0].orders.paymentMethodCode,0,1) == '0'}">
					<tbody>
						<tr>
							<th scope="row" class="th_space">카드</th>
							<td>
							${orderpayment[0].paymentMethod.company}카드
							${orderpayment[0].orders.paymentInfo}
							</td>
						</tr>
					</tbody>
				</c:if>
				<c:if test="${fn:substring(orderpayment[0].orders.paymentMethodCode,0,1) == '1'}">
					<tbody>
						<tr>
							<th scope="row" class="th_space">가상계좌</th>
							<td>
							${orderpayment[0].paymentMethod.company}은행
							${orderpayment[0].orders.paymentInfo}
							</td>
						</tr>
						<tr>
							<th scope="row" class="th_space">입금 예정기한</th>
							<td>${timeP}까지 입금</td>
						</tr>
					</tbody>
				</c:if>
			</table>
		</div>
		
		<!-- 주문자 정보-->
		<div class="title_wrap clearfix">
			<h4 class="float_left">주문자 정보</h4>
		</div>
		<div class="tblwrap mb40">
			<table class="tbl_wtype1">
				<caption>결제수단</caption>
				<colgroup>
					<col style="width: 140px">
					<col>
				</colgroup>
				<tbody>
					<tr>
						<th scope="row" class="th_space">주문자</th>
						<td>${member.name}</td>
					</tr>
					<tr>
						<c:set var="TextValue" value="${member.phone}" />
						<th scope="row" class="th_space">휴대폰</th>
						<td>
							${fn:substring(TextValue,0,3) } 
							${fn:substring(TextValue,3,7) }
							${fn:substring(TextValue,7,11) }
						</td>
					</tr>
					<tr>
						<th scope="row" class="th_space">E-MAIL</th>
						<td>${member.email}</td>
					</tr>
				</tbody>
			</table>
		</div>


		<!--배송지 정보-->
		<div class="title_wrap clearfix">
			<h4 class="float_left">배송지 정보</h4>
		</div>
		<div class="tblwrap">
			<table class="tbl_wtype1 ">
				<caption>배송지 정보</caption>
				<colgroup>
					<col style="width: 140px">
					<col>
				</colgroup>
				<tbody>
					<tr>
						<th scope="row" class="th_space">배송지 주소</th>
						<td>${orderaddress[0].orders.zipcode}
							${orderaddress[0].orders.address}
						</td>
					</tr>
					<tr>
						<th scope="row" class="th_space">수령인</th>
						<td>${orderaddress[0].orders.receiver}</td>
					</tr>
					<tr>
						<c:set var="TextValue" value="${orderaddress[0].orders.phone}" />
						<th scope="row" class="th_space">휴대폰</th>
						<td>
							${fn:substring(TextValue,0,3) } 
							${fn:substring(TextValue,3,7) }
							${fn:substring(TextValue,7,11) }	
						</td>
					</tr>
					<tr>
						<c:set var="TextValue" value="${orderaddress[0].orders.tel}" />
						<th scope="row" class="th_space">연락처</th>
						<td>
							${fn:substring(TextValue,0,3) } 
							${fn:substring(TextValue,3,7) }
							${fn:substring(TextValue,7,11) }
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		<!--주문내역조회, 쇼핑계속하기 버튼-->
		<div class="btnwrap order ">
			<a href="${pageContext.request.contextPath}/member/orderlist" onclick="myordersPage();"><input value="주문내역조회" class="btn wt" type="button"></a> 
			<a href="${pageContext.request.contextPath}/" onclick="continuePage();"><input value="쇼핑계속하기" class="btn gray mr0" type="button"></a>
		</div>
	</div>
</div>

<%@ include file="/WEB-INF/views/common/footer.jsp"%>