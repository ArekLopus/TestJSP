<jsp:directive.page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<title>JSTL types</title>
	</head>
	
	<jsp:useBean id="user" class="helper.User" scope="page" />
	<c:set target="${ user }" property="name" value="John" />
	<c:set target="${ user }" property="surname" value="Rambo" />
	
	
	
	<body>
		
		User: ${ user }
		
		<c:remove var="user"/>
		
		<br/>
		User after remove: ${ user }
		
	</body>
	
	<script>
				
	</script>
</html>