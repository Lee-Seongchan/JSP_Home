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
	
	/*JSP파일의 위치 
	.metadata\.plugins\org.eclipse.wst.server.core\tmp0\work\Catalina\localhost\각 프로젝트 폴더
	이클립스 연결된 톰캣 사용시엔 위 경로에 각 jsp의 .java와 .class 파일이 위치하고
	직접 넣을땐 각 톰캣 설치폴더(
	apache-tomcat-9.0.1)\work\Catalina\localhost에 각 프로젝트명으로 변환된 jsp 파일이 위치합니다.
	 */
		// declaration(선언)
		// 클래스 블럭처럼 사용되기 때문에 
		// 1. 멤버 변수에 접근 제한자 사용 가능
		public int i;
		private String name = "홍길동";
		
		// 2. 메서드와 객체 사용가능
		// -> 메서드를 선언하는 곳
		public int add(int n1, int n2){
			return n1 + n2;
		}
		
	%>
	
		
	<%
		// 스크립트릿(Scriptlet)
		// 메서드 내부처럼 사용되기 때문에 지역변수에 접근 제한자 사용 불가능
		// 지역변수는 초기화 하지 않으면 사용 불가능
		// -> 메서드 호출
		
		int j = 0;
		int result = add(4, 7);
		i++; //i값만 계속 늘어남
		j++;
		
		double d = Math.random();
		
		out.print("i의 값은 : " + i + "<br>");
		out.print("j의 값은 : " + j + "<br>");
		out.print("result의 값은 : " + result + "<br>");
		out.print("d의 값은 : " + d + "<br>");
		
	/* 	
		declaration_jsp라는 객체를 생성하여 heap영역에 저장
		그 객체에 새로운 요청이 들어오면 힙 영역에 계속 두고 재활용
		클래스 블럭에 선언된 int i는 계속 남아있게 되고 누적 값이 계속 들어가게 됨
		메서드 내부에 선언된 int j는 jspService가 요청이 들어갈 때마다 새롭게 실행되기 때문에 초기화가 됨
	*/
		
	%>
</body>
</html>