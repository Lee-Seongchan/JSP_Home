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
		request ��ü�� ����
		
		�� �������� ���� ������ � ������ ��û�ϴ� ��
		�̷��� ��û ������ ���� �����Ǵ� ���� request
		
		request��ü�� �����ϴ� ���
		1. Ŭ���̾�Ʈ(�� ������)�� ���õ� ���� �б�
		2. ������ ���õ� ���� �б� 
		3. Ŭ���̾�Ʈ�� ������ ��û �Ķ���� �б�
		4. Ŭ���̾�Ʈ�� ������ ��Ű �б�
	 -->   


	<p>
		#��û URL : <%=reqUrl %> <br>
		#��û URI : <%=reqUri %> <br>		
		#��û �������� : <%=protocol %> <br>		
		#��û ���ٽ�Ʈ ��Ʈ ��� : <%=conPath %> <br>		
		#���� ��Ʈ��ȣ : <%=serverPort %> <br>		
		#��û���� IP�ּ� : <%=userIP %> <br>		
		#��û���� �����̸� : <%=serverName %> <br>		
	</p>

    
</body>
</html>