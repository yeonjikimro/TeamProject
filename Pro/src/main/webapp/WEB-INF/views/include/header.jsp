<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet"
	href="${rootPath}/static/css/team.css?ver=2022-06-08-001" />
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
                        	<li><a href="${rootPath}/user/mypage">마이페이지</a></li>
                            <li>홈으로 가기</li>
                            <c:if test="${empty USER}">
	                            <li><a href="${rootPath}/user/login"> 로그인</a></li>
			                    <li><a href="${rootPath}/user/join">회원가입</a></li>
		                    </c:if>
		                        
                            <c:if test="${not empty USER}">
                            	<li><a href="${rootPath}/user/login">(${USER.name})</a></li>
		                        <li><a href="${rootPath}/home">Logout</a></li>
		                    </c:if>
                        </ul>   
                </nav>
            </div>
         </div>
    </div>  

   </header> 