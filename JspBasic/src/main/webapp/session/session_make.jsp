<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
		/*
			- 세션은 쿠키와 마찬가지로 http 통신 데이터를 유지하기 위한 수단으로 사용
			- 세션에 데이터를 저장할 때는 JSP내장 객체 session이 지원하는 
			  setAttribute()메서드를 사용합니다.
			- 해당 메서드에 첫번째 매개값으로 세션의 이름을 정하고, 두번째 매개값으로 세션에 저장할 값을 정해줍니다.
		*/
		
		session.setAttribute("nickname", "홍길동");  //세션의 이름, 세션의 값
		session.setAttribute("hobbys", new String[]{"축구", "게임", "독서"}); //쿠키는(문자열안에다가 공백과 세미클론이 없는 값만 가능하지만)
																		  //세션은 배열 객체도 가능하며 저장에 제한이 없다
	
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<a href="session_check.jsp">세션 데이터 확인하기</a>
</body>
</html>