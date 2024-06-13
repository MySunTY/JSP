<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="utf-8">
		<title>checked</title>
		<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
		<script>
			$(function(){
				
				if($("#c1").prop({checked:true}){
					$("#hid1").html($("input").eq(0).prop("checked"));
				}
					
					
				})
				
			})
		</script>
	</head>
	<body>
		<form>
			<input type="checkbox" name="s1" id="c1">체크하세요
			<input type="checkbox" name="s2">체크하세요
			<input type="checkbox" name="s3">체크하세요
			<input type="checkbox" name="s4">체크하세요
			<input type="checkbox" name="s5">체크하세요
			
			<input type="text" id="hid1">11
			<input type="text" id="hid2">
			<input type="text" id="hid3">
			<input type="text" id="hid4">
			<input type="text" id="hid5">
		</form>
	</body>
</html>