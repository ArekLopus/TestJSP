<jsp:directive.page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
<jsp:directive.page import="helper.*" />
<!DOCTYPE html>
<html>
	<head>
		<title>useBean's param atribute</title>
	</head>
	
	<body>
		
		<jsp:useBean id="user" class="helper.User" scope="page">
			<jsp:setProperty name = "user" property = "name" param = "n" />
			<jsp:setProperty name = "user" property = "surname" param = "s" />
			<jsp:setProperty name = "user" property = "phone" param = "p" />
			<jsp:setProperty name = "user" property = "city" param = "c" />
		</jsp:useBean>
		
		<br/>Params filled User: ${user}
		<br/>Name: ${user.name}
		<br/>Surname: ${user.surname}
		<br/>City: ${user.city}
		<br/>Phone: ${user.phone}
		
	</body>
	
	<script>
		//	form/useBeanParamJsp.html		- form payload are just name-value pairs like request params  
		//	http://localhost:8080/TestJSP/actions/useBean_form_param_attr.jsp?n=John&s=Rambo
		//-When the name attribute of a input field is different than a property name of a bean we can use param attribute
		//	property = "name" param="n"
	</script>
</html>