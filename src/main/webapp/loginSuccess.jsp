<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공</title>
</head>
<body>
	<%	//쿠키 가져오기 >> 클라이언트 컴퓨터에 저장되어 있는 쿠키를 한 번에 배열 형태로 가져오기
		Cookie[] cookies = request.getCookies();
	
		for(int i=0 ; i<cookies.length ; i++) {
			cookies[i].getName(); // 쿠키의 이름
			cookies[i].getValue(); // 쿠키의 값
			out.println("쿠키의 이름 :" + cookies[i].getName() + "<br>");
			out.println("쿠키의 값 :" + cookies[i].getValue() + "<br>");
		}
	%>
	<h3>로그인 성공</h3>
	<hr>
	<a href="logout.jsp">로그 아-------웃</a>
</body>
</html>