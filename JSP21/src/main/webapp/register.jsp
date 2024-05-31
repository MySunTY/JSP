<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>액션 태그를 이용한 데이터 처리</title>
	</head>
	<body>
		<%
			request.setCharacterEncoding("utf-8");
		%>
		<jsp:useBean class="beans.Reg" id="r" scope="page"></jsp:useBean>
		<jsp:setProperty name="r" property="*"></jsp:setProperty>
		<!-- 자바의 변수명과 input의 name이 같아야 property="*"사용가능 -->
		
		<%
		
			
		
		
			/*String name = request.getParameter("nm");
			r.setName(request.getParameter("nm"));
			String userId = request.getParameter("userid");
			r.setUserId(request.getParameter("userid"));
			String pass = request.getParameter("pw");
			r.setPass(request.getParameter("pw"));
			String email = request.getParameter("em");
			r.setEmail(request.getParameter("em"));
			String phone = request.getParameter("ph");
			r.setPhone(request.getParameter("ph"));
			String address = request.getParameter("ad");
			r.setAddress(request.getParameter("ad"));
			String nick = request.getParameter("nick");
			r.setNick(request.getParameter("nick"));
			String age = request.getParameter("age");
			r.setAge(Integer.parseInt(request.getParameter("age")));
			String born = request.getParameter("born");
			r.setBorn(request.getParameter("born"));
			String birth = request.getParameter("birth");
			r.setBirth(Integer.parseInt(request.getParameter("birth")));*/
			
			
			
			
		%>
		<h1>이름 : <%=r.getName() %></h1>
		<h1>아이디 : <%=r.getUserId() %></h1>
		<h1>비밀번호 : <%=r.getPass() %></h1>
		<h1>이메일 : <%=r.getEmail() %></h1>
		<h1>연락처 : <%=r.getPhone() %></h1>
		<h1>주소 : <%=r.getAddress() %></h1>
		<h1>닉네임 : <%=r.getNick() %></h1>
		<h1>나이 : <%=r.getAge() %></h1>
		<h1>출생지 : <%=r.getBorn() %></h1>
		<h1>생년월일 : <%=r.getBirth() %></h1>
		
	</body>
</html>