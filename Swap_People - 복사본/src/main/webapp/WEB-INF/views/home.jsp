<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-16"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gugi&display=swap"
	rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/js/all.min.js"></script>
<script src="https://kit.fontawesome.com/bd2bbc2e2d.js"
	crossorigin="anonymous"></script>
<link
	rel="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="${rootPath}/static/css/team.css" />
<link rel="stylesheet" href="${rootPath}/static/css/home.css" />
<script>
	const rootPath = '${rootPath}';
	
		$(document).ready( function(){
			
		
		$(document).on("click",".cat", function(){
		var val1 = $(this).attr('value');
		console.log(val1);
		});
	});
</script>
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
			<a href="${rootPath}/nofaq/notice"> <i
				class="fa-solid fa-people-roof fa-3x" style="color: white"></i>
			</a> <i class="fa-regular fa-bell fa-3x" style="color: white"></i>
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
					<section class="main">
						<c:choose>

							<c:when test="${LAYOUT == 'JOIN' }">
								<%@ include file="/WEB-INF/views/user/join.jsp"%>
							</c:when>
							<c:when test="${LAYOUT == 'LOGIN' }">
								<%@ include file="/WEB-INF/views/user/login.jsp"%>
							</c:when>
							<c:when test="${LAYOUT == 'MYPAGE' }">
								<%@ include file="/WEB-INF/views/user/mypage.jsp"%>
							</c:when>
						</c:choose>
					</section>
				</div>
			</div>
		</div>

	</header>
	<section class="main">
		<nav class=" category">
			<ul class="cat_name">
				<c:forEach var="category" items="${CATS}" >
					<li class="cat" data-cat-code="${category.cat_code}" value="${category.cat_code}">${category.cat_name}</li>
				</c:forEach>
			</ul>
		</nav>

				<a href="${rootPath}/item/posting"> <i class="fa-solid fa-plus"></i></a>
		<div class="all">
			<div id="warp">
				<c:forEach var="posting" items="${item}">
					<a href="${rootPath}/item/detail">
					<div> 
					<img src="${POSTING.image}"> 
					</div>
					<span>${POSTING.title}</span>
					</a>
				</c:forEach>
			</div>
		</div>
	</section>
</body>
</html>