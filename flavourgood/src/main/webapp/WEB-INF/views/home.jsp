<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<html>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300&display=swap" rel="stylesheet">
<style>

* {
	font-family: 'Noto Sans KR', sans-serif;
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

#root, html, body {
	height: 100%;
	width: 100%;
	/* r g b*/
	background-color: #EBF7FF;
	color: #fff;
	/* ffffff */
	/* 255 -> ff */
	display: flex;
	justify-content: center;
	align-items: center;
}

.container {
	display: flex;
	justify-content: space-around;
	width: 1200px;
	height: 600px;
	background-color: #EBF7FF;
}

.container .middle {
	padding: 50px;
	background-color: #fff;
}

.container .middle>h3, .container .middle>h5 {
	color: black;
	text-align: center;
	padding: 10px;
}

.container .middle>div>input[type="text"] {
	width: 300px;
}

.container .middle>div>input[type="submit"] {
	padding: 5px;
	align-items: center;
	background-color: #EBF7FF;
	align-items: center;
	left: 50px;
	width: 100px;
}

.container .middle #loginbtn {
	padding-left: 100px;
	padding-top: 20px;
	padding-bottom: 20px;
}

a {
	font-size: 13px;
	margin-left: 40px;
}

.container .middle #loginfailtext {
	font-size: 13px;
	margin-left: 90px;
	color: #f70000;
	padding-bottom: 10px;
}
</style>
</head>
<body>
	<form action="loginchk" method="post">
		<div id="root">
			<div class="container">
				<div class="middle">
					<h3>로그인</h3>
					<h5>ID</h5>
					<div>
						<input type="text" name="id">
					</div>
					<h5>비밀번호</h5>
					<div>
						<input type="text" name="pw">
					</div>
					<div id="loginbtn">
						<input type="submit" value="로그인">
					</div>
					<div id="loginfailtext">${text}</div>
					<a href="join">아직 회원이 아니신가요? 회원가입하기</a>
				</div>

			</div>
		</div>
	</form>

</body>
</html>
