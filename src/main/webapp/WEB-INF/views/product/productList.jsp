<%@ page contentType="text/html; charset=UTF-8" %>

<%@ include file="/WEB-INF/views/common/headerAboveLinks.jsp"%>
<%@ include file="/WEB-INF/views/special/homeLinks.jsp"%>
<%@ include file="/WEB-INF/views/common/headerBelowLinks.jsp"%>
<div id=bodyWrap>
	<section class="py-5">
		<div class="container px-4 px-lg-5 mt-5">
			<div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">

				<%-- 여기부터 반복시작--%>
				<c:forEach var="product" items="${products}">
					<!-- 클릭시 이동할 url 넣는부분-->
<%-- 					<div class="col mb-5" OnClick="location.href='${pageContext.request.contextPath}/event/detail'"> --%>
					<div class="col mb-5" style="cursor: pointer;" onclick="location.href='${product.category.depth1Name}/${product.category.depth2Name}/${product.category.depth3Name}/${product.productColor.id}'">
						<div class="card h-100 border-0">
							<!-- Product image-->
							<img class="card-img-top lazy" src="${product.productColor.img1}" alt="..."/>
							<!-- Product details-->
							<div class="card-body p-4">
								<div class="text-center">
									<!-- 브랜드 명-->
									<p>
									<div class="fw-bolder mb-1 brand_name">${product.brand.name}</div>
									</p>
									<!-- 상품명-->
									<p>
									<div class="fw-bolder mb-1 name">${product.productCommon.name}</div>
									</p>
									<!-- 가격-->
									<p>
									<div class="fw-bolder mb-1 price">${product.productColor.price}</div>
									</p>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
				<%-- 여기까지 반복끝--%>
			</div>
		</div>
	</section>

	<%-- 페이징 처리 부분--%>
	<div class="row-vw d-flex">
		<div class="mx-auto">
			<c:set var="urlcontainer" value="${pageContext.request.contextPath}/product/${str}" />

			<a class="btn btn-outline-primary btn-sm" href="${urlcontainer}?pageNo=1">처음</a>
			<c:if test="${pager.groupNo>1}">
				<a class="btn btn-outline-info btn-sm" href="${urlcontainer}?pageNo=${pager.startPageNo-1}">이전</a>
			</c:if>
			<c:forEach var="i" begin="${pager.startPageNo}" end="${pager.endPageNo}">
				<c:if test="${pager.pageNo !=i}">
					<a class="btn btn-outline-success btn-sm" href="${urlcontainer}?pageNo=${i}">${i}</a>
				</c:if>
				<c:if test="${pager.pageNo ==i}">
					<a class="btn btn-danger btn-sm" href="${urlcontainer}?pageNo=${i}">${i}</a>
				</c:if>
			</c:forEach>

			<c:if test="${pager.groupNo<pager.totalGroupNo}">
				<a class="btn btn-outline-info btn-sm" href="${urlcontainer}?pageNo=${pager.endPageNo+1}">다음</a>
			</c:if>
			<a class="btn btn-outline-primary btn-sm" href="${urlcontainer}?pageNo=${pager.totalPageNo}">맨끝</a>
		</div>
	</div>


</div>
<%@ include file="/WEB-INF/views/common/footer.jsp"%>
