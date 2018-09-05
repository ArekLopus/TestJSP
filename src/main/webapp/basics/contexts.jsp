<jsp:directive.page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
<!DOCTYPE html>
<html>
	<head>
		<title>Contexts</title>
	</head>
	
	<body>
		
		<h3>Contexts</h3>
		
	</body>
	
	<script>
		//					Servlet									JSP
		//request			request.setAttribute					request.setAttribute
		//session			request.getSession().setAttribute		session.setAttribute
		//application		getServletContext().setAttribute		application.setAttribute
		//page				-										pageContext.setAttribute
		
		//-pageContext can be used to access any context attributes!
		//	pageContext.findAttribute(name)	- Searches for the named attribute in page, request, session (if valid),
		//									  and application scope(s) in order and returns the value associated or null.
		//  pageContext.get/setAttribute have version with int paramter to set scope (fe: PageContext.APPLICATION_SCOPE)
	</script>
	
</html>