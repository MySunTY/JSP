<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>form태그의 사용</title>
	</head>
	<body>
		<!-- form태그의 속성 -->
		<!-- method : 전송방식 -->
		<!-- action : 목적지 -->
		<!-- form태그가 데이터를 전송할 때는 name=value의 형태로 값을 전송한다 *5000000000000000 -->
		<!-- name이 없으면 데이터를 전송할 수 없다 -->
		<form method="get" action="result.jsp">
			이름 : <input type="text" name="nm"><br>
			첫번째 : <input type="text" name="first" placeholder="숫자만"><br>
			두번째 : <input type="text" name="second" placeholder="숫자만"><br>
			<input type="submit" value="제출하기">
		
		
		</form>
	</body>
</html>