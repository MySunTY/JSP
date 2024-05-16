<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Table</title>
		<style>
			tr , td{
				border :1px solid black;
			}
		</style>
	</head>
	<body>
		
		<table>
		<thead></thead>
		<tbody>
		<%
		
			for(int i =0 ; i<10; i++){
				out.print("<tr>");
				for(int j = 0 ; j<10; j++){
					out.print("<td>"+"i="+i+", j="+j+"</td>");
					
				}//for j
				out.print("</tr>");
			}
		
		
		%>
		</tbody>
		<tfoot></tfoot>
		</table>
	</body>
</html>