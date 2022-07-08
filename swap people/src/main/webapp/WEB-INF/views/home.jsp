<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/js/all.min.js"></script>
<script src="https://kit.fontawesome.com/bd2bbc2e2d.js"
	crossorigin="anonymous"></script>
<link
	rel="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
	rel="stylesheet">

<link rel="stylesheet" href="${rootPath}/static/css/home.css" />
<script>
	const rootPath = '${rootPath}'
</script>
</head>
<%@ include file="include/header.jsp"%>
<body>

	<section>
		<nav class=" category">
			<ul class="cat_name">
				<c:forEach var="category" items="${CATS}">
					<li data-cat-code="${category.cat_code}">${category.cat_name}</li>
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
				</select> <a href="${rootPath}/item/posting"> <i class="fa-solid fa-plus"></i></a>
				<input type="submit" id="submit" value="검색">
			</div>
			<div class="all">
				<div id="warp">
					<a href="${rootPath}/item/detail2"> <img
						src="${rootPath}/static/images/ex1.jpeg" alt="camera"> <span>메리다
							스컬트라 자전거</span>
					</a>
				</div>
				<div id="warp">
					<a href="#"> <img src="${rootPath}/static/images/iphone.jpg"
						alt="iphone"> <span>아이폰</span>
					</a>
				</div>
				<div id="warp">
					<a href="#"> <img src="${rootPath}/static/images/kitchen.jpg"
						alt="kitchen"> <span>주전자 팔아요</span>
					</a>
				</div>
				<div id="warp">
					<a href="#"> <img src="${rootPath}/static/images/cello.jpg"
						alt="cello"> <span>첼로 팝니다</span>
					</a>
				</div>
				<div id="warp">
					<a href="#"> <img src="${rootPath}/static/images/happy.jpg"
						alt="happy"> <span>인형 팝니다</span>
					</a>
				</div>
				<div id="warp">
					<a href="#"> <img src="${rootPath}/static/images/dog.jpg"
						alt="dog"> <span>강아지 분양합니다</span>
					</a>
				</div>
				<div id="warp">
					<a href="#"> <img
						src="${rootPath}/static/images/microphone.jpg" alt="microphone">
						<span>마이크</span>
					</a>
				</div>
				<div id="warp">
					<a href="#"> <img
						src="${rootPath}/static/images/cinnamon-rolls.jpg"
						alt="cinnamon-rolls"> <span>빵 교환</span>
					</a>
				</div>
				<div id="warp">
					<a href="#"> <img src="${rootPath}/static/images/camera.jpg"
						alt="camera"> <span>카메라 팔아요</span>
					</a>
				</div>
				<div id="warp">
					<a href="#"> <img
						src="${rootPath}/static/images/watercolor.jpg" alt="watercolor">
						<span>그림 그려드려요</span>
					</a>
				</div>
				<div id="warp">
					<a href="#"> <img src="${rootPath}/static/images/kitchen.jpg"
						alt="kitchen"> <span>주전자 팔아요</span>
					</a>
				</div>
				<div id="warp">
					<a href="#"> <img
						src="${rootPath}/static/images/watercolor.jpg" alt="watercolor">
						<span>그림 그려드려요</span>
					</a>
				</div>
				<div id="warp">
					<a href="#"> <img src="${rootPath}/static/images/kitchen.jpg"
						alt="kitchen"> <span>주전자 팔아요</span>
					</a>
				</div>
				<div id="warp">
					<a href="#"> <img src="${rootPath}/static/images/guitar.png"
						alt="guitar"> <span>기타 팝니다</span>
					</a>
				</div>
				<div id="warp">
					<a href="#"> <img src="${rootPath}/static/images/iphone.jpg"
						alt="iphone"> <span>아이폰</span>
					</a>
				</div>

				<div id="warp">
					<c:forEach var="posting" items="${item}">
						<a href="${rootPath}/item/detail"> <img src="${POSTING.image}">
							<span>${POSTING.title}</span>
						</a>
					</c:forEach>
				</div>
			</div>
		</form>
	</section>
	\
</body>
</html>