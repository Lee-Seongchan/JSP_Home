<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>



<%
	Date date = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy�� MM�� dd��");
	String dayInfo = sdf.format(date);

%>   
 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!-- ������(Direction
		JSP�������� ��ü���� �Ӽ��� ������ �� ���
		
		1. page : JSP�������� ���� ������ �����Ѵ� JSP�� �����ϴ� ������Ÿ��, ����Ʈ, ���� ������ �� ����������
		 		  �ʿ�� �ϴ� ������ ����
		
		2. include : JSP �������� Ư�� ������ �ٸ� ������ ���� ��ŵ�ϴ�.
		
		3. taglib : JSP���������� ����� �±� ���̺귯���� �����մϴ�.	
	 -->
	 
	 <%=date %> <br>
	 <%=dayInfo %>�Դϴ�.
	  
</body>
</html>