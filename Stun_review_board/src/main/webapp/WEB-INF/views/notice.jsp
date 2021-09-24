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
	<div>${sessionScope.dto.id}님환영합니다.</div>
		<%
		// 현재 세션 상태를 체크한다
		String userID = null;
		if (session.getAttribute("id") != null) {
			userID = (String) session.getAttribute("id");
		}
		%>

		<!-- Responsive navbar-->
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
			<div class="container px-5">
				<a class="navbar-brand" href="notice">STUN</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<%
					// 로그인 하지 않았을 때 보여지는 화면
					if (userID == null) {
					%>
					<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="index">로그인</a></li>
						<li class="nav-item"><a class="nav-link"
							href="notice">공지사항</a></li>

					</ul>
					<%
					// 로그인이 되어 있는 상태에서 보여주는 화면
					} else {
					%>
					<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="index">로그아웃</a></li>
						<li class="nav-item"><a class="nav-link"
							href="notice">맛집후기</a></li>
					</ul>
					<%
					}
					%>
				</div>
			</div>
		</nav>
		<!-- 게시판 섹션-->
		<section class="bg-light py-5">
			<div class="container px-5 my-5 px-5">
				<div class="text-center mb-5">
					<h2 class="fw-bolder">STUN 공지사항</h2>
				</div>
				<div class="row gx-5 justify-content-center">
					<div class="col-lg-6">
						<form id="contactForm" data-sb-form-api-token="API_TOKEN">

							

						</form>

					</div>
				</div>
			</div>
		</section>
	</form>

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
