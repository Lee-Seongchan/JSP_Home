<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	// 클라이언트에 저장된 쿠키를 가져오는 방법.(배열)	
	boolean flag = false;
	Cookie[] cookies = request.getCookies();
	for(Cookie c : cookies){
		String cookieName = c.getName(); //쿠키 이름을 얻어오는 메서드
		if(cookieName.equals("apple_cookie")){
			out.print("<h3>사과쿠키가 존재합니다.<h3>");
			String value = c.getValue(); //쿠키의 값을 읽어오는 메서드
			out.print("쿠키의 값 : " + value);
			flag = true;
			break;
		}
	}
	//만족하는 결과값을 얻으면 flag = true로 바뀌어 
	//if문안의 조건은 false가 되어 실행이 되지 않는다.
	
	if(!flag){
		out.print("<h3>사과쿠키가 사라졌어요!<h3>");
	}

%>    
    
<a href="cookie_check_all.jsp">모든 쿠키 보기</a>
    
	