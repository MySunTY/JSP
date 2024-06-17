<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>AJAX의 이해</title>
		 
		<!-- 포트폴리오 중 
			 커리큘럼이나 응시확인서 같은거 만들때 활용하면 됨 : 
			 엑셀데이터를 한번에 받아서 올릴때 활용 
			 -->
		
	</head>
	<body>
		<input type="button" value="테스트!" onclick="startRequest()">
		<input type="text">
		<div id="result"></div>   <!-- DOM사용하기 위해서 div 하나 만든다 -->
		  
		
		<script>
			//XMLHttpRequest : 브라우저가 XML과 통신하도록 하는 기능(범용)		//html로 돌아오지 않기 때문에 화면이 없음.
			//ActiveX : MS사의 windows운영체제 하의 브라우저가 XML과 통신하도록 하는 기능, 인터넷 익스플로러 독자기능
			
			//W3C 표준규격이 아니므로 브라우저마다 다른 방식으로 구현되어 있다.
			
			var XHR;	//XML과 브라우저를 통신시키기 위한 객체
			
			function createXMLHttpRequest(){
				if(window.ActiveXObject){	//MS계열의 브라우저가 사용되고 있는 경우	//()안에 내용물이 있으면 true, 없으면 false. 빈상자면 false임.
					XHR=new ActiveXObject("Microsoft.XLMHTTP");
				
				}else if(window.XMLHttpRequest){	//크롬이나 사파리, 와일브라우저 등 대부분의 경우
					XHR=new XMLHttpRequest();
				}
			}
			
			function handleStateChange(){
				console.log(XHR.readyState);
				
				if(XHR.readyState==4){		//모든 request가 종료되었고
					if(XHR.status==200){	//통신의 결과가 존재할 경우(404 반대)
						//alert("다음의 결과 반환 : "+XHR.responseText);
						document.getElementById("result").innerHTML=XHR.responseText;
						
					}
				}
			}
			function startRequest(){
				createXMLHttpRequest();	//통신을 걸려면 통신해줄 XHR객체가 있어야 하니 만들어주는 함수 실행
				XHR.onreadystatechange=handleStateChange;	//readyState변경시 동작해줄 함수 주입	//() 붙이면 안됨. 실행하라는 뜻이므로 결과물이 들어옴. 결과물 말고 함수 자체를 통으로 넣어.
				XHR.open("GET", "data.xml", true);		//목적지로 회선 연결
				XHR.send(null);		//get방식이면 null을 적어줌
			}
			
			//XMLHttpRequest : XML하고 브라우저를 통신시켜줄 객체 *x5,000,000
			
			//XMLHttpRequest.open(method, url, asynch, user, pw) : 해당 url로 회선을 연결	
			//		method : get or post 결정. url : 통신 목적지. asynch : true 적으면 비동기통신. user, pw : 통상적으로 생략(필요없으면 생략가능)
			//XMLHttpRequest.send() : 연결된 회선으로 request를 전달
			//		method=get이라면 null 전송해야한다.(?뒤에 이미 정보가 다 나와있으므로 추가로 또 적어서 전송할 필요 없음)
			//		method=post라면 send내부에 데이터를 전송해 주어야 한다.
			
			//리스폰스를 받기위한 준비가 되어있는지 확인. 4번.
			//XMLHttpRequest.readyState : request에 대한 응답 준비를 확인할 수 있는 변수
			// 0 :	uninitialize, 초기화 되지 않는 상태	//진행불가 상황임. 기본값이 들어가지 않아 뭘 실행할 수 없는 상태.
			// 1 :	loading, 데이터를 읽고있는 상태
			// 2 :	loaded, 모든 정보를 읽어낸 상태
			// 3 :	interactive, 읽은 정보를 가져오는 상태
			// 4 :	complete, 모든 request가 종료된 상태, response확인가능
			
			//XMLHttpRequest.onreadystatechange : readyState가 변할 때마다 수행될 function을 저장하는 변수(변수이므로 카멜코드 안썼음)
			
			//XMLHttpRequest.responseText : 응답 들어온 데이터를 text형태로 받아옴 
			//XMLHttpRequest.responseXML :	응답 들어온 데이터를 XML형태로 받아옴(DOM이 사용 가능하다. 일부를 추출하기 쉬움)
		</script>
	</body>
</html>