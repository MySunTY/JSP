<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%
			String[] season ={"봄","여름","가을","겨울"};
			
			for(int i = 0 ; i<season.length; i++){
				out.println("<h3 style='color:red'>"+season[i]+"</h3>");	
			}
			
			//향상된 for문
			for(String str:season){
				out.print("<h3 style='color:blue'>"+str+"</h3>");
			}
			pageContext.setAttribute("arr",season);
		%>
		<!-- forEach varStatus 내부의 변수 -->
		<!-- index : 배열의 인덱스와 동일 -->
		<!-- count : 1부터 시작-->
		<!-- first : 첫번째 요소  -->
		<!-- last : 마지막요소 -->
		
		
		<c:forEach var="str" items="${arr }" varStatus="iter">
			<h3 style="color:green">${str }${iter.index }</h3>
		</c:forEach>
		<c:forEach var="str" items="${arr }" varStatus="iter">
			<h3 style="color:green">${str }${iter.count }</h3>
		</c:forEach>
		<c:forEach var="str" items="${arr }" varStatus="iter">
			<h3 style="color:green">${str }${iter.first }</h3>
		</c:forEach>
		
		
		<c:forEach var="str" items="${arr }" varStatus="iter">
			<c:if test="${iter.first }">
				<div style="border:3px solid red;">
			</c:if>
			<h3 style="color:green">${str }</h3>
			<c:if test="${iter.last }">
				</div>
			</c:if>
		</c:forEach>
		
		<%
			for(int i=0; i<5; i++){
				out.print("<h3 style='color:oragne'>"+i+"</h3>");
			}
		%>
		<c:forEach var="i" begin="0" end="4">
			<h3 style="color:purple">${i }</h3>
		</c:forEach>
		
		<%
			String student = "홍길동,김철수,이철수,김북부";
			pageContext.setAttribute("student",student);
		%>
		<!-- delims를 기준으로 데이터를 쪼갬 -->
		<c:forTokens var="data" items="${student }" delims=",">
			<h3 style="color:purple">${data }</h3>
		</c:forTokens>
		${student }
		
	</body>
</html>