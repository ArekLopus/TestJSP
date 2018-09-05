<jsp:directive.page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
<!DOCTYPE html>
<html>
	<head>
		<title>EL Implicit Objects</title>
	</head>
	
	<body>
		
		
	</body>
	
	
	<script>
		//-Before EL evolved, the same purpose was achieved by using scriptlets < %=  %>
		//-The primary purpose of using this syntax is to avoid scriptlets in jsp.
		//-Those are not the same as scriptlet default objects!
		// Except pageContext they are just maps of attributes
		
		//JSP EL Implicit Objects
		// pageScope		- Scoped variables from page scope
		// requestScope		- Scoped variables from request scope
		// sessionScope 	- Scoped variables from session scope
		// applicationScope	- Scoped variables from application scope	(Those 4 are ATTRIBUTES! - no init/contex params) 
		
		// param			- Request parameters as strings
		// paramValues		- Request parameters as collections of strings
		// header			- HTTP request headers as strings
		// headerValues		- HTTP request headers as collections of strings
		// initParam 		- CONTEXT-initialization parameters
		// cookie			- Cookie values
		// pageContext		- The JSP PageContext object for the current page
		
	</script>
	
</html>