<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%--
	* ��û �Ķ����(request Parameters)
	- Ŭ���̾�Ʈ ������ ������ �����͸� ��û�� �� ���޵Ǵ� ������ ���� 
	  ������ ��û �Ķ���Ͷ�� �θ���.
	  
	- ��û �Ķ���ʹ� URL�ּ� �ڿ� ?�� ���� ���Ŀ� [�Ķ���� ������ = ��]��
	  ������ ���ؼ� ������ �����͸� �����մϴ�.
	  
	- ��û �Ķ���͸� ���� �� ������ ���� &��ȣ�� ����Ͽ� �����Ͽ� �����մϴ�.
 --%>

<%
	// Ŭ���̾�Ʈ���� ���۵� ��û �Ķ������ ���� �д� ���
	// ���尴ü request�� �޼��� getParameter("�Ķ���� ������");
	String breakfast = request.getParameter("bf");
	String lunch = request.getParameter("lunch");
	String dinner = request.getParameter("dinner");
%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<p>
		-��ħ��: <%= breakfast %><br>
		-���ɹ�: <%= lunch %><br>
		-�����: <%= dinner %><br>
	</p>



</body>
</html>