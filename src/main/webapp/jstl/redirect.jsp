<jsp:directive.page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<title>JSTL types</title>
	</head>
	
	<body>
		
		
		<c:redirect url="../include/headerWithParam.jsp">
			<c:param name="myParam" value="This is my param"></c:param>
		</c:redirect>
		
		
		
		<%-- <c:redirect url = "http://www.google.com"/> --%>
		
		
	</body>
	
	<script>
		//Redirects the browser to an alternate URL using automatic URL rewriting,
		//Supports context-relative URLs and the <c :param> tag.

	</script>
</html>