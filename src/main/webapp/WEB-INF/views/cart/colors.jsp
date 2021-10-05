<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 기존 코드 백업 --%>
<%-- <a href="javascript:void(0);" onclick="setOptions(this, '4', 'CM2B9WOT400W_SW', 'style');" class="beige on"
	style="background: #362626 url('${color.colorImg}')">${color.colorCode}</a> --%>
<c:forEach var="color" items="${colors}">
<a href="javascript:void(0);" onclick="set_color(this);"
	style="background: #362626 url('${color.colorImg}')">${color.colorCode}</a>
</c:forEach>