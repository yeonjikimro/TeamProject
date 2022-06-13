<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<script>
 function popMap(){
	 
	 window.open("${rootPath}/posting/map3", "map", "width = 1000, height = 400, top=300, left=300");
	 
 }
 
 function insertBtn(){
	 
	 var frm = document.getElementById("insertFrm");
	 
	 frm.submit();
	 
 }
</script>
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

	<%-- <form id="insertFrm" action="${rootPath}/posting/addPosting"		method="POST"> --%>
	<form id="insertFrm" action="${rootPath}/posting/insert"
		method="POST">

		<section>
			<div class="d31">
				<div class="d311">
					<img src="${rootPath}/static/images/직찍1.jpg" id="d311" value="사진없음" />
				</div>
				<div class="d32">
					<input type="file" id="image" accept="image/*"
						onchange="setThumbnail(event);" multiple />
				</div>
				<div id="image_container" style="cursor: pointer;"></div>
				<script>
			        function setThumbnail(event) {
			          for (var image of event.target.files) {
			            var reader = new FileReader();
			            reader.onload = function (event) {
			              var img = document.createElement("img");
			              img.setAttribute("src", event.target.result);
			              img.onclick = function (e) {
			
			                document.getElementById("d311").setAttribute("src", e.target.src);
			              };
			              document
			                .querySelector("div#image_container")
			                .appendChild(img);
			            };
			            console.log(image);
			            reader.readAsDataURL(image);
			          }
			        }
	      	   </script>
			</div>
			<table class="tbl01">
				<colgroup>
					<col width="10%" />
					<col />
				</colgroup>
				<tr>
					<th colspan="2">제목</th>
				</tr>
				<tr>
					<td colspan="2"><input class="wp80" type="text" name="title"
						placeholder="내용을 입력해주세요" required /></td>
				</tr>
				<tr>
					<th colspan="2">내용</th>
				</tr>
				<tr>
					<td colspan="2"><textarea name="cont" placeholder="내용을 입력해주세요"
							cols="200" rows="20"></textarea></td>
				</tr>
				<tr>
					<th>거래방법</th>
					<td><select id="cars" name="cars">
							<option value="">----선택----</option>
							<option value="meet">대면(직거래)</option>
							<option value="deli">비대면(택배)</option>
					</select> <select id="cars" name="cars2">
							<option value="">----선택----</option>
							<option value="">가전</option>
							<option value="">디지털</option>
							<option value="">도서/음반/티켓</option>
							<option value="">가구/인테리어</option>
							<option value="">유아용</option>
							<option value="">생활/식품</option>
							<option value="">스포츠/레저</option>
							<option value="">의류/잡화</option>
							<option value="">뷰티/미용</option>
							<option value="">반려동물</option>
							<option value="">기타</option>
					</select></td>
				</tr>
				<tr>
					<th colspan="2">주소</th>
				</tr>
				<tr>
					<td colspan="2">
					<input type="text" class="wp50 mb10" id="addr"
						name="addr" value="" onclick="popMap()" readonly placeholder="주소">
					<input type="text" class="wp50" id="addrDtl" name="addrDtl"
						value="" placeholder="상세주소"></td>
				</tr>
				<tr>
					<th colspan="2">받고싶은 물품 태그</th>
				</tr>
				<tr>
					<td colspan="2">
						<input class="wp80" type="text" name="goods"
							placeholder="#자전거#커피머신#아이폰#세탁기#도서" required />
					</td>
				</tr>
			</table>
			<div>
				<input type="button" onclick="insertBtn()" value="저장" />
			</div>
		</section>
	</form>
</body>
<%@ include file="../include/footer.jsp"%>
</html>