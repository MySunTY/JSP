<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>자바빈 이용하기</title>
	</head>
	<body>
		<jsp:useBean class="beans.Student" id="s" scope="page"></jsp:useBean>
	
		<!-- usebean 사용할때 class="패키지.클래스명" id="변수명" 
			scope="변수가 유지될 범위"
		-->
		
		<%--
			//beans.Student s = new beans.Student(); 
		// import안하고 패키지까지 적어도 상관없음
		
		
		s.setName("홍길동");
		--%>
		<!-- name객체 내부에 property찾아 set를 붙인 메서드에 value를 입력하는 방식 -->
		<jsp:setProperty name="s" property="name" value="홍길동"></jsp:setProperty>
		<%-- <h1><%=s.getName() %></h1> --%>
		<jsp:getProperty name="s" property="name"></jsp:getProperty>
		
		<jsp:setProperty name="s" property="age" value="50"></jsp:setProperty>
		<jsp:getProperty name="s" property="age"></jsp:getProperty>
		<jsp:setProperty name="s" property="address" value="서울시노원구"></jsp:setProperty>
		<jsp:getProperty name="s" property="address"></jsp:getProperty>
	</body>
</html>