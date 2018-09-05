<jsp:directive.page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<title>JSTL types</title>
	</head>
	
	<jsp:scriptlet>
		String[] colors = {"red", "green", "blue", "white", "yellow"};
		request.setAttribute("colors", colors);
	</jsp:scriptlet>
	
	<body>
		<table>
			<c:forEach var="color" items="${colors}" varStatus="counter" >
				<tr>
					<td style="background: ${color};">${counter.count}. ${color}</td>
				</tr>
			</c:forEach>
		</table>
		
	</body>
	
	<script>
		
	</script>
</html>