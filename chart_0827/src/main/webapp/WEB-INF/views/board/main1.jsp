<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="/chart/resources/board.css">
</head>
<body>
	<div id="root">
		<div>
			<div class="header">
				<h2>${title }</h2>
				<div>
					<ul>
						<li>�޴�</li>
						<li>�޴�</li>
						<li>�޴�</li>
					</ul>

				</div>

			</div>
			<div class="container">
				<div>
					<table>
						<thead>
							<tr>
								<th>�۹�ȣ</th>
								<th>����</th>
								<th>�ۼ���¥</th>
								<th>�ۼ���</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${list }" var="dto">
							<tr>
								<td>${dto.idx }</td>
								<td>${dto.title }</td>
								<td>${dto.wdate }</td>
								<td>${dto.name }</td>
							</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
			<div class="footer">copy right</div>
		</div>
	</div>
</body>
</html>