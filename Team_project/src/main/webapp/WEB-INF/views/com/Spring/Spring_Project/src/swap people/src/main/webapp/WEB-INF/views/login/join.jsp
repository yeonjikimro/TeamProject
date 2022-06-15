<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link href="https://fonts.googleapis.com/css2?family=Gugi&display=swap"
	rel="stylesheet" />
<link rel="stylesheet" href="${rootPath}/static/css/team.css" />
<script src="https://kit.fontawesome.com/bd2bbc2e2d.js"
	crossorigin="anonymous"></script>
<link href="https://fonts.googleapis.com/css2?family=Gugi&display=swap"
	rel="stylesheet">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/js/all.min.js"></script>
<style>
a {
	text-decoration: none;
}

form.join {
	width: 60%;
	margin: 20px auto;
}

form.join fieldset {
	border: 1px soild black;
}

form div {
	display: flex;
	margin: 5px auto
}

form input {
	flex: 1;
	padding: 8px;
}

.warn {
	color: red;
	font-weight: 900;
	text-decoration: underline;
}

.ok {
	color: black;
}

fieldset legend {
	color: black;
	font-size: 30px
}
</style>
<script>
	const rootPath = "${rootPath}"
</script>
<script src="${rootPath}/static/js/join.js?ver=2022-05-27-001"></script>
</head>
<body>
	<header>
		<div class="d3">
			<h1>
				니꺼<br>내꺼
			</h1>
		</div>
		<div class="d1">
			<a href="${rootPath}">
				<h1>내꺼니꺼</h1>
			</a>
		</div>
		<div class="d2">
			<a href="${rootPath}/community.html"> <i
				class="fa-solid fa-people-roof fa-3x" style="color: white"></i>
			</a> <i class="fa-regular fa-bell fa-3x" style="color: white"></i>
			<div id="mypage">
				<i class="fa-solid fa-circle-user fa-3x" style="color: white"></i>
				<div class="nav_box">
					<nav id="nav_menu">
						<ul class="list">
							<a href="my page/MyPage.html">
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
	<form class="join" autocomplete="off" method="POST">
		<fieldset>
			<legend>회원가입</legend>
			<div>
				<input name="username" placeholder="USER NAME" autocomplete="off" />
				<button class="id-check" type="button">중복검사</button>
			</div>
			<div class="username"></div>
			<div>
				<input name="password" type="password" autocomplete="none" />
			</div>
			<div>
				<input name="re_password" type="password" />
			</div>
			<div>
				<input name="name" placeholder="이름" />
			</div>
			<div>
				<input name="email" placeholder="이메일" />
			</div>
			<div>
				<button type="button" class="join">회원가입</button>
				<button type="reset">새로 작성</button>
			</div>
		</fieldset>
	</form>

</body>
</html>