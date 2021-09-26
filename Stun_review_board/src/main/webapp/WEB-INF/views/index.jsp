<%@page import="com.stun.review_board.dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />

<title>STUN 공지사항</title>

<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet" />
<link rel="stylesheet" href="resources/css/styles.css">

</head>
<body>
	<form action="joinaction" method="post">


		<!-- Responsive navbar-->
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
			<div class="container px-5">
				<a class="navbar-brand" href="main">STUN</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
						
						<li class="nav-item"><a class="nav-link" href="notice">공지사항</a></li>
					</ul>
					<div style="color: white;">${sessionScope.dto.id}님환영합니다.</div>
				</div>
			</div>
		</nav>
	</form>
	<div class="container1">
		<div class="item" style="margin: 0 auto">
			<form action="logincheck" method="post">
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
			<div class="item">
				<a class="link" href="join">회원가입</a>
			</div>
		</div>
	</div>
	<!-- 하단화면-->

	<footer class="py-5 bg-dark">
		<div class="container px-5">
			<p class="m-0 text-center text-white">Copyright &copy; STUN 2021</p>
		</div>
	</footer>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>
</html>
