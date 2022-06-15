<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" >
<link href="https://fonts.googleapis.com/css2?family=Gugi&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" >
<link href="https://fonts.googleapis.com/css2?family=Gothic+A1:wght@100&family=Nanum+Gothic&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/bd2bbc2e2d.js" ></script>
</head>
<style>

a {text-decoration: none; color: inherit; }

.kim {
    display: flex;
    justify-content: center;
    margin-top: 10px;
    margin-left: 20px;

}
.kim div {
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

section.main article {
	flex: 3;
	margin: 0 5px;
	border: 1px solid blue;
}
.up {
    display: flex;
    flex-direction: row;
    margin-left: 70px;
}
.head {
    display: flex;
    flex-direction: row;
    font-size: 30px;
    margin: 0 auto;
    font-weight: bolder;
    margin-bottom: 100px;
}
section ul {
    list-style: none;
    display : block;
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
.line {
    display: flex;
    width: 1px;
    height: 100px;
    background-color: #ccc;
    margin-left: 100px;
}
.stre {
    display: flex;
    flex-direction: row;
    margin-top: 30px;
    flex: 1;
}
.stars {
    display: flex;
    margin-left: 30px;
    margin-right: 20px;
    cursor: pointer;
}
#review {
    display: flex;
  font-size: 20px;  
  font-weight: bold;
  text-align: right;
  cursor: pointer;
}
.sell ul {
    margin : 50px 0 0 0;
}
.sell ul li{
    display: inline-block;
    margin-right: 50px;
    width: 100px;
	padding: 10px 0;
    text-align: center;
    cursor: pointer;
    
}
.sell ul li:hover {
    color: #ccc;
    border-bottom: 2px solid salmon;
}

.sell ul li:nth-child(1) {
    color: #ccc;
    border-bottom: 2px solid salmon;
}
.sell input {
    float: right;
    font-size: 15px;
    width: 100px;
    height: 30px;
    background-color: salmon;
    border-color: white;
    border-radius: 5px;
}
#upload {
    margin-left: 150px;
    background-color: grey;
    padding: 7px;
    border-radius: 10px;
    font-weight: bolder;
}
.stuff{
    display: flex;
    line-height: 1;
    margin-top: 30px;
}

.context {
    margin-top: 70px;
    margin-left: 50px;
    vertical-align: baseline;
    width: 500px;
    display: flex;
}
.detail{
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
    float: left;
    margin-top: 20px;
    margin-bottom: 20px;
}
footer div{
    background-color: rgb(0 208 255);
    position: absolute;
    width: 100%;
}
.ing {
    line-height: 190px;
    margin-left: 100px;
    font-weight: bold;
    font-size: 20px;
    cursor: pointer;
}
.picture img{
    width: 150px;
    display: flex;
    margin: 20px;
    cursor: pointer;
}
.dat {
    display: flex;
    flex-direction: row;
    margin-top: 50px;
    cursor: pointer;
    color:grey;
}
.dat div {
    margin-left: 10px;
}
.con {
    display: flex;
    flex-direction: column;
}
</style>
<link rel="stylesheet" href="${rootPath}/static/css/team.css"/>
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
                            <li>마이페이지</li>
                            <li>찜목록</li>
                            <li>회원정보</li>
                            <li>홈으로 가기</li>
                            <li>로그아웃</li>
                        </ul>   
                </nav>
            </div>
         </div>
    </div>  
    </header>
    <section>
        <div class="head">마이페이지</div>
        <div class="up">
            <div class="abc">
                <div class="icon">
                <i class="fa-solid fa-circle-user fa-3x" style="color:rgb(0 208 255)"></i>
                </div>
                <div class="kim">
                    <div>김연지님</div>
                    <a href="/custom.html">
                        <div><input type="button" value="회원정보 수정"></div>
                    </a>
                </div>
            </div>
            <div class="line">
            </div>
            <div class="stre">
                <div class="stars">
                    <i class="fa-solid fa-star fa-2x"></i>
                    <i class="fa-solid fa-star fa-2x"></i>
                    <i class="fa-solid fa-star fa-2x"></i>
                    <i class="fa-solid fa-star fa-2x"></i>
                    <i class="fa-solid fa-star fa-2x"></i>
                </div>
                <p id="review"> 5.0 (총 10개의 후기)</p>
            </div>
        </div>
    <div class="sell">
        <ul>
            <li>판매중</li>
            <li>판매완료</li>
            <li>찜 목록</li>
        </ul>
            <input type='button' value='업로드' onclick='window.open("/customer.jsp")'>
    </div>
    <hr>
    <div class="stuff">
            <div class="picture"><img src="${rootPath}/static/images/bicycle1.jpeg"></div>
        <div class="context">
            <div class="con">
                <a class="detail">거의 새거 같은 자전거</a>
                <div class="dat">
                    <i class="fa-regular fa-comment-dots"></i>
                    <div>댓글 : 4개</div>
                </div>
            </div>
            <div class="boxes">
                <a class="box">Like 5</a>
                <a class="box">수정하기</a>
            </div>
        </div>
            <div class="ing">
        <a onclick='window.open("/mypage_ing.jsp", "complete", "width= 300px, height=300px")'>
                판매중
        </a>
            </div>
    </div>
    <div class="stuff">
            <div class="picture"><img src="${rootPath}/static/images/cloth.jpeg"></div>
        <div class="context">
            <div class="con">
                <a class="detail">한 번 밖에 안입은 옷</a>
                <div class="dat">
                    <i class="fa-regular fa-comment-dots"></i>
                    <div>댓글 : 1개</div>
                </div>
            </div>
            <div class="boxes">
                <a class="box">Like 1</a>
                <a class="box">수정하기</a>
            </div>
        </div>
        <div class="ing">
            판매중
        </div>
    </div>
    </section>
    <footer>
        <div>
            <address>CopyRight &copy; duswlskfk42@naver.com</address>
        </div>
    </footer>
    
</body>

</html>