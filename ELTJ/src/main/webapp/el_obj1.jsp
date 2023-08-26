<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="./el_obj2.jsp" method="get">
		<p>
			#이름 :<input type="text" name="name"><br>
			#나이 :<input type="number" name="age"><br>
			#성별 :<input type="radio" name="gender" value='M'>남&nbsp;
				  <input type="radio" name="gender" value='F'>여<br>
			#주소 :<input type="text" name="address"><br>
			<input type="submit" value="확인">
		</p>
	
	
	</form>
</body>
</html>