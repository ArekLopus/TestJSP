<jsp:directive.page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
<jsp:directive.page import="java.util.*" />
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Square Bracket Operator</title>
	</head>
	
	<%
		List<String> list = new ArrayList<>();
		list.add("One");
		list.add("Two");
		list.add("Three");
		request.setAttribute("list", list);
		request.setAttribute("two_attr", 2);
		String[] abc = {"0" ,"1" ,"2"};
		request.setAttribute("abc", abc);
	%>
	
	<body>
		
		List: ${ list }
		<br/>
		-We cant use dot operator to access a list element, we need to use squate brackets:  $ { list[0] } -> ${ list[0] }
		<br/>
		&nbsp;&nbsp;or $ { list["1"] } -> ${ list["1"] }
		<br/>
		-When we use attr name (no "") it is converted to attr value:  $ { list[two_attr] } -> ${ list[two_attr] }
		<br/>
		-We can use nested expressions:  $ { list[abc[0]] } -> ${ list[abc[0]] }
	</body>
	
	<script>
		//-We can use ${ obj["something"] } instead of dot notation -> ${ obj.something }
		//-We have to use it to access: arrays, Maps, Lists, etc. 
	</script>
</html>