<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 확인 페이지</title>
</head>
<body>
	<%
		String validMem = (String) session.getAttribute("ValidMem");
		String sessionId = (String) session.getAttribute("sessionId");
		
		String name = "";
		
		if (validMem != null) {
			out.println(sessionId + "님 로그인중" + "<br>");
			out.println("<br>");
			
			Enumeration enuSession = session.getAttributeNames();
			
			while (enuSession.hasMoreElements()) {
				name = enuSession.nextElement().toString();
				out.println(name + "<br>");
				String sessionVal = (String) session.getAttribute(name);
				out.println(sessionVal + "<br>");			
			}	
	%>
	<br>
	<a href="sessionTest.jsp">세션테스트 페이지로 이동</a>
	<br>
	<a href="logOut.jsp">로그아웃</a>
	<br>
	<%	
		} else {
			out.println("비로그인 상태");
		}
	%>
</body>
</html>