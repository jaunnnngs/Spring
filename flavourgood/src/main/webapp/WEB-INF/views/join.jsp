<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="joinchk" method="post">

		<div>
			<h3>회원가입</h3>
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
			<h5>이름</h5>
		</div>
		<div>
			<input type="text" name="name">
		</div>
		<div>
			<h5>닉네임</h5>
		</div>
		<div>
			<input type="text" name="nickname">
		</div>
		<br>
		<div>${text}</div>
		<div>
			<input type="submit" value="회원가입하기">
		</div>
	</form>
</body>
</html>