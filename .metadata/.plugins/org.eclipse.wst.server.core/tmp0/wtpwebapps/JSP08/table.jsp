<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>데이터 전송 실습</title>
		<link rel="stylesheet" href="css/style.css">
	</head>
	<body>
		<div id="wrap">
			<div class="th">상품명</div>
			<div class="th">가격</div>
			<div class="th">수량</div>
			<div class="td">컴퓨터</div>
			<div class="td">10000000</div>
			<div class="td">
				<select>
					<option>1</option>
					<option>2</option>
					<option>3</option>
					<option>4</option>
					<option>5</option>
				</select>
			</div>
			<div class="td">스마트폰</div>
			<div class="td">15000000</div>
			<div class="td">
				<select>
					<option>1</option>
					<option>2</option>
					<option>3</option>
					<option>4</option>
					<option>5</option>
				</select>
			</div>
			<div class="result">
				<h1>결제총액</h1>
				<h1>0원</h1>
				<input type="submit" value="결제하기">
			</div>
		</div>
		<!-- #wrap:after{
	content:"가나다라"; css로 만든 글자, 수정안됨
} -->
<!-- div는 고무줄같은 성질, 자식들이 있으면 그만큼 늘어나지만
자식이 없다고 판단되면(전부 float이라 붕 떠있을때)쪼끄라들어버림 -->
	</body>
</html>