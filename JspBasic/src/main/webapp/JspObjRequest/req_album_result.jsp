<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String album = request.getParameter("title");

	if(album.equals("izone")){
		response.sendRedirect("../JspObjResponse/izone.jsp");
	}else if(album.equals("twice")){
		response.sendRedirect("../JspObjResponse/twice.jsp");;
	}

%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<!--  
		<%if(album.equals("izone")){%>
		<div align="center">
			<h2>선택하신 앨범 정보</h2>
			<p>
				당신이 선택하신 앨범은 아아즈원의 '비올레타'입니다.
			</p>
			<h3>타이틀 곡 뮤직 비디오</h3>			
			<iframe width="800" height="600" src="https://www.youtube.com/embed/6eEZ7DJMzuk" title="IZONE (아이즈원) - 비올레타 (Violeta) MV" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
		</div>
		<%}else if(album.equals("twice")) {%>
		<div align="center">
			<h2>선택하신 앨범 정보</h2>
			<p>
				당신이 선택하신 앨범은 트와이스의 'what is love'입니다.
			</p>
			<h3>타이틀 곡 뮤직 비디오</h3>
			<iframe width="800" height="600" src="https://www.youtube.com/embed/i0p1bmr0EmE?autoplay=1" title="TWICE(트와이스) &quot;What is Love?&quot; M/V" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
		</div>															<!-- src마지막에?autoplay=1을 추가하면 자동재생이 된다. -->
		<%} %>
	-->
</body>
</html>