<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>자바 일반 문법의 이용</title>
	</head>
	<body>
		<%
			int number =-2;
			if(number>0){
		%>		
				<h1><%=number%>(은)는 양수입니다</h1>
		<%		
			}//if문
			else{
		%>		
				<h2><%=number%>은(는) 음수입니다</h2>
				
		<%		
			}//else
		
		%>
		<a href ="next.jsp">눌러서 for문 확인하러 가기</a>
		<!-- a href ="#"  #은 id 지정자, 그 아이디가 있는 곳으로 이동 -->
	</body>
</html>