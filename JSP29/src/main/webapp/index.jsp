<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>메인페이지</title>
	</head>
	<body>
		<h1>여기는 index.jsp입니다</h1>
		<!-- a 태그를 클릭해서 페이지를 이동하는 방식은 get방식이다 -->
		<!-- 브라우저 도메인을 직접 수정해서 이동하는 방식은 get방식 -->
		<!-- form태그의 method="get" get 방식 -->
		<a href="test">a 태그를 이용해서 test 호출</a>
		<!-- form태그의 method="post"인경우 post방식 -->
		
		<form method="post" action="test">
			<input type="submit" value="form태그로 test 호출">
		</form>
	</body>
</html>