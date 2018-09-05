<jsp:directive.page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
<!DOCTYPE html>
<html>
	<head>
		<title>Action for Form Session scoped</title>
	</head>
	
	<body>
		
		<jsp:useBean id="user" class="helper.User" scope="session">
			<jsp:setProperty name = "user" property = "*" />
		</jsp:useBean>
		
		<br/>User: ${user}
		<br/>Name: ${user.name}
		<br/>Surname: ${user.surname}
		<br/>City: ${user.city}
		<br/>Phone: ${user.phone}
		
		
	</body>
</html>