<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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
form.join {
	width: 70%;
	margin: 50px auto;
	padding: 20px;
}

form fieldset {
	border: 1px solid rgb(0, 208, 255);
}

form fieldset legend {
	font-size: 40px;
	font-weight: bold;
}

form.join input, form.join button {
	margin: 5px;
}

form.join input, form.join label {
	width: 500px;
	margin: 10px;
	font-size: 20px;
}

form.join button {
	display: flex;
	font-size: 20px;
	margin: 30px 10px;
	margin-left: auto;
	background-color: rgb(0, 208, 255);
	padding: 10px;
	border: none;
}

form.join button:hover {
	box-shadow: 2px 2px gray;
}

form.join label {
	font-weight: bold;
	width: 200px;
	display: flex;
	color: blue;
}

.ye_total {
	margin: 20px 300px;
}

.warn {
	color: red;
	font-weight: 900;
	text-decoration: underline;
}

.ok {
	color: black;
}
</style>
<script>
	const rootPath = "${rootPath}"
</script>
<script src="${rootPath}/static/js/join.js?2022-06-14-001"></script>

</head>
<%@ include file="../include/header.jsp"%>
<body>
	<form class="join" method="POST" autocomplete="off">
		<fieldset>
			<legend>회원가입</legend>
			<div class=ye_total>
				<div>
					<label class="w3-text-blue">User Name(ID)</label> <input
						name="username" id="username" placeholder="USERNAME"
						class="w3-input w3-border">
					<div class="w3-container error"></div>
				</div>
				<div>
					<label class="blue">비밀번호</label> <input name="password"
						id="password" placeholder="PASSWORD" type="password" />
					<div class="w3-container error"></div>
				</div>
				<div>
					<label class="blue">비밀번호 확인</label> <input name="re_password"
						id="re_password" placeholder="RE_PASSWORD" type="password" />
					<div class="w3-container error"></div>
				</div>
				<div>
					<label class="blue">이름</label> <input name="name" id="name"
						placeholder="이름" />
					<div class="w3-container error"></div>
				</div>
				<div>
					<label class="blue">이메일</label> <input name="email" id="email"
						placeholder="이메일" />
					<div class="w3-container error"></div>
				</div>
				<div>
					<label class="blue">전화번호</label> <input name="tel" type="tel" id="tel"
						placeholder="000-000-0000" pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{3,4}" maxlength="11"/>
					<div class="w3-container error"></div>
				</div>
				<div>
					<button type="button" class="join" id="btn-join">회원가입</button>
				</div>
			</div>
		</fieldset>
	</form>

</body>
</html>