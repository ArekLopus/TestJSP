<jsp:directive.page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
<!DOCTYPE html>
<html>
	<head>
		<title>Includes</title>
		<style>
			div {
				width: 230px;
				height: 100px;
				background: red;
			}
		</style>
	</head>
	
	<body>
		<%@ include file="header.html" %>
		
		<div>In the div...</div>
		
		<jsp:include page="footer.html" />
	</body>
	
	
	<script>
		//-The include directive:					< %@ include file="header.html" %>
		//-Static: adds the content from the value of the file attribute to the current page at translation time.
		// The directive was originally intended for static layout templates, like HTML headers.

		//-The <jsp : include> standard action:		<jsp : include page="header.jsp" />
		//-Dynamic: adds the content from the value of the page attribute to the current page at request time.
		// Was intended more for dynamic content coming from JSPs.

		//-The <c : import> JSTL tag:					<c : import url=”http://www.example.com/foo/bar.html” />
		//-Dynamic: adds the content from the value of the URL attribute to the current page, at request time.
		// It works a lot like  <jsp : include>, but it’s more powerful and flexible: unlike the other two includes,
		// the <c : import> url can be from outside the web Container!
	</script>
	 
</html>