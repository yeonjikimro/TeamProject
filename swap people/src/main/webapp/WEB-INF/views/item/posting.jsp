<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<script>
 function popMap(){
	 
	 window.open("${rootPath}/item/map3", "map", "width = 1000, height = 400, top=300, left=300");
	 
 }
 
 function insertBtn(){
	 
	 var frm = document.getElementById("insertFrm");
	 
	 if(document.getElementById("title").value == null || document.getElementById("title").value == ""){
		 alert("제목을 입력해주세요.");
		 document.getElementById("title").focus();
		 return false;
	 }
	 
	 if(document.getElementById("cont").value == ""){
		 alert("내용을 입력해주세요.");
		 document.getElementById("cont").focus();
		 return false;
	 }
	 
	 if(document.getElementById("cars").value == ""){
		 alert("거래방법을 선택해주세요.");
		 document.getElementById("cars").focus();
		 return false;
	 }
	 
	 if(document.getElementById("cat_code").value == ""){
		 alert("거래방법을 선택해주세요.");
		 document.getElementById("cat_code").focus();
		 return false;
	 }
	 
	 if(document.getElementById("addr").value == ""){
		 alert("주소를 입력해주세요.");
		 document.getElementById("addr").focus();
		 return false;
	 }
	 
	 if(confirm("저장하시겠습니까?")){
		 frm.submit();	 
	 }
	 
	 return "detail";
	 
 }
 
 function viewBtn(seq){
	 
	var frm = document.getElementById("insertFrm");
	document.getElementById("posting_seq").value= seq;
	frm.action ="${rootPath}/item/detail";
	frm.submit();
	 
 }
</script>
<%@ include file="../include/header.jsp"%>
<style>
/* * { */
/* 	margin: 0; */
/* 	padding: 0; */
/* 	box-sizing: border-box; */
/* } */

/* body { */
/* 	width: 800px; */
/* 	height: 100vh; */
/* 	display: flex; */
/* 	flex-direction: column; */
/* 	margin: 0 auto; */
/* } */
/* section { */
/* 	margin-top: 100px; */
/* } */

/* form { */
/* 	width: 800px; */
/* } */

h1 {
	text-align : center;
	margin-top : 30px;
}

table tr th, table tr td {
	display: flex;
	margin: 30px 50px;
	font-size: 30px;
	color: rgb(0, 208, 255);
}

.d32 input {
	margin: 30px 50px;
	width: 100px;
	height: 30px;
	float: right;
}

#title {
	width: 800px;
	height: 50px;
}

.selectCars {
	width: 150px;
	height: 30px;
	padding: 0 50px;
}

.wp50 {
	width: 150px;
	height: 30px;
	padding: 0 50px;
}

.wp80 {
	width: 300px;
	height: 30px;
}

#image {
	width: 150px;
	height: 30px;
}
#addr, #cars {
	margin-right: 50px;
}
.d31 {
    flex: 2;
    margin-top: 5%;
}
section div {
    display: flex;
    flex-direction: column;
    width: 50vw;
    align-self: center;
</style>
<body>
<div >
<h1>물물교환 글쓰기</h1>
</div>
	<form id="insertFrm" action="${rootPath}/item/insertPosting"
		method="POST">
		<section>
			<div class="d31">
				<div class="d311">
					<img src="../images/직찍1.jpg" id="d311" value="사진없음" />
				</div>
				<div class="d32">
					<input type="file" id="image" name="fileArray" accept="image/*"
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
					<th>제목</th>
					<td><input class="wp80" type="text" name="title" id="title"
						placeholder="내용을 입력해주세요" required /></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea name="cont" id="cont" placeholder="내용을 입력해주세요"
							cols="100" rows="20"></textarea></td>
				</tr>
				<tr>
					<th>거래방법</th>
					<td><select id="cars" name="cars" class="selectCars">
							<option value="">-------선택-------</option>
							<option value="meet">대면(직거래)</option>
							<option value="deli">비대면(택배)</option>
					</select> <select id="cat_code" name="cat_code" class="selectCars">
							<option value="">-------선택-------</option>
							<c:forEach var="item" items="${catCodeList}">
								<option value="${item.cat_code}">${item.cat_name}</option>
							</c:forEach>
					</select></td>
				</tr>
				<tr>
					<th>주소</th>
				</tr>
				<tr>
					<td><input type="text" class="wp50 mb10" id="addr" name="addr"
						value="" onclick="popMap()" readonly placeholder="주소"> <input
						type="text" class="wp50" id="addr_dtl" name="addr_dtl" value=""
						placeholder="상세주소"></td>
				</tr>
				<tr>
					<th>받고싶은 물품 태그</th>
					<td><input class="wp80" type="text" name="goods"
						placeholder="#자전거#커피머신#아이폰#세탁기#도서" required /></td>
				</tr>
			</table>
			<div class="d32">
				<input type="button" onclick="insertBtn()" value="저장" /> <input
					type="button" onclick="viewBtn('1')" value="뷰페이지" />
			</div>
		</section>
		<input type="hidden" id="writer" name="writer" value="test" /> <input
			type="hidden" id="posting_seq" name="posting_seq" value="0">
	</form>
</body>
</html>