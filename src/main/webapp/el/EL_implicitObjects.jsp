<jsp:directive.page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
<jsp:directive.page import="helper.*" />
<!DOCTYPE html>
<html>
	<head>
		<title>atribute as first element of $ {}</title>
	</head>
	<jsp:scriptlet>
		Person p1 = new Person("Jane", "Doe");
			
		request.setAttribute("user1", p1);
		session.setAttribute("user2", p1);
		application.setAttribute("user3", p1);
		pageContext.setAttribute("user4", p1);

	</jsp:scriptlet>
	<body>
		
		Request scope: ${ user1.name }
		<br/>
		Session scope: ${ user2.name }  
		<br/>
		Application scope: ${ user3.name }
		<br/>
		Page scope: ${ user4.name }
		<br/><br/>
		Param 'name': ${ param.name }
		<br/>
		ParamValues 'name': ${ paramValues.name[0] } ${ paramValues.name[1] }
		<br/><br/>
		header 'user-agen': ${ header["user-agent"] }
		<br/>
		headerValues 'host': ${ headerValues.host[0] }
		<br/><br/>
		cookie (cookie - all cookies): ${ cookie }
		<br/>
		cookie (cookie.JSESSIONID.value): ${ cookie.JSESSIONID.value }
		<br/><br/>
		initParam 'abc' (context/application NOT servlet init param): ${ initParam.abc }
		<br/><br/>
		PageContext (object, not a map): ${ pageContext }
		<br/><br/>
		PageContext (pageContext.request.method) : ${ pageContext.request.method }
		<br/>
		DefaultName: <%= getServletConfig().getInitParameter("defaultName") %>
		<br/>
		PageContext (pageContext.request.method) : ${ pageContext.servletConfig.initParameterNames }
	</body>
	
	
	<script>
		//http://localhost:8080/TestJSP/el/EL_implicitObjects.jsp?name=Jane&name=Mary
		//-Before EL evolved, the same purpose was achieved by using scriptlets < %=  %>
		//-The primary purpose of using this syntax is to avoid scriptlets in jsp.
		//-Those are not the same as scriptlet default objects!
		// Except pageContext they are just MAPS of attributes
		
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