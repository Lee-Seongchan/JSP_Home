<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 
		쿠키(cookie)
		- 웹 브라우저에서 서버로 어떤 데이터를 요청하면, 서버측에서는 알맞은 로직을 수행한 후 데이터를 웹 브라우저에 응답합니다.
		- 그리고 HTTP 프로토콜은 응답 후 웹 브라우저와의 관계를 종료 합니다.
		- 연결이 끊어졌을 때, 어떤 정보를 지속적으로 유지하기 위한 수단으로 쿠키라는 방식을 사용
		- 쿠키는 서버에서 생성하여, 서버가 아닌 클라이언트측에 정보를 저장합니다.
		- 서버에서 요청할 때 마다 쿠키의 속성값을 참조 또는 변경할 수 있습니다. 
		- 쿠키는 개당 4kb로 용량이 제한적이며 300개(1.2MB)까지 데이터 정보를 가질 수 있습니다.
		- 쿠키문법 : 쿠키클래스에서 쿠키생성 -> setter 메서드로 쿠키의 속성 설정 -> response객체에 쿠키 탑재 -> 로컬 환경에 저장
		
	=>	어떠한 정보를 어떠한 서버에서 요청을 보냈을 때 데이터를 저장할 필요성이 있다면 쿠키를 생성하여 그 안에다가 데이터를 넣어놓고 
		응답을 할 때 쿠키를 태워서 같이 보낸다. 클라이언트 로컬환경에 쿠키가 저장이 되고 다시 클라이언트가 요청을 보낼 때 쿠키를 다시 실어서 보냄
		서버는 그 쿠키를 들여다보고 판단한다. 
	 -->
</body>
</html>