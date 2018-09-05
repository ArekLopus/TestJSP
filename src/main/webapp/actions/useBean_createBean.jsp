<jsp:directive.page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
<!DOCTYPE html>
<html>
	<head>
		<title>Create a Bean</title>
	</head>
	
	<body>
		
		<jsp:useBean id="user" class="helper.User" scope="page" >
			<jsp:setProperty name="user" property="name" value="John"/>
			<jsp:setProperty name="user" property="surname" value="Rambo"/>
		</jsp:useBean>
		
		
		${ user.name }
		${ user.surname }
		<br/>
		<br/>
		<jsp:getProperty name="user" property="name"/>
		<jsp:getProperty name="user" property="surname"/>
		<br/>
		<br/>
		
		
	</body>
	
	<script>
		
	</script>
</html>