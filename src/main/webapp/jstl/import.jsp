<jsp:directive.page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<title>JSTL types</title>
	</head>
	
	<body>
		
		<c:import url="../include/headerWithParam.jsp" >
			<c:param name="myParam" value="myParamValue"/>
		</c:import>
		
		<c:import url="https://www.facebook.com/photo.php?fbid=1657378074369804&set=a.311356175638674&type=3&theater" />
		
		<%-- <c:import var="yas" scope="request" url="https://scontent-frt3-2.xx.fbcdn.net/v/t1.0-9/30740092_1657378081036470_4398130073987710976_n.jpg?_nc_cat=0&oh=1538c286c975aa75c1406e80245213e5&oe=5BEF6AB2" />			
		<img alt="Yasi" src="${ yas }"> --%>
		
		<%-- <c:import var = "data" url = "http://www.tutorialspoint.com"/>
      	<c:out value = "${data}"/> --%>
		
	</body>
	
	<script>
		//It is like jsp:include but allows external resources	
	</script>
</html>