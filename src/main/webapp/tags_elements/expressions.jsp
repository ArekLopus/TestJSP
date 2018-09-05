<jsp:directive.page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
<jsp:directive.page import="helper.*, java.util.*" />
<!DOCTYPE html>
<html>
	<head>
		<title>Expressions</title>
	</head>
	
	<body>
		<% 
			User u1 = new User("John", "Doe");
			User u2 = new User("Jane", "Doe");
			List<User> list = new ArrayList<>();
			list.add(u1);
			list.add(u2);
		%>
		
		Evaluates Java code to String and puts it as an argument to out.println(): <%= u1 %>
		<br/>
		
		Evaluates Java code to String and puts it as an argument to out.println(), list size:
		
		<!-- XML equivalent -->
		<jsp:expression>
			list.stream().count()	
		</jsp:expression>
		
		
	</body>
	
	
	<script>
		
		//-Evaluates Java code to String. NO SEMICOLON! This is just an argument to out.println()
		//- < %= u1 %> is converted to out.println(u1); 
		
	</script>
	
</html>