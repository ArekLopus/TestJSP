<jsp:directive.page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
<!DOCTYPE html>
<html>
	<head>
		<title>Comments</title>
	</head>
	
	<body>
		
		<!-- This is HTML comment -->
		<%-- This is JSP comment --%>
		
		Variable i = 
		<%
			int i = 123;
			out.println(i);
		%>
		
	</body>
	
	<script>
		
	</script>
	
</html>