<jsp:directive.page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
<!DOCTYPE html>
<html>
	<head>
		<title>Declared variable is local</title>
	</head>
	
	<body>
		<%
			int i = 0;
		%>
		
		Counter: <%= ++ i %>
	</body>
	
	<script>
		//-Declared variables are part of the request method, so they are local.
		//-Use < %! %> or <jsp :declaration> to declare class properties and methods.
	</script>
	
</html>