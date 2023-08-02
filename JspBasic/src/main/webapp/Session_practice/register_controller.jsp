<%@page import="user.userRepository"%>
<%@page import="user.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
	
	User user = new User(
			request.getParameter("account"),
			request.getParameter("password"),
			request.getParameter("name"),
			request.getParameter("nickName")
			);
	
	userRepository.save(user);
	
	userRepository.showUsers();
	
	response.sendRedirect("register_result.jsp");

%>