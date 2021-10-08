<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/views/common/headerAboveLinks.jsp"%>
<%@ include file="/WEB-INF/views/special/orderCancellationLinks.jsp"%>
<%@ include file="/WEB-INF/views/common/headerBelowLinks.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
							<a href="${pageContext.request.contextPath}/member/orderlist">주문/취소</a>
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
						<strong>주문번호 : </strong> <span id="orderNumber">${orderProduct[0].orders.id}</span>
					</div>
					<div class="order_date">
						주문일시 : <span id="orderDate">2021.10.07. 02:25</span>
					</div>
				</div>
				<div class="title_wrap mt50">
					<h4>주문상품</h4>
				</div>
  			</div>

				<div class="tblwrap">
					<table id="egiftTable" class="tbl_ltype">
						<caption>주문상품 목록</caption>
						<colgroup>
							<col style="width: 10px">
							<col>
							<col style="width: 120px">
							<col style="width: 110px">
							<col style="width: 110px">
						</colgroup>
						<thead>
							<tr>
								<th scope="col"><input type="checkbox" title="선택" value=""
									name="allcheck" style="display: none;"></th>
								<th scope="col">상품정보</th>
								<th scope="col">수량</th>
								<th scope="col">판매가</th>
								<th scope="col">주문선택</th>
							</tr>
						</thead>
						<c:forEach var="ordercancellation" items="${orderProduct}">
		<!-- 주문상품 정보들 시작 -->
						<tbody id="orderEntries">
							<tr class="entryRows">
								<td class="frt"><input type="checkbox" title="선택" value=""
									name="checkpd" style="display: none;" checked=""></td>
								<td class="pt_list_wrap">
									<!-- 상품 이미지 -->
									<div class="pt_list_all">
										<a href="/ko/p/MN2B9WJC649W_BG_82">
										<img src="${ordercancellation.productColor.img1}" alt="상품 이미지"></a>
										<div class="tlt_wrap">
											<a href="/ko/p/MN2B9WJC649W_BG_82" class="basket_tlt">
											 <span class="tlt">${ordercancellation.brand.name}</span> <span class="sb_tlt">${ordercancellation.productCommon.name}</span>
											</a>
											<p class="color_op">
												color : ${ordercancellation.productColor.colorCode}  <span class="and_line">/</span> size : ${ordercancellation.productStock.sizeCode}
											</p>
											<div class="option_wrap">&nbsp;</div>
										</div>
									</div> 
								</td>
			<!-- 수량 -->
								<td class="al_middle">
									<!-- qty_sel --> <span class="qty_sel num"> ${ordercancellation.orderItem.count} </span> <!-- //qty_sel -->
								</td>
								<td class="al_middle">
									<!-- Price -->
									<div class="price_wrap">
				<!-- 금액 -->				<span>￦${ordercancellation.orders.afterDcPrice}</span>
									</div> 
								</td>
	<!-- 시간설정 -->	             <td class="al_middle">
									<p class="num">입금대기</p> <span class="sum_date">(2021-10-07)</span>
								</td>
							</tr>
						</tbody>
						</c:forEach>
					</table>
				</div>
				<!-- //Table -->

				<div class="title_wrap mt50 clearfix atHomeDisabled">
					<h4 class="float_left">환불 예상금액 확인</h4>
					<div class="btn_wrap"></div>
					<!-- Table -->
					<div class="tblwrap atHomeDisabled">
						<table class="tbl_wtype1 mt10">
							<colgroup>
								<col style="width: 23%">
								<col>
							</colgroup>
							
							<tbody>
								<tr>
									<th scope="row">주 결제수단 환불</th>
									<td><em class="vBl" id="oname"
										style="vertical-align: baseline;">우체국</em> <em class="vBl"
										id="cnum" style="vertical-align: baseline;"></em></td>
								</tr>
								<tr>
									<th scope="row">금액</th>
									<td>
										<span>₩${orderProduct[0].orders.beforeDcPrice}</span>
										</td>
								</tr>
								<tr>
									<th scope="row">기타 환급</th>
									<td>
										<ul class="bul_sty01_li">
											<li>
											<span>${orderProduct[0].mileage.amount}M</span>
											</li>
										</ul>
									</td>
								</tr>
							</tbody>
							
						</table>
					</div>
					<!-- //Table -->
					<div class="btnwrap mypage1">
						<input type="button" value="이전 페이지로" id="returnCancleBtn"
							class="btn wt"> <input type="button" value="선택상품주문취소"
							id="tblbutton" onclick="removeCheck()" ;  class="btn gray mr0">

					</div>
					<!-- Guide Table -->
					<div class="gd_wrap mt50">
						<dl class="gd_list com pl0">
							<dt>증빙서류출력 안내</dt>
							<dd>
								<strong>주문취소 안내</strong>
								<ul class="bul_sty01_li mb26">
									<li>상품취소는 상품이 상품 발송 이전까지 가능합니다.</li>
									<li>주문 취소 내역은 마이페이지&gt;주문/배송 조회&gt;상세보기에서 확인 하실 수 있습니다.</li>
								</ul>
								<strong>주문 취소 처리</strong>
								<ul class="bul_sty01_li">
									<li>카드결제 취소: 카드 결제는 카드사로 즉시 취소 요청을 합니다. <br>(단 카드사에서
										승인 취소 처리를 하는데 2-3일이 소요 될 수 있습니다.)
									</li>
									<li>실시간 계좌 이체: 결제를 진행하신 계좌로 환불 처리 됩니다.</li>
									<li>가상계좌: 등록하신 환불 계좌로 2-3일내 입금처리 됩니다.<br></li>
									<li>한섬마일리지: 주문 취소 후 즉시 복원 됩니다.</li>
									<li>기프트 카드 : 주문 취소 후 포인트로 복원 되며, 복원 비율은 1:1 입니다.</li>
									<li>쿠폰/프로모션 코드: 주문 취소 후 즉시 복원 됩니다. 단 부분 주문 취소 시에는 복원 되지
										않습니다.</li>
								</ul>
							</dd>

						</dl>
					</div>
					<!-- //Guide Table -->
				</div>
				<!-- //cnts -->
			</div>
		</div>
</body>
<script>
	function removeCheck() {

		if (confirm("정말 취소하시겠습니까??") == true) { //확인

			document.removefrm.submit();

		} else { //취소

			return false;
		}
	}
</script>

<%@ include file="/WEB-INF/views/common/footer.jsp"%>