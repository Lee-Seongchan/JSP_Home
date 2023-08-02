<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


	<style type="text/css">
		.login_btn{
			background-color: gray;
			width: 60px;
			height: 50px;
			font-family: consolas;
			padding: 2px;
			box-sizing: border-box;
		
		}
	
		div{
			margin: 0 auto;
		}
	
	</style>


</head>
<body>
	<%--
		CSS(Cascade Style Sheet)
		- HTML에 디자인 요소를 적용하는 언어는 CSS
		- CSS를 HTML에 적용하는 방법은 3가지
		1. 인라인 스타일 시트 - 태그 내부에해당 태그에만 적용되는 스타일을 지칭
		2. 내부 스타일 시트 - 태그의 스타일을 HTML의 head태그에 따로 저장.
		3. 외부 스타일 시트 - 외부에 CSS파일을 따로 만들어 디자인 소스만 모두 지정한 뒤에 나중에 HTML문서 내부에서 링크를 통해 로딩 시킴
		
		- CSS 우선 적용 순위 : 인라인 > 내부 > 외부 
	 --%>



	<div align = "center" style="border: 2px solid red; width:400px; padding:20px" >
		<h3>sendRedirect 연습</h3>
		<form action="res_login_ok.jsp" method="post">
			<table border="1">
				<tr>
					<td><input type="text" name="id" size="10px" placeholder="ID를 입력"></td>
					<td rowspan="2"><input class="login_btn" type="submit" value="로그인"></td>
				</tr>
				
				<tr>
					<td><input type="text" name="pw" size="10px" placeholder="pw를 입력"></td>
				</tr>
					
			
			
			
			</table>
		</form>
	</div>


</body>
</html>