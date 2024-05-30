<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="utf-8">
	<title>next.jsp</title>
	<link rel="stylesheet" href="CSS/test.css">
	</head>
	<body>
		<div id ="wrap">
			<jsp:include page="header.jsp"></jsp:include>
			<p>여기는 next.jsp입니다.</p>
			<p>페이지가 이동해도 같은 page를 사용해서 편리합니다.
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
	</body>
</html>