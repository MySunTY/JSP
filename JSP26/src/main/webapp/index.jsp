<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="utf-8">
		<title>자바빈과 jstl</title>
	</head>
	<body>
		<h1>일반 자바 방식</h1>
		<%
			beans.Student s1 = new beans.Student();
			s1.setName("홍길동");
			s1.setAge("20");
			s1.setAddress("서울시 노원구");
		%>
		<%=s1 %>
		<h1>jsp액션 태그 방식</h1>
		<jsp:useBean class="beans.Student" id="s2"></jsp:useBean>
		<jsp:setProperty property="name" name="s2" value="고희선" ></jsp:setProperty>
		<jsp:setProperty property="age" name="s2" value="25"></jsp:setProperty>
		<jsp:setProperty property="address" name="s2" value="서울시 강서구"></jsp:setProperty>
		<%=s2 %>
		<h1>jstl 방식</h1>
		<c:set var="s3" value="<%=new beans.Student() %>"></c:set>
		<c:set target="${s3 }" property="name" value="김철수"></c:set>
		<c:set target="${s3 }" property="age" value="19"></c:set>
		<c:set target="${s3 }" property="address" value="서울시 강남구"></c:set>
		
		${s3 }<br>
		<a href="delete.jsp">데이터 소거 기능</a>
	</body>
</html>