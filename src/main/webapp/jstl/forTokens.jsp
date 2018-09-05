<jsp:directive.page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" errorPage="errorPage.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Make Exception</title>
	</head>
	
	<body>
		
		<c:forTokens items = "One ,Two ,Three" delims = "," var = "name">
         	<c:out value = "${name}"/><p>
      	</c:forTokens>
		
		
	</body>
	
	<script>
		
	</script>
</html>