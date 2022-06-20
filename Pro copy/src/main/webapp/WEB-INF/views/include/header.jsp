<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet"
	href="${rootPath}/static/css/team.css?ver=2022-06-17-002" />
<script src="${rootPath}/static/js/header.js?ver=2022-06-17-001"></script>
<header class="hj-header">
	<div class="d3 hj-d1">
		<h1>
			니꺼<br>내꺼
		</h1>
	</div>
	<div class="d1 hj-d2">
		<h1>내꺼니꺼</h1>
	</div>
	<div class="d2 hj-d3">
		<a href="${rootPath}/faqno/faqnotice">
			<i class="fa-solid fa-people-roof fa-3x hj-i  hj-1"
			style="color: white"></i> 
		</a>
		<div class="hj-3"><i class="fa-solid fa-circle-user fa-3x hj-i hj-4"
			style="color: white"></i></div>
	</div>
	<nav id="nav_menu" class="hj-menu">
		<ul class="list hj-list">
			<li><a href="${rootPath}/user/${USER.username}/mypage">마이페이지</a></li>
			<li><a href="${rootPath}/">홈으로 가기</a></li>
			<c:if test="${empty USER}">
				<li><a href="${rootPath}/user/login"> 로그인</a></li>
				<li><a href="${rootPath}/user/join">회원가입</a></li>
			</c:if>

			<c:if test="${not empty USER}">
				<li><a href="${rootPath}/user/login">(${USER.name})</a></li>
				<li><a href="${rootPath}/home">Logout</a></li>
			</c:if>
		</ul>
	</nav>

</header>


