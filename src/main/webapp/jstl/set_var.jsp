<jsp:directive.page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<title>JSTL types</title>
	</head>
	
	<c:set var="option" scope="request" value="first" />
	<c:set var="option" scope="request" >
		second
	</c:set>
	
	<body>
		
		<c:choose>
			<c:when test="${ option == 'first' }">
				First Option
			</c:when>
			<c:when test="${ option == 'second' }">
				Second Option
			</c:when>
			<c:otherwise>
				No Right Option Selected
			</c:otherwise>
		</c:choose>
		
	</body>
	
	<script>
		//jsp:setProperty like. two versions:	var - to set attr variables		target - to set props of components or maps
		//Body and no body versions are exactly the same.
	</script>
</html>