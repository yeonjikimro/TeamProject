<%@ page language="java" contentType="text/html; charset=UTF-16"
    pageEncoding="UTF-16"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-16">
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
	form,div.login_info {
		width: 30%;
		margin:20px auto;
	}
	fieldset {
		border:1px solid rgb(0 208 255);
		display: flex;
		flex-direction: column;
		justify-content: center;
		align-items: center;
	}
	legend {
		text-align: center;
		padding:10px;
	}
	
	form input, form button{
		width: 80%;
		padding:8px;
		margin:5px;
	}
	
</style>
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
	<section>
	<form method="POST" autocomplete="off">
	<fieldset>
		<legend>로그인</legend>
		<input name="username" placeholder="USER NAME"/>
		<input name="password" type="password" placeholder="PASSWORD" />
		<button>로그인</button>
	</fieldset>
</form>
<a href="${rootPath}/join">회원가입 바로가기</a>
<div class="login_info">
	<c:if test="${not empty USER }">
		<div><b>아이디 : </b>${USER.username}</div>
		<div><b>이름 : </b>${USER.name}</div>
		<div><b>권한 : </b>${USER.role}</div>
		<div><b>email : </b>${USER.email}</div>
		<div><a href="${rootPath}/logout">로그아웃</a></div>
	</c:if>
</div>
	
	</section>

</body>
</html>