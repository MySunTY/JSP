<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>for문의 사용 예시</title>
	</head>
	<body>
		<%
			for(int i=1 ; i<7 ; i++){
				out.print("<h");
					out.print(i);
				out.print(">");
					out.print("안녕하세요");
				out.print("</h");
					out.print(i);
				out.print(">");
				
			}
		%>
		<%
			for(int i = 1 ; i<7 ; i++){
		%>
				<h<%=i%>>저는 h<%=i %>입니다</h<%=i %>>
		<%
				out.print("<h"+i+">저는 h"+i+"입니다</h1>");
		%>
				
		<%		
			}//for문
		
		%>
		<a href="color.jsp">여기를 눌러서 색 변경이동</a>
	</body>
</html>