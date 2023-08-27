<%@page import="el.basic.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String gender = request.getParameter("gender");
	String address = request.getParameter("address");
	
	
	
	Person person = new Person();
	person.setName(name);
	person.setGender(gender);
	person.setAge(age);
	person.setAddress(address);
	
	System.out.println("222");
	System.out.println(person.getName());
	System.out.println(person.getAddress());
	System.out.println(person.getAge());
	System.out.println(person.getGender());
	
	request.setAttribute("name", name);
	request.setAttribute("age", age);
	request.setAttribute("gender", gender);
	request.setAttribute("address", address);
	
	//response.sendRedirect("/ELTJ/el_obj3.jsp");

%>

<jsp:forward page="/el_obj3.jsp"/>