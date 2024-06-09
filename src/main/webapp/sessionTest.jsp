<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 정보 테스트</title>
</head>
<body>
	<%
		int sessionTime = session.getMaxInactiveInterval();
		out.println("세션의 기본 유효시간" + sessionTime + "<br>");
		session.setMaxInactiveInterval(300);
		sessionTime = session.getMaxInactiveInterval();
		out.println("세션의 변경 유효시간" + sessionTime + "<br>");	
	%>
	<hr>
	<%
		long firstTime = session.getCreationTime();
		long lastTime = session.getLastAccessedTime();
		
		long keepTime = (lastTime - firstTime)/(60*1000);
		out.println(keepTime + "<br>");
		
		String session_id = session.getId(); // 세션의 고유 아이디
		out.println("세션의 고유아이디" + session_id + "<br>");
	%>
	
	<br>
	<a href="loginCheck.jsp">로그인 확인 페이지로 이동</a>
</body>
</html>