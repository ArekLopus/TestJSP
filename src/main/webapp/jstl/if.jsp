<jsp:directive.page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<title>JSTL types</title>
	</head>
	
	<jsp:scriptlet>
		Boolean registered = true;
		request.setAttribute("registered", registered);
	</jsp:scriptlet>
	
	<body>
		
		<c:if test="${1 >= 1}">
			<jsp:text>
				Yes! 1 equals 1
			</jsp:text>
		</c:if>
		
		<br/>
		
		<c:if test="${ registered eq true }">
			<jsp:text>
				Welcome back!
			</jsp:text>
		</c:if>
		
	</body>
	
	<script>
		
	</script>
</html>