<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="prac.Prac" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		<%
			Prac p = (Prac)session.getAttribute("prac");
			out.print(p.getName());
		%>
		
		
	</body>
</html>