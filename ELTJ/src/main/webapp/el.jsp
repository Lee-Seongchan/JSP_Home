<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
	//EL�� ���尴ü
	//pageScope JSP�� page��ü�� �����ϴ� ��ü
	//requestScope JSP�� request��ü�� �����ϴ� ��ü
	//sessionScope JSP�� session ��ü�� �����ϴ� ��ü
	//applicationScope JSP�� application ��ü�� �����ϴ� ��ü
	//param ��û �Ķ���͸� �����ϴ� ��ü
	//paramValues ��û �Ķ����(�迭)�� �����ϴ� ��ü
	//initParam �������ؽ��� �ʱ�ȭ �Ķ���͸� �����ϴ� ��ü
	//cookie ��Ű ��ü�� �����ϴ� ��ü
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<p>
	#�̸� : <%=request.getParameter("name") %>
	#���� : <%=request.getParameter("nick") %>
	
	#�̸� : ${param.name}
	#���� : ${param.nick}

</p>
	
	<%
		session.setAttribute("data1", "hello!");
		session.setAttribute("data2", "haha!");
		application.setAttribute("data2", "bye~");
	
	
	%>
	
	<a href="el_result.jsp"">���� ���÷����̼� ������ ȭ�� ǥ���ϱ�</a>
	
</body>
</html>