<jsp:directive.page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
<jsp:directive.page import="helper.*" />
<!DOCTYPE html>
<html>
	<head>
		<title>useBean's type tribute</title>
	</head>
	
	<body>
		
		<jsp:scriptlet>
			Person p1 = new Person("Jenna", "McRoe");
			pageContext.setAttribute("user", p1);
		</jsp:scriptlet>
		
		
		<jsp:useBean id="user" type="helper.User" class="helper.Person" scope="page">
			<jsp:setProperty name = "user" property = "*" />
		</jsp:useBean>
		
		
		${ user.name } 	${ user.surname }
		<br/><br/>
		<jsp:getProperty name="user" property="name"/>
		<jsp:getProperty name="user" property="surname"/>
		<br/><br/>
		${ user }
	</body>
	
	<script>
		// type == type of reference, class == type of object
		//-type attribute is ised to tell what reference type is - superclass, abstract class, interface
		//-If you use type attr WITHOUT class attr, the component MUST ALREADY EXISTS! (otherwise InstantationException)
		//-From tomcats servlet class:
		//	if (user == null){
        //		user = new helper.Person();
        //		_jspx_page_context.setAttribute("user", user, javax.servlet.jsp.PageContext.PAGE_SCOPE);

	</script>
</html>