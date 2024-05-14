<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>GET을 통한 데이터 전송</title>
	</head>
	<body>
		<% 
			String data="이 내용을 출력";
			int number = 353535;
			String id = "root";
			int pw = 12345;
		
		%>
		<%
			out.print(data);
		%>
		<br>
		<h1><%=data %></h1>
		<a href="result.jsp?test=<%=data %>&num=<%=number%>&id=<%=id%>">눌러서 결과확인</a>
		<!--(get방식데이터전송) 127.0.0.1/JSP03/result.jsp?검색어=데이터  -->
		<!-- 목적지?key1=value1&key2=value2 -->
	</body>
</html>