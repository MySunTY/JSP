<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>AJAX연습</title>
	</head>
	<body>
		<input type="button" value="확인" onclick="startXHR()">
		<script>
			var XHR;
			function createXMLHttpRequest(){
				if(window.ActiveXObject){
					XHR= new ActiveXObject("Microsoft.XMLHTTP");
				}else if(window.XMLHttpRequest){
					XHR= new XMLHttpRequest();
				}
			}
			
			function startXHR(){
				createXMLHttpRequest();
				XHR.onreadystatechange= handleStateChange;
				XHR.open("get","test.xml",true);
				XHR.send(null);
			}
			function handleStateChange(){
				if(XHR.readyState==4){
					if(XHR.status==200){
						console.log("확인");
					}
				}
			}
		</script>
	</body>
</html>