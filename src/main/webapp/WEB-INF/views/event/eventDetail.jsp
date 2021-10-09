<%@ page contentType="text/html; charset=UTF-8" %>

<%@ include file="/WEB-INF/views/common/headerAboveLinks.jsp"%>
<%@ include file="/WEB-INF/views/special/eventDetailLinks.jsp"%>
<%@ include file="/WEB-INF/views/common/headerBelowLinks.jsp"%>



<div id="bodyWrap" class="products">
	<!--title-->
	<h3 class="cnts_title">
		<span> 이벤트 </span>
	</h3>
	<!--//title-->
	<div class="sub_container">
		<div class="mgz_view">
			<div class="evt_top">
				<p class="subj">${title}</p>
				<p class="date">${issueDate}</p>
			</div>
			<div class="evt_cnts">
				<div class="pic">
					<div class="event-pc-outerweek-2021-09-17">
						<img src="http://cdn.thehandsome.com/pc/event/detail/image/handsome_202109/event_outerweek_pc_img_01_01.gif" alt="">
						<img src="http://cdn.thehandsome.com/pc/event/detail/image/handsome_202109/event_outerweek_pc_img_01_02.jpg" alt="">
						
						<div class="event_button" id="event_button" onclick="couponDown()">
        					<span style="color:white" class="event_couponbutton">쿠폰 받기</span>
 						</div>
 						<div style="display:none;">
 							<form id="eventform" action="/event/coupondownload" method="post">
 								<input type="hidden" name="eventNo" value="${eventNo}"></input>
 							</form>
 						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script>
	function couponDown(){
		/* 버튼을 한번 클릭하면 onclick속성 삭제 */
		$("#event_button").removeAttr("onclick");
		/* eventNo를 controller로 넘기기 위한 부분 */
		/* form submit */
		$("#eventform").submit();
	}
</script>


<%@ include file="/WEB-INF/views/common/footer.jsp" %>
