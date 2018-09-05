<jsp:directive.page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
<!DOCTYPE html>
<html>
	<head>
		<title>Scriptlets</title>
	</head>
	
	<body>
		<!-- Just normal Java code -->
		<% 
			out.println("This is a scriptlet, out.class -> "+out.getClass());
		%>
		<br/>
		
		
		<!-- XML equivalent -->
		<jsp:scriptlet>
			String name = application.getInitParameter("defaultName");
			out.println("Default name: "+name);
		</jsp:scriptlet>
		
	</body>
	
	
	<script>
			
		//Default objects
			
		//out 					- JspWriter
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