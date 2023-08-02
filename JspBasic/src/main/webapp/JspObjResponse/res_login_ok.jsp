<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- 
    - 아이디가 "abc1234"이고 비밀번호는 "aaaa1111"입니다.
    
    - 아이디가 일치하지 않는 경우 "res_id_fail.jsp로 리다이렉팅해서 
    "존재하지 않는 회원입니다." 를 브라우저에 출력하시고 다시 로그인 폼으로 돌아갈 수 있는 링크를 제공하세요
    
    - 아이디가 일치할 경우 비밀번호도 확인해서 비밀번호가 틀렸을 경우
    "res_pw_fail.jsp" 로 리다이렉팅해서, "비밀번호가 틀렸습니다." 출력 후 
    폼 링크를 제공하세요.
    
    - 아이디, 비밀번호가 모두 일치할 경우 "res_welcom.jsp"로 리다이렉팅해서 
    "회원님 반갑습니다!."를 출력하세요.

--%>

<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	if(id.equals("abc1234")){
		if(pw.equals("aaaa1111")){
			response.sendRedirect("res_welcome.jsp");
		}else{
			response.sendRedirect("res_pw_fail.jsp");
		}
		
	}else{
		response.sendRedirect("res_id_fail.jsp");
	}
	
	
	
%>