<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 로그인</title>
</head>
<body>
	<!-- 회원가입상태 - id: tiger, pw: 12345 -->
	<h3>회원 로그인</h3>
	<hr>
	<form action="loginOk.jsp">
		아이디: <input type="text" name="memberId"><br><br>
		비밀번호: <input type="text" name="memberPw"><br><br>
		<input type="submit" value="로그인">
	</form>
</body>
</html>