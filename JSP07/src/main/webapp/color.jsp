<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%-- <%@ page import java.util.* %> --%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>색상 변경</title>
	</head>
	<body>
		<h1 id="start">여기가 시작점입니다.</h1>
	
		<!-- <h1 style="color:red">색상이 변동</h1>
		<h1 style="color:orange">색상이 변동</h1>
		<h1 style="color:yellow">색상이 변동</h1>
		<h1 style="color:green">색상이 변동</h1>  -->
		
	
		
		<% 
			for(int i = 0 ; i<8 ; i++){
				
				switch(i){
				case 0: out.print("<h1 style='color:red'>색상이 변동</h1>");
					break;
				case 1: out.print("<h1 style='color:orange'>색상이 변동</h1>");
					break;
				case 2: out.print("<h1 style='color:yellow'>색상이 변동</h1>");
					break;
				case 3: out.print("<h1 style='color:green'>색상이 변동</h1>");
					break;
				case 4:	out.print("<h1 style='color:blue'>색상이 변동</h1>");
					break;
				case 5:	out.print("<h1 style='color:navy'>색상이 변동</h1>");
					break;
				case 6:	out.print("<h1 style='color:purple'>색상이 변동</h1>");
					break;
				}//switch
				
			}
			
		%>
		<% 
			for(int i = 0 ; i<7 ; i++){
				
				out.print("<h1 style='color:");
				switch(i){
				case 0: out.print("red") ;
					break;
				case 1: out.print("orange");
					break;
				case 2: out.print("yellow");
					break;
				case 3: out.print("green");
					break;
				case 4:	out.print("blue");
					break;
				case 5:	out.print("navy");
					break;
				case 6:	out.print("purple");
					break;
				}//switch
				out.print("'>색상이 변동</h1>");
				
			}
			
		%>
		<% 
			String[] color = {"red","orange","yellow","green","blue","navy","purple"};
		
			
			for(int i=0; i<30; i++){
				
				
				
		%>
				<h1 style="color:<%=color[i%7]%>">색상이 변동</h1>
		<%		
				
			}//for문
		
		%>
		
		
		
		<a href="#start">시작점으로 이동</a> <!-- 아이디만 href 가능 -->
		
		
		
		
	</body>
</html>