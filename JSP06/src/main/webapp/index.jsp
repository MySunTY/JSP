<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>일반 태그의 값 전송</title>
	</head>
	<body>
		<form method="post" action="next.jsp">
			<p>이 데이터를 보내고 싶어요</p>
			<input type="hidden" value="" name="data">
			<!-- value가 없다면 option글씨가 전송되고 value가 있으면 value가 전송됨 -->
			<select name="sub">
				<option value="1">HTML</option>
				<option value="2">JAVA</option>
				<option value="3">CSS</option>
				<option value="4">JAVASCRIPT</option>
			
			
			</select>
			<input type="submit" value="전송">
		
		
		</form>
		<script>
			let ptag = document.getElementsByTagName("p")[0];
			let value = ptag.innerHTML;
			console.log(value);
			
			let hidden = document.getElementsByTagName("input")[0];
			hidden.value = value;
		</script>
	
	</body>
</html>