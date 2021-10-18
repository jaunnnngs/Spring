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

<title>가게 게시판</title>

<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet" />
<link rel="stylesheet" href="resources/css/styles.css">
<link rel="stylesheet"
	href="/Stun_review_board/resources/css/fontawesome-all.min.css" />
<link rel="stylesheet" href="/Stun_review_board/resources/css/main.css" />
<style>
.table, tr {
	border: 2px solid gray;
}
</style>
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
					<c:if test="${not empty sessionScope.dto.id }">
						<div style="color: white;">${sessionScope.dto.id}님환영합니다.</div>
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="logout">로그아웃</a></li>
					</c:if>
					<c:if test="${empty sessionScope.dto.id}">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="index">로그인</a></li>
					</c:if>
					<li class="nav-item"><a class="nav-link" href="notice">공지사항</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<%
	String storename = request.getParameter("title");
	%>
	<!-- 게시판 섹션-->
	<section class="bg-light py-5">
		<div class="container">
			<div class="text-center"></div>
			<div class="row justify-content-center" style="width: 100%">
				<div class="col-lg-8" style="width: 100%">
					<header>
						<h2>가게 게시판</h2>
						<h4>
							<td>가게이름 : <%=storename%></td>
						</h4>
					</header>
					<table class="table-wrapper">
						<thead>
							<tr>
								<th>글번호</th>
								<th>가게이름</th>
								<th>내용</th>
								<th>작성자</th>
								<th>작성날짜</th>
								<th>조회수</th>
							</tr>
						</thead>

						<tbody>

							<c:forEach items="${list}" var="dto">
								<tr>
									<td><c:if test="${dto.idx ne '0'}">${dto.idx}</c:if></td>
									<td>${dto.title}</td>
									<td>${dto.content}</td>
									<td>${dto.nickname}</td>
									<td>${dto.wtime}</td>
									<td>${dto.hits}</td>
									<td><a class="btn btn-outline-primary"
										href="update?idx=${dto.idx}">수정</a></td>
									<td><a class="btn btn-outline-primary"
										href="deleteaction?idx=${dto.idx}">삭제</a></td>
								</tr>
							</c:forEach>
							<tr>
								<form action="boardwrite" method="post">
									<td><%=storename%></td>
									<td><input type="hidden" name="title" value=<%=storename%>></td>
									<td><input type="text" name="content"
										placeholder="후기를 입력하세요"></td>
									<td><input type="text" name="nickname"
										placeholder="등록하실 닉네임"></td>
									<td><input type="text" name="wtime" placeholder="오늘 날짜"></td>
									<td><input type="text" name="hits" placeholder="조회수"></td>
									<td><input type="submit" value="등록하기"></td>
								</form>
							</tr>
						</tbody>
					</table>
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