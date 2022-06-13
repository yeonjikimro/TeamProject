<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-16">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Gugi&display=swap"
	rel="stylesheet" />

<script src="https://kit.fontawesome.com/bd2bbc2e2d.js"></script>
<link href="https://fonts.googleapis.com/css2?family=Gugi&display=swap"
	rel="stylesheet">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/js/all.min.js"></script>


<style>
a {
	text-decoration: none;
}

section {
	border: 1px solid rgb(0, 208, 255);
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	width: 500px;
	margin:0;
}

form.login {
	width: 500px;
	margin: 0;
	padding: 10px;
}

form.login input, form.login button {
	margin: 10px;
}

form input, form button {
	width: 70%;
	padding: 8px;
	margin: 10px;
}
</style>

<link rel="stylesheet"
	href="${rootPath}/static/css/team.css?2022-06-08-002" />
<script src="${rootPath}/static/js/login.js?20220610001"></script>
</head>
<body>
	<header>
		<div class="d3">
			<h1>
				니꺼<br>내꺼
			</h1>
		</div>
		<div class="d1">
			<h1>내꺼니꺼</h1>
		</div>
		<div class="d2">
			<i class="fa-solid fa-people-roof fa-3x" style="color: white"></i> <i
				class="fa-regular fa-bell fa-3x" style="color: white"></i>
			<div id="mypage">
				<i class="fa-solid fa-circle-user fa-3x" style="color: white"></i>
				<div class="nav_box">
					<nav id="nav_menu">
						<ul class="list">
							<li><a href="${rootPath}/user/mypage">마이페이지</a></li>
							<li>홈으로 가기</li>
							<c:if test="${empty USER}">
								<li><a href="${rootPath}/user/login"> 로그인</a></li>
								<li><a href="${rootPath}/user/join">회원가입</a></li>
							</c:if>

							<c:if test="${not empty USER}">
								<li><a href="${rootPath}/user/login">(${USER.name})</a></li>
								<li><a href="${rootPath}/user/join">Logout</a></li>
							</c:if>
						</ul>
					</nav>
				</div>
			</div>
		</div>

	</header>
	<section>
		<form method="post" class="w3-container w3-card-4 login">
			<h2 class="w3-text-blue">로그인</h2>

			<c:if test="${error == 'LOGIN_NEED'}">
				<div class="w3-red w3-padding-16 w3-margin-left">* 로그인이 필요한
					서비스 입니다.</div>
			</c:if>
			<c:if test="${error == 'USERNAME_FAIL'}">
				<div class="w3-red w3-padding-16 w3-margin-left">ID 가 없음.
					회원가입을 먼저 하세요</div>
			</c:if>
			<c:if test="${error == 'PASSWORD_FAIL'}">
				<div class="w3-red w3-padding-16 w3-margin-left">* 비밀번호가 틀렸습니다</div>
			</c:if>

			<label class="w3-text-blue"><strong>ID(아이디)</strong></label> 
			<input name="username" placeholder="USERNAME" class="w3-input w3-border">
				<br>

			<label class="w3-text-blue"><strong>비밀번호</strong></label> <input
				name="password"  type="password" placeholder="PASSWORD" class="w3-input w3-border">
			<button class="w3-button btn-login">로그인</button>
		</form>


	</section>

</body>
</html>