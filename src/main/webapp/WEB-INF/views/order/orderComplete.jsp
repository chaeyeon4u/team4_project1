<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="/WEB-INF/views/common/headerAboveLinks.jsp"%>
<%@ include file="/WEB-INF/views/special/orderCompleteLinks.jsp"%>
<%@ include file="/WEB-INF/views/common/headerBelowLinks.jsp"%>

<!-- bodyWrap -->
<div id="bodyWrap">
	<!--title-->
	<h3 class="cnts_title">
		<span>주문완료</span>
	</h3>
	<div class="sub_container">
		<div class="order_title ">
			<p class="title">주문이 완료되었습니다.</p>
			<p class="s_title">주문번호 : 210929P10860841 (주문일시 : 0000.00.00 00:00)</p>
			<p class="ss_title">
				<span class="guide_comment">입금 가상계좌로 결제 금액을 0000.00.00 00시 00분 까지 입금하셔야 주문이 완료됩니다.</span> (입금하지 않으시면 주문이 취소됩니다.)
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
								<a href="/ko/HANDSOME/WOMEN/OUTER/JACKET/%EB%A9%9C%EB%9E%80%EC%A7%80-%ED%81%AC%EB%A1%AD-%EC%9E%AC%ED%82%B7/p/MN2B9WJC649W_BG_82">
									<img src="${ordercomplete.productColor.img1}" alt="">
								</a>
								<div class="tlt_wrap">
									<a href="/ko/HANDSOME/WOMEN/OUTER/JACKET/%EB%A9%9C%EB%9E%80%EC%A7%80-%ED%81%AC%EB%A1%AD-%EC%9E%AC%ED%82%B7/p/MN2B9WJC649W_BG_82"
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
								<span>₩${ordercomplete.orderItem.totalPrice}</span>
							</div> 
						</td>
					</tr>
				 </c:forEach>
				</tbody>
			</table>
		</div>

		<!--상품 합계-->
		<div class="total_wrap mb40">
			<div class="total_price_wrap">
				<dl>
					<dt>상품 합계</dt>
					<dd>₩${orderProduct[0].orders.afterDcPrice}</dd>
					<div>
						<dt class="delch_wrap">
							<p class="tlt_ship" style="display: inline;">배송비</p>
						</dt>
						<dd style="text-align: right;">₩ 0</dd>
					</div>
				</dl>

		
				<dl class="total">
					<dt>합계</dt>
					<dd>₩${orderProduct[0].orders.afterDcPrice}</dd>
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
				<tbody>
					<tr>
						<th scope="row" class="th_space">가상계좌</th>
						<td>${orderpayment.paymentMethod.company}(20894379679237)</td>
					</tr>
					<tr>
						<th scope="row" class="th_space">입금 예정기한</th>
						<td>0000.00.00 00시 00분 까지 입금</td>
					</tr>
				</tbody>
			</table>
		</div>

		<!--한섬 마일리지-->
		<div class="title_wrap clearfix">
			<h4 class="float_left">한섬마일리지</h4>
			<p class="reqd_txt float_right">(배송 완료 시점을 기준으로 10일 후 지급됩니다.)</p>
		</div>
		<div class="tblwrap mb40">
			<table class="tbl_wtype1">
				<caption>한섬마일리지</caption>
				<colgroup>
					<col style="width: 300px">
					<col>
				</colgroup>
				<tbody>
					<tr>
						<th scope="row" class="th_space">지급 예정 한섬마일리지</th>
						<td>1,000,000 M</td>
						<th scope="row" class="th_space">지급 예정 H.Point</th>
						<td>1,000,000 P</td>
					</tr>
				</tbody>
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
						<td>${orderman.member.name}</td>
					</tr>
					<tr>
						<th scope="row" class="th_space">휴대폰</th>
						<td>${orderman.member.phone}</td>
					</tr>
					<tr>
						<th scope="row" class="th_space">E-MAIL</th>
						<td>${orderman.member.email}</td>
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
						<td>${orderaddress.orders.zipcode}(05717) 서울특별시 송파구 중대로 135(가락동)&nbsp;KOSA</td>
					</tr>
					<tr>
						<th scope="row" class="th_space">수령인</th>
						<td>${orderaddress.orders.receiver}</td>
					</tr>
					<tr>
						<th scope="row" class="th_space">휴대폰</th>
						<td>${orderaddress.orders.phone}</td>
					</tr>
					<tr>
						<th scope="row" class="th_space">연락처</th>
						<td>${orderaddress.orders.tel}</td>
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