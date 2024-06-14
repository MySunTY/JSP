<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    <%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>JSTL fmt</title>
	</head>
	<body>
		<c:set var="num" value="5000000" scope="page"></c:set>
		<fmt:formatNumber value="${num }" type="number"></fmt:formatNumber><br> <!-- 1000단위 구분기호 -->
		<fmt:formatNumber value="${num }" type="number" groupingUsed="false"></fmt:formatNumber><br> <!-- 1000단위 구분기호없이 -->
		<fmt:formatNumber value="0.5" type="percent"></fmt:formatNumber><br> <!-- 소숫점을 퍼센트로, 1이 100% -->
		<fmt:formatNumber value="${num }" type="currency"></fmt:formatNumber><br><!-- 서버기준으로 통화기호 -->
		<fmt:formatNumber value="5000000" type="currency" currencySymbol="$"></fmt:formatNumber><br> <!-- 통화기호 지정 -->
		
		<c:set var="data" value="<%=new java.util.Date() %>" scope="page"></c:set>
		\${data }:${data }<br>
		fmt기본 서식 : <fmt:formatDate value="${data }"></fmt:formatDate><br>
		fmt시간 서식 : <fmt:formatDate value="${data }" type="time"></fmt:formatDate><br>
		fmt전체 서식 : <fmt:formatDate value="${data }" type="both"></fmt:formatDate><br>
		fmt지정 서식 : <fmt:formatDate value="${data }" pattern="yyyy년 MM월 dd일 hh시 mm분 ss초"></fmt:formatDate>
		<!-- 년도 y , 월 M, 일 d, 시간 h , 분 m , 초 s -->
		
	</body>
</html>