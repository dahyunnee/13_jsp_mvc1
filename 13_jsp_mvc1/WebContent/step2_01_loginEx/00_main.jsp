<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>00_main</title>
</head>
<body>

	<%
	
		String id = (String)session.getAttribute("id");	
	%>
	
	<%
		if (id == null){	
	%>
			<h1>JUST DO IT!</h1>
			<p><a href="01_insert.jsp">Join!</a></p>
			<p><a href="07_login.jsp">Login!</a></p>
		
	<% 		
		} else{
	%>
			<h1>Welcome! <%=id %></h1>
			<p><a href="03_delete.jsp"></a></p>
			<p><a href="05_update.jsp"></a></p>
			<p><a href="09_logout.jsp"></a></p>
	<% 		
		}
	%>

</body>
</html>