package com.jsp.servlet.basic;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
 서블릿이란 웹페이지를 자바 클래스로 구성하는 기법
 즉 jsp파일을 자바언어로만 구성하는 것
 
 서블릿 클래스를 만드는 방법
 1. httpServlet클래스를 상속
 2. 
  
*/

public class ServletBasic extends HttpServlet{
	
	//2 생성자 선언
	public ServletBasic() {
		System.out.println("페이지가 생성 됨");
	}
	
	//3. httpServlet이 제공하는 상속 메서드들을 오버라이딩 한다.
	//init(), doget(), doPost(), destory()
	
	@Override
	public void init() throws ServletException {
		/*
		  페이지 요청이 들어왔을 때 처음 실행할 로직을 작성하는 곳
		  init() 메서드는 컨테이너(서버)에 의해 서블릿 객체가 생성될 때 
		  최초 1회 자동 호출 됩니다.
		  객체의 생성자와 비슷한 역활 
		 */
		
		System.out.println("init()메서드 호출");
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//http Get 요청이 발생했을 때 호출되는 메서드
		System.out.println("doGet()메서드 호출");
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//http Post요청이 발생했을 때 호출되는 메서드.
		System.out.println("doPost()메서드 호출");
	}
	
	
	@Override
	public void destroy() {
		//서블릿 객체가 소멸 될 때 호출되는 메서드 (객체 소멸시 1회 호출)
		// 대부분 객체 반납이나 소멸에 사용
		System.out.println("destory()메서드 호출");
		
	}
	
}
