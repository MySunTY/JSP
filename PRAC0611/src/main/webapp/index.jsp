<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="utf-8">
		<title>연습</title>
		<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
		<script>
			
		</script>
	</head>
	<body>
		<%
			prac.Prac p = new prac.Prac();
			p.setNum(20);
			p.setName("김북부");
			p.setNation("중국");
			
			session.setAttribute("prac",p);
		%>
		<a href="next.jsp">세션확인하러 이동</a>
	</body>
</html>