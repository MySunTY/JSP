<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.sql.*" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>데이터베이스 연결</title>
		<style>
			td, th{
				border:1px solid black;
			}
		</style>
	</head>
	<body>
		<%
			Connection conn = null; //회선연결
			Statement stmt = null; //쿼리문 전달용 객체
			ResultSet rs = null;  //select문의 결과를 담을 객체
			
			String url = "jdbc:mysql://127.0.0.1:3306/sample";
			String db_id = "root";
			String db_pw = "iotiot";
			String sql = "select * from register;";
			
			
			try{
				//접속시도 위치
				Class.forName("com.mysql.cj.jdbc.Driver"); //()안에 들어가는 클래스를 위한 클래스를 준비해줘
				conn = DriverManager.getConnection(url,db_id,db_pw);
				stmt = conn.createStatement(); // conn의 규격에 맞게 만들어야하기 때문에
				rs = stmt.executeQuery(sql);
				
				
				
				out.print("<table>");
				out.print("<tr>");
				out.print("<th>고유번호</th>");
				out.print("<th>아이디</th>");
				out.print("<th>이메일</th>");
				out.print("</tr>");
				
				while(rs.next()){
					out.print("<tr>");
					String number = rs.getString("num");
					out.print("<td>"+number+"</td>");
					String user_id = rs.getString("id");
					out.print("<td>"+user_id+"</td>");
					String user_email = rs.getString("email");
					out.print("<td>"+user_email+"</td>");
					out.print("</tr>");
				}
				out.print("</table>");
				
				
			}catch(Exception e){
				System.out.println("접속중 오류발생 "+e);
			}finally{
				try{
					if(rs!=null)rs.close();
					if(stmt!=null)stmt.close();
					if(conn!=null)conn.close();
					//접속 해제 위치
				}catch(Exception ex){
					System.out.println("접속 해제중 오류발생"+ex);
				}
			}
		%>
	
		
	</body>
</html>