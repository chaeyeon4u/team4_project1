<%@ page contentType="text/html; charset=UTF-8" %>

<%@ include file="/WEB-INF/views/common/headerAboveLinks.jsp"%>
<%@ include file="/WEB-INF/views/special/eventDetailLinks.jsp"%>
<%@ include file="/WEB-INF/views/common/headerBelowLinks.jsp"%>


<body oncontextmenu="return false">
	<!-- bodyWrap -->
	<div id="bodyWrap" class="products">
		<!--title-->
		<h3 class="cnts_title">
			<span> 이벤트 </span>
		</h3>
		<!--//title-->
		<div class="sub_container">
			<div class="mgz_view">
				<div class="evt_top">
					<p class="subj">더한섬닷컴 OUTER WEEK - 9월 마지막주 선착순 30% 할인쿠폰 이벤트</p>
					<p class="date">2021.09.30</p>
				</div>
				<div class="evt_cnts">
					<div class="pic">
						<!-- 1 -->

						<div class="event-pc-outerweek-2021-09-17">
							<img src="http://cdn.thehandsome.com/pc/event/detail/image/handsome_202109/event_outerweek_pc_img_01_01.gif" alt="">
							<img src="http://cdn.thehandsome.com/pc/event/detail/image/handsome_202109/event_outerweek_pc_img_01_02.jpg" alt="">
							<div class="event_button"  OnClick="location.href='${pageContext.request.contextPath}/'">
          					  <span style="color:white" class="event_couponbutton">쿠폰 받기</span>
  							</div>
						</div>
						<!-- //1 -->
					</div>
				</div>

			</div>
		</div>
	</div>
	<!-- //bodyWrap -->

</body>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
