<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>첫번째 JSP</title>
		<style>
			h1{
				text-align : center;
			}
			/* CSS는 이렇게 주석을 달아요 */
		</style>
	</head>
	<body>
		<%
			int a=10;
			int b=20;
			int result = a+b;
			//자바는 이렇게 주석
		%>
		<h1>반갑습니다!</h1>
		<% out.print(result); %>
		<% String str = "자바로 만든 인사"; %>
		<h1 style="color:red"><% out.print(str); %></h1>
		<!-- 127.0.0.1:8080/JSP01 -->
		<!-- HTML은 이렇게 주석 -->
		<%-- <script>
			alert("<% out.print(result); %>")
		</script> jsp 주석 --%>
		<%-- jsp 주석 --%>
		<%-- 
			css는 /**/을 통해서 주석처리를 진행함
			html은 <!-- -->을 통해서 주석처리
			java는 //  , /**/
			자바스크립트는 // /**/
			하나만 가지고 다 쓰기보다는 상황에 따라 잘 섞어쓰는게 중요
		 --%>
	</body>
</html>