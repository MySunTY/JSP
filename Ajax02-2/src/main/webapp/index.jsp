<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>dom처리</title>
	</head>
	<body>
		<input type="button" value="iot 과목확인" onclick="startRequest('iot')">
		<input type="button" value="web 과목확인" onclick="startReqeust('web')">
		<input type="button" value="app 과목확인" onclick="startRequest('app')">
		
		<script>
			var XHR ; 
			var type="";
			
			function createXMLHttpRequest(){
				if(window.ActiveXObject){
					XHR = new ActiveXObject();
				}else if(window.XMLHttpRequest)
					XHR = new XMLHttpRequest();
			}
			
			createXMLHttpRequest();
			console.log(XHR);
			
			
			
			function startRequest(sub){
				type=sub; 
				createXMLHttpRequest();
				XHR.onreadystatechange  = handleStateChange;
				XHR.open("GET","test.xml",true);
				XHR.send(null);
			}
			function handleStateChange(){
				if(XHR.readyState==4){
					if(XHR.status==200){
						list(type);
					}
				}
				
			}
			
			function list(type){
				var DOC = XHR.responseXML;
				var iot = DOC.getElementsByTagName("iot")[0];
				var title= "<< "+ type+"과목>>";
				var subject = iot.getElementsByTagName("subject");
				out(title,subject);
			}
			function out(title,subject){
				var t = title;
				var n ="";
				for(var i=0; i<subject.length; i++){
					n=subject[i].innerHTML;
					t=t+"\n"+n;
				}
				alert(t);
			}
		</script>
	</body>
</html>