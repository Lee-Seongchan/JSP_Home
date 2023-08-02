<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <%--
   		bmi지수 계산 공식 = [체중(kg) / 신장(m)의 제곱]
   		- bmi지수가 23이 초과한다면 "당신은 과체중입니다"를 출력하세요
   		- 18.5미만이라면 "당신은 저체중입니다."를 출력하세요.
   		- 나머지는 "당신은 정상체중입니다."를 출력하세요.
   		
   		*문자열 내부에 들어있는 데이터를 기본 데이터 타입으로 변환하는 방법.
   		랩퍼클래스에 들어있는 parse + 기본타입이름() 메서드를 활용.
   		request.getParameter()리턴타입이 String이기 때문에
   		bmi지수를 꼐산하려면 실수나 정수로 변환을 해줘야 합니다.
   		Interger.parseInt(변환하고 싶은 문자열), Double.parseDouble(변환하고 싶은 문자열)
    --%> 
<%
	String strCm = request.getParameter("cm");
	String strKg = request.getParameter("kg");
	
	double cm = Double.parseDouble(strCm);
	double kg = Double.parseDouble(request.getParameter("kg"));

	//bmi 지수 계산
	double bmi = kg / (cm/100 * cm/100);
	//소수 둘째 자리 까지 표현 round함수는 정수로 출력되기 때문에 
	//둘째자리 까지 표현한다고 하면 100을 곱한 다음 100.0을 나눠준다.
	bmi = Math.round(bmi*100) / 100.0;
	
	// HTTP request방식 2가지(get, post)
	// 클라이언트가 요청을 보내면 데이터 값도 같이 날라옴.
	// 웹 컨테이너(서버)에서 JSP파일을 자바코드로 변환하고 변환하는 과정에서 내장객체들이 생성됨
	// 데이터들을 requset라는 객체가 담게 된다.
	// requset 객체 안에 있는 값들을 getParameter라는 메서드를 통해 가져온다.
	
	// GET
	// 서버에 데이터를 요청하는 용도
	// 전송하는 데이터가 주소에 묻어서 감
	// 전송했던 데이터는 브라우저의 히스토리에 접속했던 주소와 함께 남아 있어 보안성에 취약함.
	// 게시판 글 조회나 검색 같이 서버의 정보를 가져올 필요성이 있을 때 사용
	// 전송할 수 있는 최대 크기는 브라우저별로 다르지만 크기가 정해져 있음
	// HTML form태그가 반드시 필요하지 않는다.(주소창에 값을 묻혀 전달이 가능)
	
	// POST
	// 서버에 데이터를 전송하는 용도
	// 전송되는 데이터가 URL에 묻어나가지 않고 전송 객체의 메시지 바디를 통해 전달됨
	// 브라우저에 전달되는 데이터가 남지 않기 때문에 보안성이 강함
	// 비밀번호나 주민번호 등 private한 데이터를 서버에 전송해야할 때 사용
	// 반드시 HTML form태그가 필요
	// 데이터 양의 제한이 없기 때문에 대량의 데이터를 전송 가능
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>체질량 지수(BMI) 계산</h2>
	<hr>
	<p>
		-신장 : <%=strCm %>cm <br>
		-체중 : <%=strKg %>kg <br>
	</p>
	
	<p>
		BMI지수 : <b><%=bmi %></b><br>
		<%if(bmi > 23) {%>
		  당신은 과체중입니다.
		<%}else if(bmi < 18.5){%>	
		  당신은 저체중입니다.
		<%}else {%>	
		  당신은 정상입니다.
		<%} %>
	</p>
</body>
</html>