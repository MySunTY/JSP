<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>AJAX의 이해</title>
		<style>
			td , th{
				border : 1px solid black;
			}
		</style>
	</head>
	<body>
		<input type="button" value="테스트" onclick="startRequest()">
		<input type="text">
		<div id="result"></div>
		
		
		<script>
			var XHR;
			
			function createXMLHttpRequest(){
				if(window.ActiveXObject){
					XHR = new ActiveXObject("Microsoft.XMLHTTP");
				}else if(window.XMLHttpRequest){
					XHR = new XMLHttpRequest();
				}
				
			}
			
			function handleStateChange(){
				console.log(XHR.readyState);
				
				if(XHR.readyState==4){
					if(XHR.status==200){
						
						document.getElementById("result").innerHTML = XHR.responseText;
					}
				}
			}
			
			function startRequest(){
				createXMLHttpRequest();
				XHR.onreadystatechange = handleStateChange;
				XHR.open("GET","data.xml",true);
				XHR.send(null);
			}
			
		</script>
		
	</body>
</html>