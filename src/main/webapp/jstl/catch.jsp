<jsp:directive.page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" errorPage="errorPage.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Make Exception</title>
	</head>
	
	<body>
		
		Before exception.
		<c:catch var="exc">
			<jsp:scriptlet>
				int x = 10/0;
			</jsp:scriptlet>
		</c:catch>
		
		<br/>
		After exception.
		<br/>
		<br/>
		<c:if test="${ exc != null }">
			There was an exception: ${ exc }
		</c:if>
		
		
	</body>
	
	<script>
		//-In EL expressions we can use message and stackTrace props
		//	$ { pageContext.exception.message }
		//	$ { pageContext.exception.stackTrace }
	</script>
</html>