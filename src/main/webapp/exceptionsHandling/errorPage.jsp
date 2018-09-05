<jsp:directive.page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isErrorPage="true" />
<!DOCTYPE html>
<html>
	<head>
		<title>Error Page</title>
	</head>
	
	<body>
		
		<h2>This is BIG FAT ERROR Page</h2>
		The error was: ${ pageContext.exception }
		<br/>
		pageContext.exception.message: ${ pageContext.exception.message }
		<br/>
		pageContext.exception.stackTrace: ${ pageContext.exception.stackTrace }
	</body>
	
	<script>
		//isErrorPage="true" gives us access to the exception object
	</script>
</html>