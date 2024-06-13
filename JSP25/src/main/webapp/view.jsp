<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>JSTL 표현법 연습</title>
	</head>
	<body>
		<%
			String data = "자바단위 데이터";
			//일반 자바 변수는 자바 실행 즉시 사라지므로 EL실행시까지 존재하지 않는다.
			//따라서 일반 자바변수는 EL로 출력시 null을 반환하며 EL은 null을 표현하지 않는다 -> 데이터가 안들어왓는지 null인지 확인이 안됨
			pageContext.setAttribute("pag","페이지 단위 데이터");
			request.setAttribute("req","request단위 데이터");
			session.setAttribute("ses","session단위 데이터");
			application.setAttribute("app","어플리케이션 단위 데이터");
		%>
		<h1>EL 출력</h1>
		${data }<br>
		${pag }<br>
		${req }<br>
		${ses }<br>
		${app }
		
		<h1>jstl의 출력</h1>
		<c:set var="pag2" value="jstl로 입력한 페이지 단위 데이터" scope="page"></c:set>
		<c:out value="${pag2 }"></c:out><br>
		<c:set var="req2" value="jstl로 입력한 리퀘스트단위 데이터" scope="request"></c:set>
		<c:out value="${req2 }"></c:out><br>
		<c:set var="ses2" value="jstl로 입력한 세션단위 데이터" scope="session"></c:set>
		<c:out value="${ses2 }"></c:out><br>
		<c:set var="app2" value="jstl로 입력한 어플리케이션 단위 데이터" scope="application"></c:set>
		<c:out value="${app2 }"></c:out><br>
		
	</body>
</html>