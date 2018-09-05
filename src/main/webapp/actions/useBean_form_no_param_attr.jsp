<jsp:directive.page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
<jsp:directive.page import="helper.*" />
<!DOCTYPE html>
<html>
	<head>
		<title>useBean's auto fill</title>
	</head>
	
	<body>
		
		<jsp:useBean id="user" class="helper.User" scope="page">
			<jsp:setProperty name = "user" property = "*" />
		</jsp:useBean>
		
		<br/>Auto filled User: ${user}
		<br/>Name: ${user.name}
		<br/>Surname: ${user.surname}
		<br/>City: ${user.city}
		<br/>Phone: ${user.phone}

	</body>
	
	<script>
		//	form/useBeanAutoFillForm.html		- form payload are just name-value pairs like request params  
		//	http://localhost:8080/TestJSP/actions/useBean_form_no_param_attr.jsp?name=John&surname=Rambo
		//-When the name attribute of a input field matches a property name of a bean we can use auto fill using
		//	property = "*"
	</script>
</html>