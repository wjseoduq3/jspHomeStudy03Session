<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
</head>
<body>
	<%
		session.invalidate();
	%>
	<a href="logibCheck.jsp">로그인 확인 페이지로 이동</a><br><br>
	<a href="login.jsp">로그인 페이지로 이동</a>
	
</body>
</html>