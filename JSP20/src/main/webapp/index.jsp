<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>다중 폼태그 사용</title>
		<style>
			#wrap div{
				width: 60px;
				height : 30px;
				font-size:20px;
				font-weight : 600;
				text-align : center;
				line-height : 30px;
				border : 2px solid gray;
			}
			#wrap div:hover{
				cursor : pointer;
				background-color : yellow;
				color : red;
			}
		</style>
	</head>
	<body>
		<div id="wrap">
			<form method="get" action="" id="test">
				<input type="text" name="in"><br>
				
				<div id="btn1" class="insert.jsp">입력</div>
				<div id="btn2" class="select.jsp">조회</div>
				<div id="btn3" class="update.jsp">수정</div>
				<div id="btn4" class="delete.jsp">삭제</div>
				
			</form>
		</div>
		<script>
			//let crud = ["insert.jsp","select.jsp","update.jsp","delete.jsp"];
			let forms = document.getElementById("test");
			let divs = forms.getElementsByTagName("div");
			
			for(let i =0 ; i <divs.length; i++){
				divs[i].addEventListener("click",function(){
					forms.action= divs[i].getAttribute("class");
					forms.submit();
				});
			}//for
			
			
			/*let btn1 = document.getElementById("btn1"); //입력버튼
			let btn2 = document.getElementById("btn2"); //조회버튼
			let btn3 = document.getElementById("btn3"); 
			let btn4 = document.getElementById("btn4");
			btn1.addEventListener("click",function(){
				forms.action = "insert.jsp";
				forms.submit();
			});
			btn2.addEventListener("click",function(){
				forms.action="select.jsp"
				forms.submit();
			});
			btn3.addEventListener("click",function(){
				forms.action="update.jsp";
				forms.submit();
			});
			btn4.addEventListener("click",function(){
				forms.action="delete.jsp";
				forms.submit();
			});*/
			//EL
			let num =15;
			console.log("num은 " +num+"입니다.");
			console.log(`num은 ${num}입니다.`);
			
		</script>
	</body>
</html>