<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${rootPath}/static/css/team.css" />
<link rel="stylesheet" href="${rootPath}/static/css/home.css" />
<script>
	const rootPath = '${rootPath}'
</script>
</head>
<%@ include file="../include/header.jsp"%>
<style>
* {
	margin: 0;
	padding: 0;
}

div.container {
	display: flex;
	flex: 1;
	margin: 0 auto;
	width: 70%;
}

.row table {
	margin: 100px 30px;
	width: 1000px;
}

th.notice_see {
	height: 80px;
}

tr {
	border-bottom: 1px solid rgb(0, 208, 255);
}

tbody {
	margin: 50px;
}

tr td {
	margin: 30px;
}
tr td:nth-child(1) {
	font-weight: bold;
}
</style>
<body>

	<div class="container">
		<div class="row">
			<table class="table table-striped"
				style="text-align: center; border: 1px solid #ddd">
				<thead>
					<tr>
						<th colspan="2" class="notice_see"
							style="background-color: rgb(0, 208, 255); text-align: center;">게시판
							글 보기</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${NOTE}" var="NOTE">
						<tr>
							<td style="width: 20%; height: 150px;">글 제목</td>
							<td colspan="2">${NOTE.notice_title}</td>
						</tr>
						<tr>
							<td>작성자</td>
							<td colspan="2">관리자</td>
						</tr>
						<tr>
							<td>내용</td>
							<td colspan="2" style="height: 200px; text-align: left;">
								${NOTE.notice_content}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<a href="${rootPath}/faqnotice" class="btn-primary">목록</a>

		</div>
	</div>
</body>
</html>