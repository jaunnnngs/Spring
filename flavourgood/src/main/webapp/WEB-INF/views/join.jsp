<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	background-color: #DAD9FF;
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
	background-color: #DAD9FF;
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
.container .middle #joinbtn{
padding-left: 80px;
}


.container .middle>div>input[type="submit"] {
	padding: 5px; align-items : center;
	background-color: #ECEBFF;
	align-items: center;
	left:50px;
	width:150px;

}
</style>
</head>
<body>
	<form action="joinchk" method="post">
		<div id="root">
			<div class="container">
				<div class="middle">

					<h3>회원가입</h3>

					<h5>ID</h5>
					<div>
						<input type="text" name="id">
					</div>

					<h5>비밀번호</h5>

					<div>
						<input type="text" name="pw">
					</div>

					<h5>이름</h5>

					<div>
						<input type="text" name="name">
					</div>

					<h5>닉네임</h5>

					<div>
						<input type="text" name="nickname">
					</div>
					<br>
					<div>${text}</div>
					<div id="joinbtn">
						<input type="submit" value="회원가입하기">
					</div>
				</div>

			</div>
		</div>
	</form>

</body>
</html>