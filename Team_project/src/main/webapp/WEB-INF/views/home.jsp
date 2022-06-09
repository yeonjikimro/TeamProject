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
<link rel="stylesheet" href="${rootPath}/static/css/home.css" />
<script>
	const rootPath = '${rootPath}'
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
		<a href="${rootPath}/com/community">
			<i class="fa-solid fa-people-roof fa-3x" style="color: white"></i>
			 </a>
			 <i class="fa-regular fa-bell fa-3x" style="color: white"></i>
			<div id="mypage">
				<i class="fa-solid fa-circle-user fa-3x" style="color: white"></i>
				<div class="nav_box">
					<nav id="nav_menu">
						<ul class="list">
							<a href="${rootPath}/mypage">
								<li>마이페이지</li>
							</a>
							<li>찜목록</li>
							<li>회원정보</li>
							<li>홈으로 가기</li>
							<c:choose>
								<c:when test="${empty USER}">
									<a href="${rootPath}/login/login">
										<li>로그인</li>
									</a>
									<a href="${rootPath}/login/join">
										<li>회원가입</li>
									</a>
								</c:when>
								<c:otherwise>
									<li>로그아웃</li>
								</c:otherwise>
							</c:choose>
						</ul>
					</nav>
				</div>
			</div>
		</div>

	</header>
	<section>
		<nav class=" category">
			<ul class="cat_name">
				<c:forEach var="cateogry" items="${CATS}">
					<li data-cat-code="${cateogry.cat_code}">${cateogry.cat_name}</li>
				</c:forEach>
			</ul>
		</nav>
		<form method="post">
			<div class="search">
				<input type="text" id="search01" name="tag" value="태그를 입력해주세요">
				<select class="deal" name="method">
					<option value="">거래 방식</option>
					<option value="택배">택배</option>
					<option value="대면">대면</option>
				</select> <a href="#"> <i class="fa-solid fa-plus"></i></a> <input
					type="submit" id="submit" value="검색">
			</div>
			<div class="all">
				<div id="warp">
					<a href="./my page/detail.html"> <img
						src="${rootPath}/static/images/ex1.jpeg" alt="camera"> <span>메리다
							스컬트라 자전거</span>
					</a>
				</div>
			</div>
		</form>
	</section>
</body>

</html>