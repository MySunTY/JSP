<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>메인페이지</title>
	</head>
	<body>
		<h1>여기는 main.jsp입니다.</h1>
		<%
			request.setCharacterEncoding("utf-8");
		//post데이터 전송처리시 한글이 깨지는 문제 해결
		//데이터를 받아주는 페이지의 request에서 처리한다
			String user=request.getParameter("id");
			String pass=request.getParameter("pw");
			String nam=request.getParameter("nm");
			String ph=request.getParameter("phone");
			String bg=request.getParameter("c");
			String sub=request.getParameter("subject");
			String js=request.getParameter("jsp");
			String ja=request.getParameter("java");
			
		%>
	 
		<h3>아이디 : <%=user %></h3>
		<h3>비밀번호 : <%=pass %></h3>
		<h3>이름 : <%out.print(nam); %></h3>
		<h3>연락처 : <%out.print(ph); %></h3>
		<h3>선호색상 : <%=bg %></h3>
		<h3>관심분야 : <%=sub %></h3>
		<h3>jsp수강여부 : <%=js %></h3>
		<h3>java수강여부 : <%=ja %></h3>
		  
		<div style="width :200px; height:200px; background-color:<%=bg %>;"></div>
		
		<script>
			var user=document.getElementsByTagName("h3")[0];
			user.setAttribute("style","color:<%=bg%>");
			//자바로 작업하면 인라인이 된다. 그래서 태그 < 클래스 < 아이디 보다 우선순위에 있어 작업시 참고
			
		
		</script> 
	
	</body>
</html>