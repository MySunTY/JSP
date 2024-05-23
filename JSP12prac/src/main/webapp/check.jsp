<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>check.jsp</title>
	</head>
	<body>
		<%
			String a = (String)session.getAttribute("data");
		%>
		<h1>check.jsp</h1>
		<h3><%=a %></h3>
		<a href="check2.jsp">다시한번 이동하기</a>
	</body>
</html>