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
<link rel="stylesheet" href="${rootPath}/static/css/community.css" />
<script src="https://kit.fontawesome.com/bd2bbc2e2d.js"
	crossorigin="anonymous"></script>
<link href="https://fonts.googleapis.com/css2?family=Gugi&display=swap"
	rel="stylesheet">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/js/all.min.js"></script>
<style>
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
		<article id="tab">
			<ul>
				<li class="on">커뮤니티</li>
				<li>FAQ</li>
				<li>공지사항</li>
			</ul>
		</article>
		<article id="search">
			<div>
				<a>제목 + 내용</a> <a class="on">제목</a> <a>내용</a> <input type="text"
					placeholder="검색어를 입력하세요" /> <input type="button" value="검색"
					onclick="popup()" />
			</div>
		</article>
		<article id="tb-list">
			<ul>
				<li>전체</li>
				<li><a>최신 순</a> <a>댓글 많은 순</a> <a>좋아요 많은 순</a> <a>조회순</a></li>
			</ul>
		</article>
		<article id="tb-list">
			<table>
				<colgroup style="width: 100%">
					<col width="80px" />
					<col />
					<col width="100px" />
					<col width="80px" />
					<col width="120px" />
				</colgroup>
				<thead>
					<tr>
						<th>No.</th>
						<th>제목</th>
						<th>등록자</th>
						<th>조회수</th>
						<th>등록일</th>
					</tr>
				</thead>
		<tbody>

		<c:forEach items="${COMMUNITY}" var="COMMUNITY" varStatus="INDEX">
			<tr data-isbn="${COMMUNITY.isbn}">
				<td>${INDEX.count}</td>
				<td>${COMMUNITY.title}</td>
				<td>${COMMUNITY.user}</td>
				<td>${COMMUNITY.publisher}</td>
				<td>${COMMUNITY.author}</td>
				<td>${COMMUNITY.pubdate}</td>
			</tr>
		</c:forEach>
		</tbody>
			</table>
		</article>
		<div id="paging">
			<a class="arrow"><i class="fa-solid fa-angles-left"></i></a> <a
				class="arrow"><i class="fa-solid fa-angle-left"></i></a> <a>1</a> <a>2</a>
			<a class="on">3</a> <a>4</a> <a>5</a> <a>6</a> <a>7</a> <a>8</a> <a>9</a>
			<a>10</a> <a class="arrow"><i class="fa-solid fa-angle-right"></i></a>
			<a class="arrow"><i class="fa-solid fa-angles-right"></i></a>
			<div class="make">
				<a href="${rootPath}/com/upload" class="btn-box">글쓰기</a>
			</div>
		</div>
	</section>
	<footer></footer>
</body>
</html>