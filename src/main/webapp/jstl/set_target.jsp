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
		
	</body>
	
	<script>
		//jsp:setProperty like. two versions:	var - to set attr variables		target - to set props of components or maps
		//Body and no body versions are exactly the same.
		
		//target must be real object (object or map)!
		
	</script>
</html>