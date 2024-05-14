<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>간단한 회원가입</title>
	 <style>
	 	#wrap{
	 		width: 300px;
	 		border: 5px solid lightgray;		 
	 		padding: 30px;
	 		margin: 0 auto;
	 	}
	 	
	 	input[name="id"]  {
	 	 margin-left: 48px;}
	 	 
	 	input[name="nm"] {
	 	 margin-left : 32px;}
	 	
	 	input[name="phone"]{
	 	 margin-left : 16px;
	 	} 
	 	 
	 
	 	 
	 
	 </style>
	</head>
	<body>
		<div id="wrap">
			<!-- <form method="get" action="main.jsp"> -->
			<form method="post" action="main.jsp"> 
			<!-- 추가 : method 를 get으로 하면 정보가 다 보이기 때문에 가리기 위해서는 post (전기신호로바뀜)로 한다 
				 단점은 한글이 깨진다 그래서 utf-8을 -->
			
				<h1>회원가입</h1>
				<hr>
				 ID  : <input type="text" name="id" placeholder="아이디 입력"  autofocus > <br>
				비밀번호 : <input type="password" name="pw" placeholder="숫자 + 특수문자 조합" required> <br>
				이름 : <input type="text" name="nm"> <br> <!-- name="name"은 예약어이기 때문에 사용금지  -->
				연락처 : <input type="text" name="phone"> <br>
				<hr>
				
				<!--추가  -->
				선호색상 : <input type="color" name="c" >
				<!-- 태그 사이에 text노드가 존재한다.   -->
				<fieldset> <!--  실제 작업시 사용을 많이 안함?! -->
					<legend>관심분야</legend>
					JAVA<input type="radio" name='subject' value="java">
					HTML<input type="radio" name='subject' value="html">
					CSS<input type="radio" name='subject' value="css">
				<!--   value값을 지정안하면 그냥 on값으로 표시된다  -->
				<!-- 실제는 radio 보다는 div를 많이 사용함 : 이유?! 모바일 환경으로 많이 바뀌어서 
					 input, hover도 div로 사용함
					 header 같은 시멘틱 태그도 사용 안 함
					 table도 사용안함. 왜냐하면 반응형이 안되서 
					 결국 div,span을 많이 사용함. 모양이 없는 기본형이라서 변형해서 사용한다고 함 
				 -->	
				</fieldset>
				
				<fieldset>
					<legend>수강과목</legend>
					JSP<input type="checkbox" name="jsp">
					JAVA<input type="checkbox" name="java">			
				</fieldset>
				
		
				<input type="hidden" name="hid" value="요주의">
				<!-- 아이디 중복찾기 할때 사용됨 : 예전에 비교해서 아이디 중복여부 체크했었음 / 
				     그러나 요즘은 Ajax(비동기식) : xmal을 자바스크립트로 통신시키는 기법 
				     			             동기식이 아닌 비동기식으로 서버의 데이터를 가져와 비교할 수 있다?!-->
				
				
				
 				<!-- 추가  end-->
				
				<input type="submit" value="회원가입!">
				 
				
				
			</form>
		
		
		</div>
	</body>
</html>