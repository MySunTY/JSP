<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>테이블 제작</title>
		<style>
			tr, td{
				border : 1px solid black;
			}
		</style>
	</head>
	<body>
		<table>
			<thead></thead>
			<tbody>
				<tr>
					<td>i=0, j=0</td>
					<td>i=0, j=1</td>
					<td>i=0, j=2</td>
					<td>i=0, j=3</td>
				</tr>
				<tr>
					<td>i=1, j=0</td>
					<td>i=1, j=1</td>
					<td>i=1, j=2</td>
					<td>i=1, j=3</td>
				</tr>
				<tr>
					<td>i=2, j=0</td>
					<td>i=2, j=1</td>
					<td>i=2, j=2</td>
					<td>i=2, j=3</td>
				</tr>
				<tr>
					<td>i=3, j=0</td>
					<td>i=3, j=1</td>
					<td>i=3, j=2</td>
					<td>i=3, j=3</td>
				</tr>
				<tr>
					<td>i=4, j=0</td>
					<td>i=4, j=1</td>
					<td>i=4, j=2</td>
					<td>i=4, j=3</td>
				</tr>
				
				<%
					for(int i =0 ; i<5; i++){
						out.print("<tr>");
						for(int j=0 ; j<4;j++){
							out.print("<td>");
								out.print("i="+i+", j="+j);
							out.print("</td>");
								
						}//forj
						out.print("</tr>");
					}//fori
				%>
				
				
				<%
					for(int i = 0 ; i<5; i++){
				%>		
					<tr>
				<% 
						for(int j = 0 ; j<4;j++){
				%>
							<td></td>
				<%			
							
							
						}// for j
				
				%>		
				<%
					}//for i
				
				%>
			
			</tbody>
		
		
		</table>
		<script>
			let tds= document.getElementsByTagName("td");
			for(let i= 0 ; i<tds.length; i++){
				tds[i].setAttribute("style","border:1px solid red");
				
			}
		 <%--	자바 css html 자바스크립트 순으로 실행 --%>
		</script>
		
	</body>
</html>