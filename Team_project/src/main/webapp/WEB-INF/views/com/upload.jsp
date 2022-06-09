<%@ page language="java" contentType="text/html; charset=UTF-16"
	pageEncoding="UTF-16"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-16">
<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gugi&display=swap"
	rel="stylesheet">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/js/all.min.js"></script>
<script src="https://kit.fontawesome.com/bd2bbc2e2d.js"
	crossorigin="anonymous"></script>
<link
	rel="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="${rootPath}/static/css/team.css" />
<style>
a {
	text-decoration: none;
}
section {
	width: 80%;
	justify-content: center;
	align-items: center;
	margin: 10px auto;
}
.title input {
	font-size: 20px;
	width: 50%;
	margin: 10px;
}
</style>
</head>
<body>
	<header>
		<div class="d3">
			<h1>
				니꺼<br />내꺼
			</h1>
		</div>
		<div class="d1">
			<a href="${rootPath}">
				<h1>내꺼니꺼</h1>
			</a>
		</div>
		<div class="d2">
			<a href="#"> <i class="fa-solid fa-people-roof fa-3x"
				style="color: white"></i>
			</a> <i class="fa-regular fa-bell fa-3x" style="color: white"></i>
			<div id="mypage">
				<i class="fa-solid fa-circle-user fa-3x" style="color: white"></i>
				<div class="nav_box">
					<nav id="nav_menu">
						<ul class="list">
							<a href="/my page/MyPage.html">
								<li>마이페이지</li>
							</a>
							<li>회원정보</li>
							<li>로그아웃</li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</header>
	<section>
		<div class="title">
		<span>제목 </span>
			<input type="text" placeholder="">
		</div>
		<div class="Contents">
			<textarea rows="30px" cols="100px"></textarea>
		</div>

	</section>
</body>
</html>