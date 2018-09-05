<jsp:directive.page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Simple Expression Language</title>
	</head>
	
	<jsp:scriptlet>
		getServletContext().setAttribute("abc", "def");
	</jsp:scriptlet>
	
	<body>
		
		Name: <%= application.getAttribute("abc") %>
		<br/>
		Name: ${ applicationScope.abc }
		<br/>
		Name: <%= getServletContext().getInitParameter("abc") %>
		<br/>
		Name: ${ initParam.abc }
		
		
		<script>
			
		</script>
	</body>
</html>