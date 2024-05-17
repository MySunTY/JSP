<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>세션</title>
	</head>
	<body>
		<%
			//세션은 제작하지 않아도 서버 내부에 미리 만들어져 있음 *
			//세션의 정보는 단일 사용자에게 전체 페이지에서 공유된다. *5000000
			//세션의 정보는 모든 jsp파일이 공유해서 사용가능
			//request또는 response와 무관하게 사용 가능하다.
			String str ="세션에 대해 공부합니다.";
			//session.setAttribute("검색어",값);
			//세선에는 object를 포함한 모든 타입이 들어갈 수 있고 가져다 쓸때는 캐스팅해줘야함
			session.setAttribute("msg",str);
			//Scope(만들어진 데이터가 어디까지 유지될지)
			//1.page 단일페이지에서
			//2.request 리퀘스트를 통해서 넘어간 페이지까지만(회원가입, 글쓰기등)
			//3.session 단일 사용자의 모든페이지 (로그인정보)
			//4.application 전체사용자 전체페이지 (광고)
		%>
		<a href=" data.jsp">세션정보 확인하러 가기</a>
	</body>
</html>