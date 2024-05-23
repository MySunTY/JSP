<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>check2.jsp</title>
	</head>
	<body>
		<%
			String checkdata = (String)session.getAttribute("data");
		%>
		<h1>check2.jsp</h1>
		<h3><%=checkdata %></h3>
	</body>
</html>