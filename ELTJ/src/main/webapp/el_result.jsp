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
		E에서 데이터를 참조할 때 scope영역을 명시하지 않으면 
		page -> request -> session -> application
		순서대로 검색해서 찾아냅니다.
		그렇기 때문에 requsetScope는 거의 생략하는 편
	 --%>
	<p>
		# data1 : ${data1}<br>
		# data2 : ${data2}
	</p>
</body>
</html>