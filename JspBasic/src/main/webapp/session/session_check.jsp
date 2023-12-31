<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	/*
		- 세션에 저장된 데이터는 브라우저 창이 종료될 때까지 혹은
		세션의 유효시간이 만료되기 전까지 웹 어플리케이션의 모든 jsp페이지에서 사용할 수 있다.
		
		- 세션에 저장된 데이터를 가져오려면 session 객체의 
		getAttribute()메서드를 사용하며 매개값으로 가져올 데이터의 세션 이름을 적습니다.
		
	*/
	
	String nick = (String)session.getAttribute("nickname");
							//리턴값 Object 타입이기 때문에 String으로 형변환
	
	String[] hobbys = (String[])session.getAttribute("hobbys");
							
	out.print(nick + "<br>");
	out.print(Arrays.toString(hobbys) + "<br>");
	out.print("========================================================<br>");
	
	//세션의 유효시간 설정.
	session.setMaxInactiveInterval(60*60); //1시간 설정(기본30분)
	
	int stime = session.getMaxInactiveInterval();//세션의 유효시간 확인
	out.print("세션의 유효시간 : " +  stime + "초<br>");
	out.print("========================================================<br>");
	
	//특정 세션의 데이터 삭제
	session.removeAttribute("nickname");
	nick = (String)session.getAttribute("nickname");
	out.print("삭제 후 nick의 값 : " + nick + "<br>");
	out.print("========================================================<br>");
	
	//모든 세션 데이터 삭제
	session.invalidate();
	
	//isRequestedSessionIdValid() = 유효한 세션 데이터가 존재하하는지 확인하는 메서드.
	if(request.isRequestedSessionIdValid()){
		out.print("유효한 세션이 존재함");
	}else{
		out.print("유효한 세션이 존재하지 않음");
	}
	
%>