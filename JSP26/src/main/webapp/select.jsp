<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>jstl if의 사용</title>
	</head>
	<body>
		<%
			String color = request.getParameter("color");
			int number = Integer.parseInt(color);
			if(number==1){
				%>
					<h1 style="color:red">빨강색입니다</h1>
				<%
			}else{
				%>
					<h1 style="color:orange">주황색입니다</h1>
					
				<%
				
			}
			
		%>
		<c:if test="${param.color==1 }">
			<h1 style="color:red;">빨강색입니다.</h1>
		</c:if>
		<!-- jstl에서는 if-else를 choose로 부른다 -->
		
		<c:choose>
			<c:when test="${param.color==1 }">
				<h1 style="color:red">빨강색입니다</h1>
			</c:when>
			<c:when test="${param.color==2 }">
				<h1 style="color:orange">주황색입니다</h1>
			</c:when>
			<c:otherwise>
				<h1 style="color:yellow">노란색입니다</h1>
			</c:otherwise>
		
		</c:choose>
		
		<!-- c태그 안에는 주석달지않기 -->
		
	</body>
</html>