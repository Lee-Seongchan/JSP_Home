<%@page import="java.util.Collections"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%!

	//Declaration (������)
	//JSP���Ͽ��� ����� ��������� �޼��� ���� ����� �� ����ϴ� ���� 

%>    


<%
	List<Integer> lotto = new ArrayList<>();
	
	while(lotto.size()<6){
		
		int rn = (int)(Math.random()*45)+1;
		if(!lotto.contains(rn)){
			lotto.add(rn);
		}else{
			
		}
		Collections.sort(lotto);
	}
%>
	<h3>�ζ� ����</h3>
	
	
	<%	for(int num : lotto){%>
			<%=lotto + "" %>
	<%	}%>
	



    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>