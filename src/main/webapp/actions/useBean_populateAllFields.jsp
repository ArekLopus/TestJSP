<jsp:directive.page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
<jsp:directive.page import="helper.*" />
<!DOCTYPE html>
<html>
	<head>
		<title>Populate All Fields Using '*'</title>
	</head>
	
	<body>
		
		<jsp:scriptlet>
			User u1 = new User("Jenna", "McRoe");
			pageContext.setAttribute("user", u1);
		</jsp:scriptlet>
		
		
		<jsp:useBean id="user" class="helper.User" scope="page">
			<jsp:setProperty name = "user" property = "*" />
		</jsp:useBean>
		
		
		${ user.name }
		${ user.surname }
		<br/>
		<br/>
		<jsp:getProperty name="user" property="name"/>
		<jsp:getProperty name="user" property="surname"/>
		
	</body>
	
	<script>
		//-If we have an attribute name declared in any scope or sent by form,
		// we can use property="*" to auto fill all fields of a bean declared by jsp:useBean.		
	</script>
</html>