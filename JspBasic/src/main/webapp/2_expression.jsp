<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%!
	//멤버변수
	public String name = "홍길동";
%> 

<%
	//지역변수
	String address = "서울특별시";
%>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	// 표현식(Expression)
	/*
		jsp페이지 내에서 사용되는 변수의 값 또는 메서드 호출 결과 값을 출력하기 위해 사용
		결과 값의 데이터 유형은 String이며, 세미클론(;)을 사용할 수 없습니다.
		표현식은 out.print()을 대체합니다.
	*/
	%>
	
	<!-- 표현식은 out.print()을 대체합니다. -->
	이름: <%= name %> <br>
	주소: <%= address %> <br>
	
	<% 
	out.print("이름:" + name + "<br>");
	out.print("이름:" + address + "<br>");
	%>
	
	<!-- 주석
		실제 프로그램 실행에는 영향이 없고, 프로그램 설명 등의 목적으로 사용되는 태그
		HTML 및 JSP 주석이 별도로 존재
		HTML주석은 웹 브라우저에서 페이즈 소스보기를 하면 주석도 표기됨
		JSP 주석은 웹 부라우저에서 소스보기를 해도 나타나지 않는다. 
		자바 주석도 혼용 가능
	 -->
	
</body>
</html>