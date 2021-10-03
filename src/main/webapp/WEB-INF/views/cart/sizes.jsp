<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:forEach var="size" items="${sizes}">
<a href="javascript:void(0);" onclick="setOptions(this, '4', 'CM2B9WOT400W_SW_82', 'size');" 
	class="on" style="line-height: 15px;">${size.sizeCode}</a>
</c:forEach>