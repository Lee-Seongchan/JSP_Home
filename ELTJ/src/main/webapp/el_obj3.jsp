<%@page import="el.basic.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("UTF-8");
	String name = (String)request.getAttribute("name");
	String gender = (String)request.getAttribute("gender");
	String age = (String)request.getAttribute("age");
	String address = (String)request.getAttribute("address");
	
	System.out.println("name 3 = " +name);
	System.out.println("age 3 = " +age);
	System.out.println("gender 3 = " +gender);
	System.out.println("address 3 = " +address);
	 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<p>
		#이름 : <%=name %><br>
		#나이 : <%=age %><br>
		#성별 : <%=gender %><br>
		#주소 : <%=address %><br>
	</p>
	
	
</body>
</html>