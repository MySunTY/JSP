<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>넥스트</title>
	</head>
	<body>
		<% 
		request.setCharacterEncoding("utf-8");  //데이터를 받아주는 페이지에서 실행
		String A = request.getParameter("data");
		String B = request.getParameter("sub");
		%>
		<h1><%=A %></h1>
		<h1><%=B %></h1>
	</body>
</html>