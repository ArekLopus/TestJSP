<jsp:directive.page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
<!DOCTYPE html>
<html>
	<head>
		<title>Operators</title>
	</head>
	<jsp:scriptlet>
		int a = 5;
		int b = 3;
		int[] array = null;
		request.setAttribute("a", a);
		request.setAttribute("b", b);
		request.setAttribute("array", array);
	</jsp:scriptlet>
	<body>
		a, b: ${ a } ${ b }<br/>
		a > b: ${ a > b }<br/>
		a lt b: ${ a lt b }<br/>
		a + b: ${ a + b }<br/>
		empty array: ${ empty array }<br/>
		3 * (2 - 1): ${ 3 * (2 - 1)}<br/>
	</body>
	
	<script>
		//Arithmetic:	+, -, *, / (div), % (mod)
		//Logical: 		&& (and), || (or), ! (not)
		//Relational:	== (eq), != (ne), < (lt), > (gt), <= (le), => (ge)
		//Other:		(), true, false, null, instanceof, empty - $ { empty A } - returns true if A is null or empty
		//null			null is special - in arithmetics it is treated as 0, in logical expressions as false
	</script>
</html>