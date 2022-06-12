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

	li { list-style: none;
		line-height: 30px;
		margin-bottom: 10px;
		}
	label {width: 100px; display: inline-block; color: grey !important;}
	body > div {border: 1px solid #ccc; padding: 30px;
	}
	.title {
		margin-bottom: 30px;
	}
	form ul li {
		display: flex;
	}
	.phone {
		display: flex;
	}
	.phone select {
		margin-left: 40px;
	}

	.normal {
		margin-top: 100px;
		margin-bottom: 50px;
		
	}
	div.submit {
		display: inline-block;
		width: 100px;
		margin-top: 50px;
		margin-left: 500px;
	}
	.add {
		margin-right: 50px;
	}



</style>
<link rel="stylesheet" href="css/team.css"/>
</head>
<body>
	<header>
        <h1>내꺼니꺼</h1>
            <div id="group">
                <i class="fa-solid fa-people-roof fa-3x" style="color:white"></i>
            </div>
            <div id="bell">
                <i class="fa-regular fa-bell fa-3x" style="color:white"></i>
            </div>
            <div id="mypage">
                <i class="fa-solid fa-circle-user fa-3x" style="color:white"></i>
            </div>
    </header>
	<section>
	<div class="total">
		<div class="title">
			<h1>회원정보 수정</h1>
			<hr>
		</div>
	<form>
		<div>
			<ul>
				<li><label>이름</label> <input type='text' placeholder='공백 없이 입력하세요'></li>
				<li class="phone">전화번호
				<select name='phonenumber'>
					<option value='c1'>02</option>
					<option value='c2'>061</option>
					<option value='c3'>062</option>
				</select>
				
				<input type='text' name='middle' style= 'width: 50px;'>
				<input type='text' name='last' style= 'width: 50px;'>
				</li>
				<li>SMS 수신여부</li>
				<p><label><input type='checkbox' name='sms' value='수신함'>수신함</label>
				</p>
				<li><label>이메일</label><input type='text' name='email'> @
				<select name='service'>
					<option selected>직접입력</option>
					<option value='naver.com'>naver.com</option>
					<option value='daum.net'>daum.net</option>
					<option value='gmail.com'>google.com</option>
				</select></li>
				<li><label>휴대전화</label> <input type='number'></li>
				<li><label>비밀번호</label> <input type='password'>
				<input type="button" name ="중복검사"></li>
			</ul>
		</div>
		<div class="normal">
			<div class="title">
				<h1>기본 배송 수정</h1>
			<hr>
			</div>
			<ul>
				<li class="add"><label>우편번호</label> <input type='text'></li>
				<li class="add"><label>기본주소</label> <input type='text'></li>
				<li class="add"><label>상세주소</label> <input type='text'></li>
			</ul>
	</div>
		<div class="submit">
		<input type='submit' value='회원가입' style='width: 100px'>
		</div>
	</form>
	</div>

	</section>
</body>
</html>