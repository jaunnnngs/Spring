<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/Stun_review_board/resources/index.css">
</head>
<body>
	<div class="container">
		<form action="logincheck" method="post">
		
				<img width="50%" src="/Stun_review_board/resources/images/main.jpg">
		
					<div>
						<h3>로그인</h3>
					</div>
					<div>
						<h5>ID</h5>
					</div>
					<div>
						<input type="text" name="id">
					</div>
					<div>
						<h5>비밀번호</h5>
					</div>
					<div>
						<input type="text" name="pw">
					</div>
					<div>
						<input type="submit" value="로그인">
					</div>
					<div>${text}</div>
				
		</form>
		</div>
		<div class="container">
		<form action="joincheck" style="width: 20%">
			<div class="join">
				<input type="submit" value="회원가입">
			</div>
		</form>
	</div>


</body>
</html>