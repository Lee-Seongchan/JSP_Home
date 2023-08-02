<%@page import="java.util.Collections"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%!

	//Declaration (선언자)
	//JSP파일에서 사용할 멤버변수나 메서드 등을 사용할 때 사용하는 구역 

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
	<h3>로또 생성</h3>
	
	
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