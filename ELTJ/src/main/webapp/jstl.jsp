<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%-- JSTL로 변수를 선언하면 EL안에서 활용기 가능하며 EL에서는 타입을 자동으로 식별합니다. --%>
	<c:set var="age" value="${param.age}" ></c:set> <%--파라미터에 age --%>
	
	
	<p>
		# 나이 : ${age}세<br>
		<c:if test="${age > 19 }">
			<b>당신은 성인 입니다.</b>
		</c:if>
		<c:if test="${age<19 }">
			<b>미성년자 입니다</b>
		</c:if>
	</p>
</body>
</html>