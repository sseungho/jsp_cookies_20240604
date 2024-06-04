<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	// 쿠키를 삭제하는 것이 곧 로그아웃 임
	
	Cookie[] cookies = request.getCookies();
	
		for(int i=0 ; i<cookies.length ; i++) {// 쿠키를 하나씩 가져와서 삭제하기
			
			//쿠키 삭제 방법 >> 가져온 쿠키의 유효 시간을 0으로 세팅>> 다시 클라이언트 컴터로 보냄 > 쿠키 삭제
			cookies[i].setMaxAge(0); // 쿠키의 유효 시간을 0으로 세팅
			response.addCookie(cookies[i]); // 다시 클라이언트 컴퓨터로 보냄
			
	}
	%>
<a href="cookieTest.jsp">쿠키 테스트</a>
</body>
</html>