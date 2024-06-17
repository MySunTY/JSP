<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Dynamic XML parse</title>
		<!-- 쇼핑몰에서 가격대 번위 설정해서 검색해보는 거 만들어보기 -->
	</head>
	<body>
	<h1>원하시는 가격대를 선택해 주세요</h1>
	
	<select>
		<option value="500000">500000</option>
		<option value="1500000">1500000</option>
		<option value="2500000">2500000</option>
	</select>
	에서
		<select>
		<option value="1000000">1000000</option>
		<option value="2000000">2000000</option>
		<option value="3000000">3000000</option>
	</select>
	까지
	<input type="button" value="조회" onclick="">
	
	
		<script>
			var XHR;
			function createXMLHttpRequest(){
				if(window.ActiveXObject){
					XHR=new ActiveXObject("microsoft.XMLHTTP");
				}else if(window.XMLHttpRequest){
					XHR=new XMLHttpRequest();  
				}
			}
			 createXMLHttpRequest();
			 console.log(XHR);
			
			function search(){
				createXMLHttpRequest();
				XHR.onreadystatechange="";
				XHR.open("GET","sample.xml",true);
				XHR.send(null)
				
				
			}
	
		</script>
		
	
	</body>
</html>