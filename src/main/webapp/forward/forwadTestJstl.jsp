<jsp:directive.page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
<%-- <jsp:directive.taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" /> --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Forwarding using JSTL</title>
	</head>
	
	<body>
		Hello!
		<c:if test="${ empty param.user }">
			<jsp:forward page="login.jsp"></jsp:forward>
		</c:if>
		
		<br/>
		Welcome back ${ param.user }
	</body>
	
	<script>
		//-JSTL is part of the Java EE API and included in Java EE application servers such as WildFly, TomEE, GlassFish,
		// but not in barebones servletcontainers such as Tomcat and Jetty.
	</script>
</html>