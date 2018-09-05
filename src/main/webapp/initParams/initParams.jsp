<jsp:directive.page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
<!DOCTYPE html>
<html>
	<head>
		<title>Init Params Test</title>
	</head>
	
	<jsp:declaration>
		public void jspInit() {
			String defName = getServletConfig().getInitParameter("defaultName");
			getServletContext().setAttribute("contextDefName", defName + " - added in jspInit()");
			System.out.println("Default User: "+defName);
		}
	</jsp:declaration>
	
	<body>
		<h2>Init Params Test</h2>
		DefaultName (cfg): <%= getServletContext().getAttribute("contextDefName") %>		<!-- set in jspInit() -->
		<br/>
		DefaultName (cfg): <%= getServletConfig().getInitParameter("defaultName") %>		<!-- getInitParameter() -->
		<br/>
		<br/>
		DefaultName (ctx): ${ initParam.defaultName}										<!-- Context param -->
		<br/>
		DefaultName (ctx attr): ${ applicationScope.contextDefName }						<!-- ctx attribute -->
		<br/>
		<br/>
		DefaultName (param): ${ param.name }											<!-- request param -->
		
		<script>
			//http://localhost:8080/TestJSP/initParams/initParams.jsp?name=newName
		</script>
		
	</body>
</html>