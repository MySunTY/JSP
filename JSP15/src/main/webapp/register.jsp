<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.sql.*" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>회원조회 페이지</title>
	</head>
	<body>
		<%
			Connection conn=null;
			Statement stmt = null;
			ResultSet rs = null;
			
			String url ="jdbc:mysql://127.0.0.1:3306/sample";
			String db_id="root";
			String db_pw = "iotiot";
			String sql = "";
			
			try{
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn = DriverManager.getConnection(url,db_id,db_pw);
				out.print("<h1>접속이상무</h1>");
				stmt = conn.createStatement();
				rs = stmt.executeQuery(sql);
				
			}catch(Exception e){
				System.out.println("접속중 오류발생 "+e);
			}finally{
				try{
					if(rs!=null)rs.close();
					if(stmt!=null)stmt.close();
					if(conn!=null)conn.close();
					
					
				}catch(Exception ex){
					System.out.println("연결해제중 오류발생"+ex);
				}
			}//finally
			
		%>
	</body>
</html>