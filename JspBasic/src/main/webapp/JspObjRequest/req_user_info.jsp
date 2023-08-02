<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String name = request.getParameter("user_name");
	String id = request.getParameter("user_id");
	String pw = request.getParameter("user_pw");
	String gender = request.getParameter("gender");
	//여러개의 값을 불러올 때 쓰는 메서드 리턴타입이 배열이다.
	String[] hobbys = request.getParameterValues("hobby");
	String region = request.getParameter("region");
	String intro = request.getParameter("introduce");

%>    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>
		#이름: <%=name %><br>
		#ID: <%=id %><br>
		#PW: <%=pw %><br>
		#성별: <%=gender %><br>
		<!--배열 내용 출력하기  
		자바에서 배열 내용을 출력해보려고 배열 자체에서 toString()을 사용하면 
		배열의 내용이 아니라 배열의 주소값이 출력 
		배열의 내용을 출력하려면 Arrays.toString()을 사용
		-->
		#취미: <%=Arrays.toString(hobbys) %><br>
		#지역: <%=region %><br>
		#자기소개: <%=intro %><br>
	</p>
</body>
</html>