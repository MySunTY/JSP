<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>색 변경</title>
		<style>
			a{
				text-decoration : none;
			}
		</style>
	</head>
	<body>
		
		
		<%
			String[] color= {"RED","ORANGE","YELLOW","PINK","BROWN"}; //0~4
			for(int i = 0 ; i<5 ; i++){
		%>
				<h1 style="color:<%=color[i%5]%>"><%=color[i%5]%></h1>
		<%
			}//for문
			
		
		%>
		<a href="table.jsp">여기를 눌러서 table보러가기</a>
	</body>
</html>