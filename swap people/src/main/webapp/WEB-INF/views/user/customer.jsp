<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" >
<link href="https://fonts.googleapis.com/css2?family=Gugi&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" >
<link href="https://fonts.googleapis.com/css2?family=Gothic+A1:wght@100&family=Nanum+Gothic&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/bd2bbc2e2d.js"></script>
<style>
	.total {
	display: block;
	 margin: 20px auto;
	}

	.title {
		margin-bottom: 30px;
	}
	.title h1 {
	display: flex;
	margin: 0 auto;
	}

	.btn {
		display: inline-block;
		width: 100px;

	}
	
	ul li{
	list-style: none;
	padding: 30px;
	}
	form input {
	padding-left: 20px;
	display: flex;
	}

</style>
</head>
<body>

	<div class="total">
		<div class="title">
			<h1>회원정보 수정</h1>
			<hr>
		</div>
	<form action="${rootPath}/user/update" method="post" name="fr">
		<ul>
			<li>아이디 <input type="text" name="username" value="${USER.username}" readonly><br></li>
			<li>비밀번호 <input type="password" name="password" placeholder="비밀번호를 입력하세요" required><br></li>
			<li>이름 <input type="text" name="name" value="${USER.name}" readonly><br></li>
			<li>이메일 <input type="text" name="email" value="${USER.email}"><br></li>
			<li>전화번호<input type="text" name="tel" value="${USER.tel}"><br></li>
		</ul>
			<input type="submit" class="btn" value="수정하기"/>
			<input type="button" class="btn" value="취소" onclick=''/>
	</form>
	</div>

</body>
</html>