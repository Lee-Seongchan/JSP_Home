<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<!-- 변수를 선언 -->
	<c:set var="total" value="0"></c:set> 
	<c:forEach var="i" begin="1" end="100" step="1"> <%--step생략시 자동으로 1로 처리 (하나씩 증가)--%>
	<!-- 같은 변수가 2번 쓰일 때 변수를 지정 -->
		<c:set var="total" value="${total + i}"></c:set>
	</c:forEach>	
	
	
	
	<p>1~100까지의 누적합 : ${total}</p>
	
	<h4>구구단 2단</h4>
	<c:forEach var = "hang" begin="1" end="9" step="1">
		4 x ${hang} = ${4 * hang}<br>
	</c:forEach>
	
	<hr>
	
	<c:forEach var="dan" begin="2" end="9" step="1">
		구구단 : ${dan}단<br><br>
		<c:forEach var="hang" begin="1" end="9">
			${dan } x ${hang} = ${dan * hang}<br>
		</c:forEach>
	
	</c:forEach>
	
	
	<h4>배열이나 컬렉션 내부의 값을 출력</h4>
	<%
		int[]arr = new int[]{1,3,5,7};
		for(int i : arr){
			out.println(i + "&nbsp");
		}
	%>
	<hr>
		
		<c:set var = "arr" value="<%= new int[]{1,3,5,7,9} %>"></c:set>
		<c:forEach var="n" items="${arr}">
			${n} &nbsp;
		
		</c:forEach>
		
		
</body>
</html>