<%@page import="com.stun.review_board.dto.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<!-- <link rel="stylesheet"
	href="/Stun_review_board/resources/assets/css/fontawesome-all.min.css" /> -->
<link rel="stylesheet"
	href="/Stun_review_board/resources/assets/css/main.css" />
</head>
<body>
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
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="index">로그인</a></li>
					<li class="nav-item"><a class="nav-link" href="notice">공지사항</a></li>
				</ul>
				<div style="color: white;">${sessionScope.dto.id}님환영합니다.</div>
			</div>
		</div>
	</nav>
	<!-- 게시판 섹션-->
	<section class="bg-light py-5">
		<div class="container px-5 my-5 px-5">
			<div class="text-center mb-5"></div>
			<div class="row gx-5 justify-content-center">
				<div class="col-lg-6">
					<header>
						<h2>수정하기</h2>
					</header>


					<form action="updateaction" method="post">
						<input type="hidden" name="idx" value="${param.idx}"> <!--지정된 idx 불러오기  -->
						<!-- title input-->
						<div class="form-floating mb-3">
							<input class="form-control" name="title" id="title" type="text"
								placeholder="title..." data-sb-validations="required" /> <label
								for="title"></label>
							<div class="invalid-feedback" data-sb-feedback="title:required">title</div>
						</div>
						<!-- content input-->
						<div class="form-floating mb-3">
							<input class="form-control" name="content" id="content"
								type="text" placeholder="content..."
								data-sb-validations="required" /> <label for="content">내용</label>
							<div class="invalid-feedback" data-sb-feedback="content:required">content</div>
						</div>
						<!-- nickname input-->
						<div class="form-floating mb-3">
							<input class="form-control" name="nickname" id="nickname"
								type="text" placeholder="Enter your nickname..."
								data-sb-validations="required" /> <label for="nickname">닉네임</label>
							<div class="invalid-feedback"
								data-sb-feedback="nickname:required">nickname</div>
						</div>
						<!-- date 입력-->
						<div class="form-floating mb-3">
							<input class="form-control" name="wtime" id="wtime" type="text"
								placeholder="wtime..." data-sb-validations="required" /> <label
								for="wtime">날짜</label>
							<div class="invalid-feedback" data-sb-feedback="wtime:required">wtime</div>
						</div>

						<!-- hits 입력-->
						<div class="form-floating mb-3">
							<input class="form-control" name="hits" id="hits" type="text"
								placeholder="hits..." data-sb-validations="required" /> <label
								for="hits">hits</label>
							<div class="invalid-feedback" data-sb-feedback="hits:required">hits</div>
						</div>

						<!--마지막 버튼!  -->
						<div class="d-grid gap-3 d-sm-flex justify-content-sm-center">
							<input class="btn btn-outline-primary" type="submit" value="저장">
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
	<script src="/Stun_review_board/resources/js/jquery.min.js"></script>
	<script src="/Stun_review_board/resources/js/browser.min.js"></script>
	<script src="/Stun_review_board/resources/js/breakpoints.min.js"></script>
	<script src="/Stun_review_board/resources/js/util.js"></script>
	<script src="/Stun_review_board/resources/js/main.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>
</html>
