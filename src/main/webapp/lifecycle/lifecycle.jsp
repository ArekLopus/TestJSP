<jsp:directive.page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
<!DOCTYPE html>
<html>
	<head>
		<title>Lifecycle</title>
	</head>
	
	<%!
		public void jspInit() {
			
			//First method called when servlet is initialized.
			ServletConfig sc = getServletConfig();
			ServletContext ctx = getServletContext();
			
		}
	
		public void jspDestroy() {
		   // Cleanup code goes here.
		}
	%>
	
	<body>
		
	</body>
	
	<script>
		
	</script>
</html>