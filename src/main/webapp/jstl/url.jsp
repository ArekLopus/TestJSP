<jsp:directive.page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<title>JSTL types</title>
	</head>
	
	<body>
		
		<c:url var="url" value="../include/headerWithParam.jsp">
			<c:param name="myParam" value="This is my param"></c:param>
			<c:param name=""></c:param>
		</c:url>
		<br/>
		<c:out value="${url}"/>
		<br/>
		<br/>
		<a href = "${url}">c:url test</a>
		
		
	</body>
	
	<script>
		//-url tag is just an alternative method to the response.encodeURL() method.
		//-The only real advantage the url tag provides is proper URL encoding,
		// including any parameters specified by children param tag.


	</script>
</html>