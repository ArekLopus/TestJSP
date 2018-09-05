<jsp:directive.page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
<%-- <jsp:directive.taglib prefix="myFun" uri="DiceThrowing" /> --%>
<%@ taglib prefix="myFun" uri="DiceThrowing"  %>
<!DOCTYPE html>
<html>
	<head>
		<title>Custom Functions in EL</title>
	</head>
	
	<body>
		
		Dice throw: ${ myFun:throwDice() }
		
	</body>
	
	<script>
		//1. Write a Java class with PUBLIC STATIC method
		//2. Write Tag Library Descriptor, here -> /WEB-INF/myFunctions.tld (Must be somewhere under WEB-INF dir)
		//	 TLD uri - matches - taglib uri.
		//	 TLD name - functions name to use in JSP page.
		//	 TLD function-class -> fully qualified class name.
		//	 TLD function-signature - functions signature.
		//	 taglib prefix - arbitrary name.
		//3. Put proper taglib directive in a JSP page.
		//4. Use $ {prefix:funName()}
	</script>
</html>