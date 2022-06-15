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
<script src="${rootPath}/static/js/check.js?2022-06-09-002"></script>
<script src="${rootPath}/static/js/join.js?2022-06-09-002"></script>

</head>
<body>
    <header>
        <div class="d3">
          <h1>니꺼<br>내꺼</h1>
        </div>
        <div class="d1">
          <h1>내꺼니꺼</h1>
        </div>
        <div class="d2">
          <i class="fa-solid fa-people-roof fa-3x" style="color: white"></i>
          <i class="fa-regular fa-bell fa-3x" style="color: white"></i>
          <div id="mypage">
            <i class="fa-solid fa-circle-user fa-3x" style="color:white"></i>
            <div class="nav_box">
                <nav id="nav_menu">
                        <ul class="list">
                        	<li><a href="${rootPath}/mypage">마이페이지</a></li>
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
            </div>
         </div>
    </div>  

    </header> 
	<form class="join" method="POST">
		<fieldset>
			<legend>회원가입</legend>
			<div>
				<label class="blue">User Name(ID)</label>
				<input name="username" id="username" placeholder="USER NAME" autocomplete="off" />
				<button class="id-check" type="button">중복검사</button>
			</div>
			<div>
				<label class="blue">비밀번호</label>
				<input name="password" id="password" placeholder="PASSWORD" type="password" autocomplete="none" />
			</div>
			<div>
				<label class="blue">비밀번호 확인</label>
				<input name="re_password" id="re_password" placeholder="RE_PASSWORD" type="password" />
			</div>
			<div>
				<label class="blue">이름</label>
				<input name="name" id="name" placeholder="이름" />
			</div>
			<div>
				<label class="blue">이메일</label>
				<input name="email" id="email" placeholder="이메일" />
			</div>
			<div>
				<button type="button" class="join" id="btn_join">회원가입</button>
				<button type="reset">새로 작성</button>
			</div>
		</fieldset>
	</form>

</body>
</html>