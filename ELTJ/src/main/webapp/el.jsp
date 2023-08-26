<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
	//EL의 내장객체
	//pageScope JSP의 page객체를 참조하는 객체
	//requestScope JSP의 request객체를 참조하는 객체
	//sessionScope JSP의 session 객체를 참조하는 객체
	//applicationScope JSP의 application 객체를 참조하는 객체
	//param 요청 파라미터를 참조하는 객체
	//paramValues 요청 파라미터(배열)을 참조하는 객체
	//initParam 서블릿컨텍스츠 초기화 파라미터를 참조하는 객체
	//cookie 쿠키 객체를 참조하는 객체
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<p>
	#이름 : <%=request.getParameter("name") %>
	#별명 : <%=request.getParameter("nick") %>
	
	#이름 : ${param.name}
	#별명 : ${param.nick}

</p>
	
	<%
		session.setAttribute("data1", "hello!");
		session.setAttribute("data2", "haha!");
		application.setAttribute("data2", "bye~");
	
	
	%>
	
	<a href="el_result.jsp"">세션 어플레케이션 데이터 화면 표시하기</a>
	
</body>
</html>