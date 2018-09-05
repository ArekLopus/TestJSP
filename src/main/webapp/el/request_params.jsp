<jsp:directive.page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
<!DOCTYPE html>
<html>
	<head>
		<title>Request Params in EL</title>
	</head>
	
	<body>
		
		Paran Name: ${ param.name }
		<br/>
		Param Surname: ${ param.surname }  
		<br/>
		When we have more than one value for a param name: 
		${ paramValues.name[0] }
		${ paramValues.name[1] }
	</body>
	
	<script>
		//http://localhost:8080/TestJSP/el/request_params.jsp?name=Jane&surname=Doe
		//http://localhost:8080/TestJSP/el/request_params.jsp?name=Jane&name=Marry&surname=Doe
	</script>
</html>