<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%!
	
	/*JSP������ ��ġ 
	.metadata\.plugins\org.eclipse.wst.server.core\tmp0\work\Catalina\localhost\�� ������Ʈ ����
	��Ŭ���� ����� ��Ĺ ���ÿ� �� ��ο� �� jsp�� .java�� .class ������ ��ġ�ϰ�
	���� ������ �� ��Ĺ ��ġ����(
	apache-tomcat-9.0.1)\work\Catalina\localhost�� �� ������Ʈ������ ��ȯ�� jsp ������ ��ġ�մϴ�.
	 */
		// declaration(����)
		// Ŭ���� ��ó�� ���Ǳ� ������ 
		// 1. ��� ������ ���� ������ ��� ����
		public int i;
		private String name = "ȫ�浿";
		
		// 2. �޼���� ��ü ��밡��
		// -> �޼��带 �����ϴ� ��
		public int add(int n1, int n2){
			return n1 + n2;
		}
		
	%>
	
		
	<%
		// ��ũ��Ʈ��(Scriptlet)
		// �޼��� ����ó�� ���Ǳ� ������ ���������� ���� ������ ��� �Ұ���
		// ���������� �ʱ�ȭ ���� ������ ��� �Ұ���
		// -> �޼��� ȣ��
		
		int j = 0;
		int result = add(4, 7);
		i++; //i���� ��� �þ
		j++;
		
		double d = Math.random();
		
		out.print("i�� ���� : " + i + "<br>");
		out.print("j�� ���� : " + j + "<br>");
		out.print("result�� ���� : " + result + "<br>");
		out.print("d�� ���� : " + d + "<br>");
		
	/* 	
		declaration_jsp��� ��ü�� �����Ͽ� heap������ ����
		�� ��ü�� ���ο� ��û�� ������ �� ������ ��� �ΰ� ��Ȱ��
		Ŭ���� ���� ����� int i�� ��� �����ְ� �ǰ� ���� ���� ��� ���� ��
		�޼��� ���ο� ����� int j�� jspService�� ��û�� �� ������ ���Ӱ� ����Ǳ� ������ �ʱ�ȭ�� ��
	*/
		
	%>
</body>
</html>