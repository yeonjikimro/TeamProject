<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link href="https://fonts.googleapis.com/css2?family=Gugi&display=swap"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Gothic+A1:wght@100&family=Nanum+Gothic&display=swap"
	rel="stylesheet">
<script src="https://kit.fontawesome.com/bd2bbc2e2d.js"></script>
</head>
<%@ include file="../include/header.jsp"%>
<style>
a {
	text-decoration: none;
	color: inherit;
}

.kim {
	display: flex;
	justify-content: center;
	margin-top: 10px;
	margin-left: 20px;
}

.kim h1, h3 {
	font-size: 30px;
	display: inline-block;
}

.kim div input {
	margin-left: 30px;
	font-size: 20px;
	display: flex;
	flex-direction: column;
	background-color: salmon;
	height: 30px;
}

.section {
	min-width: 1200px;
	width: 70%;
	align-items: center;
	justify-content: center;
	margin: 100px auto;
	flex: 1;
	padding: 5px;
	display: flex;
	flex-direction: column;
}

.head {
	display: flex;
	flex-direction: row;
	font-size: 30px;
	margin: 0 auto;
	font-weight: bolder;
	margin-bottom: 100px;
}

.icon {
	display: flex;
	flex-direction: column;
	width: 50px;
}

.head h1+div {
	width: 500px;
	margin: 50px 10px 50px 0;
}



div label {
	margin: 50px 0 0 0;
	display: inline-block;
	margin-right: 50px;
	width: 100px;
	padding: 10px 0;
	text-align: center;
	cursor: pointer;
}
.sell input {
	display:none;
}

.detail {
	padding-bottom: 10px;
	cursor: pointer;
}

.boxes {
	display: inline-block;
	margin-left: 100px;
}

.box {
	display: inline-block;
	margin: 10px 0;
	background-color: bisque;
	text-align: center;
	width: 100px;
	height: 30px;
	line-height: 30px;
}

.box:hover {
	cursor: pointer;
	color: #ccc;
}

.abc {
	display: flex;
	flex-direction: row;
	margin: 0 auto;
}

footer div {
	background-color: rgb(0, 208, 255);
	position: absolute;
	width: 100%;
}

#ing-box:checked ~ .ing-box,
#comple-box:checked ~ .comple-box {
	color: #ccc;
	font-weight: 900;
	display: inline-block;
	border-bottom: 2px solid salmon;
}


.sell ul {
	display:none;

}
.sell ul li {
	list-style: none;
	float: left;
	
}

#ing-box:checked ~ .ing-list,
#comple-box:checked ~ .comple-list {
	display: block;
}
</style>
<div class="section">
		<div class="head">마이페이지</div>
			<div class="abc">
				<div class="icon">
					<i class="fa-solid fa-circle-user fa-3x"
						style="color: rgb(0, 208, 255)"></i>
				</div>
				<div class="kim">
					<h1 class="blue">${USER.username}님</h1>
						<div>
							<input type="button" value="회원정보 수정" onClick="window.open('customer')">
						</div>
				</div>
			</div>
		<div class="sell">
			<input type="radio" id="ing-box" name="sell-box">
			<label for="ing-box" class="ing-box">판매중</label>
			
			<input type="radio" id="comple-box" name="sell-box">
			<label for="comple-box" class="comple-box">판매완료</label>
		
		<hr>

<%-- 		<c:forEach items="${POSTS}" var="POST"> --%>

		<ul class="ing-list">
			<li><img src="${rootPath}/static/images/cloth.jpeg"></li>
			<li><%--<a class="detail">${POSTS.title} --%></li>
			<li><a class="box">수정하기</a></li>
			<li><a onclick='window.open("complete", "complete", "width= 300px, height=500px")'>판매중</a></li>
		</ul>
<%-- 		</c:forEach> --%>
<%-- 		<c:forEach items="${POSTS}" var="POST"> --%>

		<ul class="comple-list">
			<li><img src="${rootPath}/static/images/bicycle1.jpeg"></li>
			<li><%--<a class="detail">${POSTS.title} --%></li>
			<li><a class="box">수정하기</a></li>
			<li><a onclick='window.open("complete", "complete", "width= 300px, height=500px")'>판매중</a></li>
		</ul>
<%-- 		</c:forEach> --%>
</div>
</div>
</body>


</html>