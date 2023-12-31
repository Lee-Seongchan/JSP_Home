<%@page import="user.User"%>
<%@page import="user.userRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	/*
		1. 입력된 회원 정보를 가져오세요
		
		2. 로그인 시도하는 회원의 모든정보를 얻어오세요.(getUser())

		3. 조건문을 사용하여 user변수에 null값을 리턴 받았는지 확인하여 
		  회원가입이 되어있지 않은 사람 로그인을 시도한 것이 확인 되었을 경우 로그인 페이지로 보내줍니다. 
		  
		4. user변수에 null값이 들어있는 것이 아니라면 회원가입 당시에 작성했던 비밀번호가 로그인할 때 작성한 
		비밀번호와 같은지를 판단하여 같다면 세션에 로그인 데이터를 저장해주세요. ("login", user객체)
		
		5. 세션을 만든 후 "login_welcome.jsp"로 페이지를 이동시켜 주세요.
		
		6. 비밀번호가 일치하지 않는다면 <script>태그로 "비밀번호가 일치하지 않습니다.
		경고창 하나 띄워주고 다시 로그인 페이지로 돌려주세요.(뒤로가기)
		
	*/

	
		request.setCharacterEncoding("UTF-8");
		
		//	1. 입력된 회원 정보를 가져오세요
		String id = request.getParameter("account");
		String pw = request.getParameter("password");
		
		// 2. 로그인 시도하는 회원의 모든정보를 얻어오세요.
		User user = userRepository.getUser(id);
		
		// 3. 조건문을 사용하여 user변수에 null값을 리턴 받았는지 확인
		if(user != null){
			if(pw.equals(user.getPassword())){
				session.setAttribute("login", user);
				response.sendRedirect("login_welcome.jsp");
			}else{%>
			
			<script>
				alert("비밀번호가 일치하지 않습니다.");
				history.back();
			</script>
				
		<%	}
		}else{ %>
			<script>
				alert("존재하지 않는 회원입니다.");
				location.herf = "login_form.jsp";
			</script>	
	<%} %>