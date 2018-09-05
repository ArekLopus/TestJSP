<jsp:directive.page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
<!DOCTYPE html>
<html>
	<head>
		<title>Forwarding</title>
	</head>
	
	<body>
		Hello!
		
		<%	if(request.getParameter("user") == null ) {	%>
				<jsp:forward page="login.jsp"></jsp:forward>
		<% } %>
		
		<br/>
		Welcome back ${ param.user }	
	</body>
	
	<script>
		
	</script>
</html>