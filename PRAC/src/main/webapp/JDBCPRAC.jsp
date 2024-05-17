<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>DB연결</title>
	</head>
	<body>
		<%
			Connection conn = null;
			Statement stmt = null;
			ResultSet rs = null;
			
			String url ="jdbc:mysql://127.0.0.1:3306/sample";
			String db_id="root";
			String db_pw="iotiot";
			String sql = "select * from register;";
			
			try{
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn = DriverManager.getConnection(url,db_id,db_pw);
				stmt = conn.createStatement();
				rs = stmt.executeQuery(sql);
				while(rs.next()){
					String id = rs.getString("id");
					String name = rs.getString("name");
					String email = rs.getString("email");
					
					out.print(id+"\t"+name+"\t"+email+"<br>");
					System.out.println(id+"\t"+name+"\t"+email);
					
				}
				
				
			}catch(Exception e){
				System.out.println("접속 중 오류 발생 :" +e);
			}finally{
				try{
					if(rs!=null)rs.close();
					if(stmt!=null)stmt.close();
					if(conn!=null)conn.close();
					
				}catch(Exception ex){
					System.out.println("연결 해제중 오류 발생 : "+ex);
				}
			}
		%>
	</body>
</html>