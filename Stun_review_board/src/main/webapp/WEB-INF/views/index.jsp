<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />

<title>로그인페이지</title>

<!-- 해커톤 부트스트랩 -->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet" />
<link rel="stylesheet" href="resources/css/styles.css">
<link rel="stylesheet" href="resources/index.css">
</head>
<body>
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
				<a class="navbar-brand" href="./index.jsp">STUN</a>
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
							aria-current="page" href="/Stun_review_board/views/join.jsp">로그인</a></li>
						<li class="nav-item"><a class="nav-link"
							href="../St_board/bbs.jsp">공지사항</a></li>

					</ul>
					<%
					// 로그인이 되어 있는 상태에서 보여주는 화면
					} else {
					%>
					<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="../St_board/logoutAction.jsp">로그아웃</a></li>
						<li class="nav-item"><a class="nav-link"
							href="../St_board/bbs.jsp">맛집후기</a></li>
					</ul>
					<%
					}
					%>
				</div>
			</div>
			</nav>
	<div class="container">
		<div class="item">
			<img  src="/Stun_review_board/resources/images/main.jpg">
		</div>
		<div class="item">
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
				<form action="joincheck" >
					<div class="join">
						<input type="submit" value="회원가입">
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>