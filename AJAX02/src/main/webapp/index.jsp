<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>XML의 DOM처리</title>
	</head>
	<body>
		<!-- test.xml처럼 .xml을 직접 만드는게 아닌 홈페이지 두개를 만들어서 돌아가는 방식으로 만들어야 함-->
		<input type="button" value="iot과목 확인" onclick="startRequest('iot')">
		<input type="button" value="web과목 확인" onclick="startRequest('web')">
		<input type="button" value="app과목 확인" onclick="startRequest('app')">
		<script>
			var XHR;       //XML과 통신할 객체
			var type="";  //지금 어느 버튼이 눌린건지 내용을 저장
			function createXMLHttpRequest(){ //위에 만든 변수안에 내용물 채우기 
				if(window.ActiveXObject){
					XHR=new ActiveXObject();
				}else if(window.XMLHttpRequest){ //else if사용한 이유는 브라우저가 많기 때문에,else if로 더 추가할 수 있음
					XHR=new XMLHttpRequest();  
				}
			}
			//중간확인해보기
			//createXMLHttpRequest();
			//console.log(XHR);
			
			function startRequest(sub){
				//console.log(sub+"과목확인요청!");
				type=sub; //function startRequest(sub)에서 (sub)는 type안에 넣기
				createXMLHttpRequest(); 				  //XHR제작
				XHR.onreadystatechange=handleStateChange; //readyState값 변동시 handleStateChange()실행
				XHR.open("GET","test.xml",true);		  //회선연결
				XHR.send(null);							  //request전송	
			}
			function handleStateChange(){
				if(XHR.readyState==4){ //request가 온전히 전달되었고
					if(XHR.status==200){ //response가 있는 경우, 404가 아니면 
						list(type);  //호출
						// console.log("통신확인!"+type);
						//받아온 XML은 DOM으로 쪼갤 수 있다.
						//console.log(XHR.responseXML);
						//태그요소 가져오기
						//console.log(XHR.responseXML.getElementsByTagName("subject"));
						//
					}					
				}
			}

			//과목 추출용 함수
			function list(type){
				var DOC=XHR.responseXML;
				var iot=DOC.getElementsByTagName("iot")[0];
				var title="<< " +type + "과목>>";
				var subject=iot.getElementsByTagName("subject");
				out(title, subject);
				 
			}
			//출력용 함수
			function out(title, subject){
				var t=title;
				var n="";
				for(var i=0; i<subject.length; i++){
					n=subject[i].innerHTML; 
					t=t+"\n"+n;
				}
				alert(t);
			}
			
			
			
		</script>
	
	</body>
</html>