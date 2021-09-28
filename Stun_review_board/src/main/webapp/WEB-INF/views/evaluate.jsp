<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>평가</title>
<style>
@charset "UTF-8";

@import
	url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@700&display=swap')
	;

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
	background-color: #fff;
}

.left_panel {
	padding-top: 30px;
	padding-left: 10px;
	width: 20%;
	height: 100%;
	color: #ccc;
	/* 	background-color: #80ffcc; */
}

.left_panel>div {
	width: 80%;
	margin: 20px auto;
	/* 	background-color: #80ff80; */
}

.left_panel>div>h1 {
	color: #121410;
	margin: 10px 0;
}

.left_panel .leftbtndiv {
	width: 100%;
	/* 	background-color: #80ff80; */
}

.left_panel .leftbtndiv>button {
	width: 80%;
	margin-top: 10px;
	margin-left: 15px;
	padding: 10px 0;
	border-radius: 4px;
	background-color: #EBF7FF;
	font-size: 1.5rem;
	cursor: pointer;
}

.right_panel {
	padding-top: 30px;
	padding-left: 10px;
	width: 80%;
	height: 100%;
	color: #ccc;
	/* 	background-color: #80ffcc; */
}

.right_panel>div {
	width: 100%;
	margin: 20px auto;
	/* 	background-color: #80ff80; */
}

.right_panel>div>h1 {
	color: #121410;
	margin: 10px 0;
}

.right_panel .rightbtndiv {
	width: 100%;
	/* 	background-color: #80ff80; */
}

.right_panel .rightbtndiv>button {
	width: 80%;
	margin-top: 10px;
	margin-left: 15px;
	padding: 10px 0;
	border-radius: 4px;
	background-color: #EBF7FF;
	font-size: 1.5rem;
	cursor: pointer;
}

svg {
	width: 200px;
	height: 200px;
	border: 1px solid black;
	margin-left: 20px;
}

th, td {
	width: 200px;
	padding: 0px;
}

table {
	border-spacing: 10px;
}

.table-wrapper {
	margin-right: 30px;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="http://d3js.org/d3.v3.min.js" charset="utf-8"></script>
</head>
<body>
	<%
	String storename = request.getParameter("title");
	%>
	<div class="container">
		<div class="left_panel">
			별점 그래프<br>
			<svg id="myGraph1"></svg>
			<script src="/reviewflavour/resources/barjson.js"></script>
		</div>
		<div class="right_panel">
			<div class="right_panel_main">
				별점 후기 남기는 게시판
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
								<td>${dto.title}</td>
								<td>${dto.content}</td>
								<td>${dto.nickname}</td>
								<td>${dto.wtime}</td>
								<td>${dto.hits}</td>
							</tr>
						</c:forEach>
						<%-- <tr>
							<form action="evaldb" method="post">
								<td><%=storename%></td>
								<input type="hidden" name="title" value=<%=storename%>>
								<td><input type="text" name="content"
									placeholder="후기를 입력하세요"></td>
								<td><input type="text" name="nickname"
									placeholder="등록하실 닉네임"></td>
								<td><input type="text" name="wtime" placeholder="오늘 날짜"></td>
								<td><input type="text" name="hits" placeholder="조회수"></td>
								<td><input type="submit" value="등록하기"></td>
ㄴ							</form>
						</tr> --%>
					</tbody>
				</table>
			</div>
		</div>
	</div>

	<script src="/flavourgood/resources/js/jquery.min.js"></script>
	<script src="/flavourgood/resources/js/browser.min.js"></script>
	<script src="/flavourgood/resources/js/breakpoints.min.js"></script>
	<script src="/flavourgood/resources/js/util.js"></script>
	<script src="/flavourgood/resources/js/main.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>

</body>
</html>