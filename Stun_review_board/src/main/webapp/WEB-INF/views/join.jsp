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

<title>STUN 회원가입</title>

<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet" />
<link rel="stylesheet" href="resources/css/styles.css">

</head>
<body>
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
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="index">로그인</a></li>
					<li class="nav-item"><a class="nav-link" href="notice">공지사항</a></li>
				</ul>
				<div style="color: white;">${sessionScope.dto.id}님환영합니다.</div>
			</div>
		</div>
	</nav>
	<!-- 회원가입 섹션-->
	<section class="bg-light py-5">
		<div class="container px-5 my-5 px-5">
			<div class="text-center mb-5">
				<h2 class="fw-bolder">STUN 에 오신 것을 환영합니다!</h2>
				<p class="lead mb-0">회원가입을 시작하겠습니다.</p>
			</div>
			<div class="row gx-5 justify-content-center">
				<div class="col-lg-6">
					<form action="joinaction" method="post">

						<!-- NickName input-->
						<div class="form-floating mb-3">
							<input class="form-control" name="nickname" id="nickname"
								type="text" placeholder="Enter your nickname..."
								data-sb-validations="required" /> <label for="nickname">닉네임</label>
							<div class="invalid-feedback" data-sb-feedback="name:required">A
								nickname is required.</div>
						</div>
						<!-- Name input-->
						<div class="form-floating mb-3">
							<input class="form-control" name="name" id="name" type="text"
								placeholder="Enter your name..." data-sb-validations="required" />
							<label for="name">이름</label>
							<div class="invalid-feedback" data-sb-feedback="name:required">A
								name is required.</div>
						</div>
						<!-- 아이디 입력-->
						<div class="form-floating mb-3">
							<input class="form-control" name="id" id="id" type="text"
								placeholder="Enter your ID..." data-sb-validations="required" />
							<label for="id">아이디</label>
							<div class="invalid-feedback" data-sb-feedback="userID:required">A
								userID is required.</div>
						</div>
						<!-- 비번 입력-->
						<div class="form-floating mb-3">
							<input class="form-control" name="pw" id="pw" type="password"
								placeholder="Enter your password..."
								data-sb-validations="required,email" /> <label for="pw">비밀번호</label>
							<div class="invalid-feedback"
								data-sb-feedback="password:required">A password is
								required.</div>
							<div class="invalid-feedback"
								data-sb-feedback="password:password">Password is not
								valid.</div>
						</div>

						<!-- 제출 성공시 뜨는 메세지-->
						<div class="d-none" id="submitSuccessMessage">
							<div class="text-center mb-3">
								<div class="fw-bolder">Form submission successful!</div>
								To activate this form, sign up at <br /> <a
									href="https://startbootstrap.com/solution/contact-forms">https://startbootstrap.com/solution/contact-forms</a>
							</div>
						</div>
						<!-- 제출 에러 메세지-->
						<div class="d-none" id="submitErrorMessage">
							<div class="text-center text-danger mb-3">Error sending
								message!</div>
						</div>
						<!--마지막 버튼!  -->
						<div class="d-grid gap-3 d-sm-flex justify-content-sm-center">
							<input class="btn btn-outline-primary" type="submit" value="회원가입">
							<input class="btn btn-outline-primary" type="reset" value="다시입력">
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>

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
