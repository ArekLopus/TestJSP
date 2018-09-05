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
		
		<c:out value="Abc"/>
		<br/>
		<c:out value="${ registered }"/>
		
		
	</body>
	
	<script>
		//This is lile < %= %>.
		//But <c :out> lets you use the "." notation to access properties.
	</script>
</html>