<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<p>
		# data1 : <%= session.getAttribute("datal") %><br>
		# data2 : <%= application.getAttribute("data2") %><br>
	</p>
	
	<p>
		# data1 : ${sessionScope.data1} <br> 
		# data2 : ${applicationScope.data2}<br>
	</p>
	
	
	<hr>
	
	<%--
		E���� �����͸� ������ �� scope������ ������� ������ 
		page -> request -> session -> application
		������� �˻��ؼ� ã�Ƴ��ϴ�.
		�׷��� ������ requsetScope�� ���� �����ϴ� ��
	 --%>
	<p>
		# data1 : ${data1}<br>
		# data2 : ${data2}
	</p>
</body>
</html>