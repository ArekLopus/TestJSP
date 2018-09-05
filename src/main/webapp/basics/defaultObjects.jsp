<jsp:directive.page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isErrorPage="true" />
<!DOCTYPE html>
<html>
	<head>
		<title>Default Objects</title>
	</head>
	
	<body>
		
		<div style="white-space: pre;">
		<% 
			out.println("");
			out.println("Default objects to use in scriptlets");
			out.println("");
			out.println("out							- JspWriter			" + out);
			out.println("request						- HttpServletRequest 	" + request);
			out.println("response						- HttpServletResponse	" + response);
			out.println("session						- HttpSession 			" + session);
			out.println("application 					- ServletContext 		" + application);
			out.println("config						- ServletConfig 		" + config);
			out.println("exception (isErrorPage=true)		- JspException 		" + exception);
			out.println("pageContext					- PageContext			" + pageContext);
			out.println("page (synonim for this)			- Object  				" + page);
		%>
		</div>
		
	</body>
	
	
	<script>
			
		//Default objects
			
		//JspWriter				- out
		//HttpServletRequest	- request
		//HttpServletResponse	- response
		//HttpSession			- session
		//ServletContext		- application
		//ServletConfig			- config
		//JspException			- exception
		//PageContext			- pageContext
		//Object				- page (a synonym for this, , used to call the methods defined by the translated servlet class.)
			
	</script>
	
</html>