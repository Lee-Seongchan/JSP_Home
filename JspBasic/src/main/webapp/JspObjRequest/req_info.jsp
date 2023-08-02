<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	
	StringBuffer reqUrl = request.getRequestURL();
	String reqUri = request.getRequestURI();
	String protocol = request.getProtocol();
	String conPath	= request.getContextPath();
	int serverPort = request.getServerPort();
	String userIP = request.getRemoteAddr();
	String serverName = request.getServerName();

%>    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<!-- 
		request 객체의 이해
		
		웹 브라우저를 통해 서버에 어떤 정보를 요청하는 것
		이러한 요청 정보가 담기고 관리되는 곳이 request
		
		request객체가 제공하는 기능
		1. 클라이언트(웹 브라우저)와 관련된 정보 읽기
		2. 서버와 관련된 정보 읽기 
		3. 클라이언트가 전송한 요청 파라미터 읽기
		4. 클라이언트가 전송한 쿠키 읽기
	 -->   


	<p>
		#요청 URL : <%=reqUrl %> <br>
		#요청 URI : <%=reqUri %> <br>		
		#요청 프로토콜 : <%=protocol %> <br>		
		#요청 컨텐스트 루트 경로 : <%=conPath %> <br>		
		#서버 포트번호 : <%=serverPort %> <br>		
		#요청자의 IP주소 : <%=userIP %> <br>		
		#요청자의 서버이름 : <%=serverName %> <br>		
	</p>

    
</body>
</html>