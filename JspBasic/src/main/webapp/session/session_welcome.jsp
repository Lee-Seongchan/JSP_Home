<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%

	/*
		1.로그인하지 않은 사용자가 주소창에 이 페이지의 URL을 적고
		들어왔을 경우 로그인창으로 돌려보내는 코드를 작성하세요.
		(조건문을 사용해서 로그인 성공 시 생성되는 세션이 있는지를 확인)
		
		2. 로그인한 회원 아이디와 별명을 통해 "nick(id)님 환영합니다!" 를
		출력하세요.
		
		3. a태그로 로그인창으로 돌아가는 링크와 request로 폴더에 앨범 선택 페이졸 갈 수 있는
		링크 2개 작성
	
	*/
	if(session.getAttribute("user_id") == null){
		response.sendRedirect("session_login.jsp");
	}
	
	String id = (String)session.getAttribute("user_id");
	String nick = (String)session.getAttribute("user_nick");
	
	
	
	

%>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3><%=nick%>(<%=id %>)님 환영합니다.!</h3>
	<a href="../JspObjRequest/req_album.jsp">앨범 리스트 보기</a>
	<a href="session_login.jsp">로그인 페이지로</a>
	<a href="session_logout.jsp">로그아웃</a>
	
</body>
</html>