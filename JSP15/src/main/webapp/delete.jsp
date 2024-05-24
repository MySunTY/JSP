<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.sql.*" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>delete.jsp</title>
	</head>
	<body>
		<%
			request.setCharacterEncoding("utf-8");
			String del = request.getParameter("del");
			
			String sql = "delete from register where num = "+del+";";
			
			Connection conn = null;
			Statement stmt = null;
			
			String url = "jdbc:mysql://127.0.0.1:3306/sample";
			String db_id="root";
			String db_pw = "iotiot";
			
			try{
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn = DriverManager.getConnection(url, db_id,db_pw);
				stmt = conn.createStatement();
				stmt.executeUpdate(sql);
				response.sendRedirect("member.jsp");
			}catch(Exception e){
				System.out.println("delete.jsp접속중 오류 :"+e);
			}finally{
				try{
					if(stmt!=null)stmt.close();
					if(conn!=null)conn.close();
					
				}catch(Exception ex){
					System.out.println("delete.jsp 연결 해제중 오류 : "+ex);
				}
				
			}//finally
			
		%>
		<%=sql %>
	</body>
</html>