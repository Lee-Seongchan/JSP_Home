<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%!
	//�������
	public String name = "ȫ�浿";
%> 

<%
	//��������
	String address = "����Ư����";
%>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	// ǥ����(Expression)
	/*
		jsp������ ������ ���Ǵ� ������ �� �Ǵ� �޼��� ȣ�� ��� ���� ����ϱ� ���� ���
		��� ���� ������ ������ String�̸�, ����Ŭ��(;)�� ����� �� �����ϴ�.
		ǥ������ out.print()�� ��ü�մϴ�.
	*/
	%>
	
	<!-- ǥ������ out.print()�� ��ü�մϴ�. -->
	�̸�: <%= name %> <br>
	�ּ�: <%= address %> <br>
	
	<% 
	out.print("�̸�:" + name + "<br>");
	out.print("�̸�:" + address + "<br>");
	%>
	
	<!-- �ּ�
		���� ���α׷� ���࿡�� ������ ����, ���α׷� ���� ���� �������� ���Ǵ� �±�
		HTML �� JSP �ּ��� ������ ����
		HTML�ּ��� �� ���������� ������ �ҽ����⸦ �ϸ� �ּ��� ǥ���
		JSP �ּ��� �� �ζ�������� �ҽ����⸦ �ص� ��Ÿ���� �ʴ´�. 
		�ڹ� �ּ��� ȥ�� ����
	 -->
	
</body>
</html>