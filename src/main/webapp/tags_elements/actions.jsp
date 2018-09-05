<jsp:directive.page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
<!DOCTYPE html>
<html>
	<head>
		<title>Actions</title>
	</head>
	
	<body>
		
	</body>
	
	<script>
	
		// jsp:include		- Includes a file at the time the page is requested.
		// jsp:useBean		- Finds or instantiates a JavaBean.
		// jsp:setProperty	- Sets the property of a JavaBean.
		// jsp:getProperty  - Inserts the property of a JavaBean into the output.
		// jsp:forward		- Forwards the requester to a new page.
		// jsp:plugin		- Generates browser-specific code that makes an OBJECT or EMBED tag for the Java plugin.
		// jsp:element		- Defines XML elements dynamically.
		// jsp:attribute	- Defines dynamically-defined XML element's attribute.
		// jsp:body			- Defines dynamically-defined XML element's body.
		// jsp:text			- Used to write template text in JSP pages and documents.
		
		//Common Attributes
		//-There are two attributes that are common to all Action elements: the id attribute and the scope attribute.
		
		//Id attribute
		//The id attribute uniquely identifies the Action element, and allows the action to be referenced inside the JSP page.
		//If the Action creates an instance of an object, the id value can be used to reference it through the implicit object PageContext.

		//Scope attribute
		//This attribute identifies the lifecycle of the Action element. The id attribute and the scope attribute
		//are directly related, as the scope attribute determines the lifespan of the object associated with the id.
		//The scope attribute has four possible values: (a) page, (b)request, (c)session, and (d) application.
		
	</script>
	
</html>