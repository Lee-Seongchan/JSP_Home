<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>



<%
	Date date = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일");
	String dayInfo = sdf.format(date);

%>   
 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!-- 지시자(Direction
		JSP페이지의 전체적인 속성을 지정할 때 사용
		
		1. page : JSP페이지에 대한 정보를 지정한다 JSP가 생성하는 문서의타입, 임포트, 에러 페이지 등 페이지에서
		 		  필요로 하는 정보를 설정
		
		2. include : JSP 페이지의 특정 영역에 다른 문서를 포함 시킵니다.
		
		3. taglib : JSP페이지에서 사용할 태그 라이브러리를 지정합니다.	
	 -->
	 
	 <%=date %> <br>
	 <%=dayInfo %>입니다.
	  
</body>
</html>