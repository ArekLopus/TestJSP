<jsp:directive.page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
<!DOCTYPE html>
<html>
	<head>
		<title>Expression Language</title>
	</head>
	
	<body>
		
		<jsp:useBean id="user" class="helper.User" scope="request">
			<jsp:setProperty name = "user" property = "name" value = "John"/>
			<jsp:setProperty name = "user" property = "surname" value = "Doe"/>
		</jsp:useBean>
		
		<br/><%= user %>
		<br/><%= user.getName() %>
		<br/>
		<br/>User: ${user}
		<br/>User: ${user.name}
		<br/>User: ${user.surname}
		<br/>
		<jsp:text>
			Can use parentheses $ { (1+2)*3 }: ${ (1+2)*3 }
		</jsp:text>
		<br/>
		$ {pageContext.request.requestURI} : ${pageContext.request.requestURI}
		
		
		<script>
			//Before EL evolved, the same purpose was achieved by using scriptlets < %=  %>
			//The primary purpose of using this syntax is to avoid scriptlets in jsp.
			//JSP Specs 2.0 introduced Expression Language (EL) through which we can get attributes and parameters easily.
			
			//${firstElement.secondElement}	- first element -> implicit object OR attribute in any of 4 scopes (user above)
			
			//JSP EL Implicit Objects
			// pageScope		- Scoped variables from page scope
			// requestScope		- Scoped variables from request scope
			// sessionScope 	- Scoped variables from session scope
			// applicationScope	- Scoped variables from application scope
			// param			- Request parameters as strings
			// paramValues		- Request parameters as collections of strings
			// header			- HTTP request headers as strings
			// headerValues		- HTTP request headers as collections of strings
			// initParam 		- CONTEXT-initialization parameters
			// cookie			- Cookie values
			// pageContext		- The JSP PageContext object for the current page
		
		</script>
	</body>
</html>