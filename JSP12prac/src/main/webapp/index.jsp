<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>session</title>
	</head>
	<body>
		<%
			session.setAttribute("data","이 데이터를 전송");
			
		%>
		<h1>index.jsp</h1>
		<a href="check.jsp">check.jsp로 이동하기</a>
	</body>
</html>