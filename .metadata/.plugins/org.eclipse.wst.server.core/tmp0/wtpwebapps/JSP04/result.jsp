<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>데이터 확인</title>
	</head>
	<body>
		<% String A = request.getParameter("nm"); 
			String B = request.getParameter("first");
			int num1 = Integer.parseInt(B); //숫자 변환
			String C = request.getParameter("second");
			int num2 = Integer.parseInt(C);
			String sql = "insert into TT(name,num) values('"+A+"',"+B+");";
		%>
		
		<h1>여기는 result.jsp입니다.</h1>
		<h1>입력받은 첫번째 데이터 : <%=A %></h1>
		<h1>첫번째 수 : <%=B %></h1>
		<h1>두번째 수 : <%=C %></h1>
		<h1><%=B %>+<%=C %></h1>
		<h1><%=B+C %></h1>
		<h1><%=num1+num2 %></h1>
		
		<p><%=sql %></p>
		
	</body>
</html>