<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>데이터확인</title>
	</head>
	<body>
		<%
			prac.Prac p = (prac.Prac)session.getAttribute("prac");
			
			pageContext.setAttribute("name",p.getName());
			pageContext.setAttribute("num",p.getNum());
			pageContext.setAttribute("nation",p.getNation());
		
		%>
		\${name}:${name }<br>
		\${num }:${num }<br>
		\${nation }:${nation }
		
		<a href="view.jsp">view.jsp로 확인하러가기</a>
	</body>
</html>