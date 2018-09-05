<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Directives</title>
	</head>
	
	<body>
		
		<%@ page import="helper.*, java.util.*" %>
		
		<br/>
		<% 
			User u1 = new User("John", "Doe");	
			List<User> list = new ArrayList<>();
			list.add(u1);
		
			out.println("User: "+u1);
			out.println("<br/>List size: " + list.size());
		%>
		
		<!-- XML equivalent below -->
		
	</body>
	
	
	<script>
		
		//-There are 3 directives: page, include, taglib.
		//-Directives can have their own attributes
		
		//-page attributes: 
		//	buffer - Specifies a buffering model for the output stream.
		//	autoFlush - Controls the behavior of the servlet output buffer.
		//	contentType - Defines the character encoding scheme.
		//	errorPage - Defines the URL of another JSP that reports on Java unchecked runtime exceptions.
		//	isErrorPage - Indicates if this JSP page is a URL specified by another JSP page's errorPage attribute (exception access).
		//	extends - Specifies a superclass that the generated servlet must extend.
		//	import - Specifies a list of packages or classes for use in the JSP as the Java import statement does for Java classes.
		//	info - Defines a string that can be accessed with the servlet's getServletInfo() method.
		//	isThreadSafe - Defines the threading model for the generated servlet.
		//	language - Defines the programming language used in the JSP page.
		//	session - Specifies whether or not the JSP page participates in HTTP sessions
		//	isELIgnored - Specifies whether or not the EL expression within the JSP page will be ignored.
		//	isScriptingEnabled - Determines if the scripting elements are allowed for use.
		
		//	XML equivalent	<jsp:directive.page> 
		
	
		//-include directive is used to include a file during the translation phase. This directive tells the container
		// to merge the content of other external files with the current JSP during the translation phase.
		//-You may code the include directives anywhere in your JSP page.
		//-The general usage form of this directive is as follows −
		//	< %@ include file = "relative url" >
		//-The filename in the include directive is actually a relative URL. If you just specify a filename with no associated path,
		// the JSP compiler assumes that the file is in the same directory as your JSP.
		//		< %@ include file = "header.jsp" %>
		//     		<p>Thanks for visiting my page.</p>
		//		< %@ include file = "footer.jsp" %>
		
		//	XML equivalent <jsp:directive.include file = "relative url" /> 
		
		
		//-taglib - JSPages API allow you to define custom JSP tags that look like HTML or XML tags
		// and a tag library is a set of user-defined tags that implement custom behavior.
		//-The taglib directive declares that your JSP page uses a set of custom tags, identifies the location of the library,
		// and provides means for identifying the custom tags in your JSP page.
		//-The taglib directive follows the syntax given below −
		//	< %@ taglib uri="uri" prefix = "prefixOfTag" >
		// Here, the uri attribute value resolves to a location the container understands
		// and the prefix attribute informs a container what bits of markup are custom actions.
		
		//XML equivalent <jsp:directive.taglib uri = "uri" prefix = "prefixOfTag" />	DOESNT WORK!
	</script>
	
</html>