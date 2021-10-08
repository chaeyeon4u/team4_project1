<%@ page contentType="text/html; charset=UTF-8" %>

<%@ include file="/WEB-INF/views/common/headerAboveLinks.jsp"%>
<%@ include file="/WEB-INF/views/special/homeLinks.jsp"%>
<%@ include file="/WEB-INF/views/common/headerBelowLinks.jsp"%>
<div id=bodyWrap>
<!-- 
header에 들어가는 부분
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <style>
  /* Make the image fully responsive */
  .carousel-inner img {
    width: 100%;
    height: 100%;
  }
  </style> -->



	<body>
		<div class="container mt-3">
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ul class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
				</ul>

				<!-- The slideshow -->
				<div class="carousel-inner" >
					<div class="carousel-item active">
						<a href="${pageContext.request.contextPath}/event/detail/1">
							<img src ="${pageContext.request.contextPath}/resources/images/bg1.jpg" width="100%" height="550vh"/>
						</a>
					</div>
					<div class="carousel-item">
						<a href="${pageContext.request.contextPath}/event/detail/2">
							<img src ="${pageContext.request.contextPath}/resources/images/bg2.jpg" width="100%" height="550vh"/>
						</a>
					</div>
					<div class="carousel-item">
						<a href="">
							<img src ="${pageContext.request.contextPath}/resources/images/bg3.jpg" width="100%" height="550vh"/>
						</a>
					</div>
				</div>

				<!-- Left and right controls -->
				<a class="carousel-control-prev" href="#myCarousel"
					data-slide="prev"> <span class="carousel-control-prev-icon"></span>
				</a> <a class="carousel-control-next" href="#myCarousel"
					data-slide="next"> <span class="carousel-control-next-icon"></span>
				</a>
			</div>
		</div>
	</body>

</div>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>
