<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="data.Student" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>데이터 확인 페이지</title>
	</head>
	<body>
		<%
			request.setCharacterEncoding("utf-8");
			Student s = new Student();
		
		
			s.setName(request.getParameter("nm"));
			s.setKor(Integer.parseInt(request.getParameter("kor")));
			s.setEng(Integer.parseInt(request.getParameter("eng")));
			s.setMath(Integer.parseInt(request.getParameter("math")));
			
			
			session.setAttribute("object",s);
			
		%>
		
		<h1>전송 결과 확인</h1>
		<p>이름 : <%=s.getName() %></p>
		<p>국어 : <%=s.getKor() %></p>
		<p>영어 : <%=s.getEng() %></p>
		<p>수학 : <%=s.getMath() %></p>
		
		<a href="result.jsp">눌러서 다른 페이지 이동</a>
		<%-- 
		<form id="data" method="post" action="result.jsp">
			<input type="hidden" name="nm">
			<input type="hidden" name="kor">
			<input type="hidden" name="eng">
			<input type="hidden" name="math">
		</form>
		<script>
			let data= document.getElementById("data");
			data.nm.value = "<%=name %>";
			data.kor.value = "<%=kor %>";
			data.eng.value = "<%=eng %>";
			data.math.value= "<%=math %>";
			
			function sub(){
				data.submit();
				<!-- onclick="sub()"-->
			}
		</script>
		 --%>
	</body>
</html>