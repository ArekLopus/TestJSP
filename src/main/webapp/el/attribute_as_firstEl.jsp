<jsp:directive.page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
<jsp:directive.page import="helper.*" />
<!DOCTYPE html>
<html>
	<head>
		<title>Attribute as first element of $ {}</title>
	</head>
	
	<body>
		
		<jsp:scriptlet>
			Person p1 = new Person("Jenna", "Doe");
			
			request.setAttribute("user1", p1);
			session.setAttribute("user2", p1);
			application.setAttribute("user3", p1);
			pageContext.setAttribute("user4", p1);

		</jsp:scriptlet>
		
		
		Request: ${ user1.name }
		<br/>
		Session: ${ user2.name }  
		<br/>
		Application: ${ user3.name }
		<br/>
		Page: ${ user4.name }
		
	</body>
	
	<script>
		//
	</script>
</html>