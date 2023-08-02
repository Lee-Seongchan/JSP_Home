<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String check = request.getParameter("id_remember");
	
	//로그인 유지
	if(id.equals("abc1234")&& pw.equals("aaa1111")){
		Cookie idCookie = new Cookie("Id_cookie", id); //name, value
		idCookie.setMaxAge(20);
		response.addCookie(idCookie);
	
	//아이디 저장 쿠키 생성
		if(check != null){
			Cookie idMemory = new Cookie("remember_id", id);
			idMemory.setMaxAge(15);
			response.addCookie(idMemory);
		}
		
		response.sendRedirect("cookie_login_welcome.jsp");
	}else{
		response.sendRedirect("cookie_login_jsp");
	}
%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>