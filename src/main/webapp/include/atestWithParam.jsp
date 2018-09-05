<jsp:directive.page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
<!DOCTYPE html>
<html>
	<head>
		<title>Include header with param</title>
		<style>
			div {
				width: 230px;
				height: 100px;
				background: red;
			}
		</style>
	</head>
	
	<body>
		<jsp:include page="headerWithParam.jsp" >
			<jsp:param name="myParam" value="myParamVal" />
		</jsp:include>
		
		<div>In the div...</div>
		
		<%@ include file="footer.html" %>
		
	</body>
	
	
	<script>
		
	</script>
	 
</html>