<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	//String strAge = request.getParameter("age");
	request.setCharacterEncoding("UTF-8");
	int age = Integer.parseInt(request.getParameter("age"));
	
	if(age >= 20){
		
		//response 객체가 제공하는 sendRedircet()메서드의 매개값으로는 
		//이동시킬URL주소를 적으면 해당 페이지로 강제 이동하게 됩니다.
		
		response.sendRedirect("http://localhost:8080/JspBasic/JspObjResponse/res_basic_ok.jsp");
	}else { 
		response.sendRedirect("res_basic_no.jsp");
	}
	
%>