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
</head>
<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        background-color: rgb(230, 198, 198);
    }
    body {
        width: 100vw;
        height: 100vh;
        display: flex;
        flex-direction: column;
    }
    section {
		margin: 20px auto;
		flex: 1;
		display: flex;
		flex-direction: column;
	}
    h1 {
        font-weight: bold;
    }
    h1, h3 {
        text-align: center;
        margin: 20px auto;
    }
    .nick {
        margin: 10px auto;
        font-size: 15px;
    }
    .nick select {
        margin-left: 20px;
        width: 100px;
        font-size: 15px;
        text-align: center;
    }
    .butt {
        margin: 50px auto;
    }
    .butt button {
        padding: 10px;
        font-size: 20px;
        margin-right: 30px;
    }
    .butt button:hover {
        background-color: salmon;
    }
</style>
<body>
    <section>
       <h1>거래 완료</h1>
        <h3>거의 새거 같은 자전거</h3>
        <div class="nick"> 거래자 닉네임 : 
            <select name='nickname'>
                <option value='c1'>호두</option>
                <option value='c2'>나댕이</option>
                <option value='c3'>토끼</option>
                <option value='c4'>돌림이</option>
            </select>
        </div>
        <div class="butt">
            <button onclick="self.close()">거래완료</button>
            <button onclick="self.close()">취소</button>
        </div>
    </section>
</body>
</html>