<jsp:directive.page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<title>JSTL types</title>
	</head>
	
	<jsp:scriptlet>
		//String option = "first";
		//String option = "second";
		String option = "third";
		request.setAttribute("option", option);
	</jsp:scriptlet>
	
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
		
	</script>
</html>