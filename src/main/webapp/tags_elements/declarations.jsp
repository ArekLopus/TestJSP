<jsp:directive.page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
<!DOCTYPE html>
<html>
	<head>
		<title>Declarations</title>
	</head>
	
	<body>
		
		<%!
			int counter = 0;
		%>
		
		<!-- XML equivalent -->
		<jsp:declaration>
			public int add(int a, int b) {
				return a+b; 
			}			
		</jsp:declaration>
		
		
		<br/>
		Counter: <%= ++counter %>
		<br/>
		Adder: <%= add(2, 3) %>
		<br/>

	</body>
	
	
	<script>
	
		//Class variables, static variables and methods
		//The declarations are added to the generated class OUTSIDE request method.
		
		
	</script>
	
</html>