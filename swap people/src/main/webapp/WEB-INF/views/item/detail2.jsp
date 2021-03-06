<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://fonts.googleapis.com/css2?family=Gugi&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/bd2bbc2e2d.js" crossorigin="anonymous"></script>
</head>
<style>
  section {
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

    nav ul li {
        display: flex;
        padding: 10px;
        color: white;
        flex-direction: column;
    }

    a {
        text-decoration: none;
        color: inherit;
    }

    .container {
        display: flex;
        flex-direction: column;
        width: 40%;
        margin: 0 auto;
    }

    div.album {
        overflow: hidden;
    }

    div.album div.images1 img {
        width: 100%;
        opacity: 1;
        transition: 1s ease-in-out;
    }

    div.images2 img {
        width: 200px;
        height: 100px;

    }

    div.ticker {
        overflow: hidden;
    }

    div.ticker:hover div.images {
        cursor: pointer;
    }

    div.ticker img {
        width: 150px;
        border: 1px solid #ccc;
        opacity: 1;
        transition: opacity 0.6s ease-in-out;
    }

    div.ticker img:hover {
        opacity: 0.6;
    }

    .total {
        border-bottom: 1px solid #ccc;
        height: 70%;
        display: flex;
    }

    .images1,
    .images2 {
        display: flex;
        transition: 1s;
        flex: 1;
    }

    .pro {
        display: inline-block;
        border-left: 1px solid #ccc;
        margin: 10px;
        padding-left: 50px;

    }

    .profile {
        display: flex;
        flex: 1;
        box-sizing: border-box;
        margin-top: 50px;
        border-bottom: 1px solid #ccc;

    }

    .profile2 {
        display: flex;
        flex-direction: column;
        width: 500px;
        padding: 10px;
        font-weight: bold;

    }

    #bong {
        display: flex;
        margin-top: 20px;
    }

    #bong p {
        margin: 10px 20px;
    }

    #bong input {
        margin-left: 100px;
        border: none;
        width: 200px;
        cursor: pointer;
        background-color: rgb(0 208 255);
    }

    #bong input:hover {
        background-color: rgb(45, 142, 163);
        color: white;
    }


    .profile3 {
        top: 300px;
        width: 300px;
    }

    article {
        display: flex;
        margin: 50px;
    }

    .tag {
        margin-top: 150px;
    }

    .input {
        width: 300px;
        height: 30px;
    }

    #article1 {
        font-size: 16px;
        background-color: rgb(0 208 255);
        opacity: 0.7;
        padding: 5px;
        border-radius: 4px;
        display: inline-block;
        width: 150px;
        height: 40px;
        line-height: 30px;
    }

    article input {
        display: inline-block;
        color: rgb(94, 94, 94);
        width: 700px;
        height: 40px;
        border-radius: 4px;
    }

    .rating-number {
        font-size: 15px;
        font-weight: 500;
        margin-right: 0.5rem;
        margin-left: 20px;
        padding-left: 0;
        box-sizing: border-box;
        display: flex;

    }

    .heart {
        display: inline-block;
        float: right;
        font-size: 20px;
        margin-left: 20px;
        margin-top: 10px;
        text-align: center;
        width: 100px;
        height: 70px;
        padding: 10px;
        color: white;
        background-color: #ccc;
        cursor: pointer;
    }

    .heart:hover {
        background-color: salmon;
    }

    .trading {
        display: inline-block;
        margin-top: 20px;
        margin-left: 1 0px;
    }

    .trading1 {
        display: flex;
    }

    .trading2 {
        display: flex;
        margin-top: 20px;
    }

    .trading2 ul {
        display: flex;
        flex-direction: column;
    }

    .trading2 ul li {
        padding-top: 20px;
    }

    .trading2 ul:first-child {
        color: grey;
        font-weight: bold;
        margin-right: 70px;
    }

    .trading2 span {
        color: rgb(162, 139, 139);
        padding-right: 100px;
    }

    .youngo {
        margin: 100px 100px;
    }

    .you {
        margin-left: 130px;
        font-size: 25px;
        padding: 5px;
        border-width: 3px;
        border-radius: 10px;
        border-style: solid;
        display: inline-block;
    }

    .go {
        margin-left: 300px;
        font-size: 25px;
        padding: 5px;
        border-width: 3px;
        border-radius: 10px;
        border-style: solid;
        display: inline-block;
    }

    .same {
        display: flex;
        top: 1000px;
        padding: 0;
        margin: 0;

    }

    .same img {
        width: 300px;
        height: 200px;
    }

    .reply {
        display: inline-block;
        margin: 50px auto;
    }

    h3 {
        font-weight: bold;
    }

    .reply2 {
        display: inline-block;
        cursor: pointer;
        margin-bottom: 20px;
    }

    .reply3 {
        display: inline-block;
        padding-left: 10px;
    }

    .square {
        margin: 10px;
        border-color: #ccc;
        width: 1000px;
        height: 100px;
    }

    .enter {
        float: right;
        width: 50px;
        margin-right: 40px;
    }

    .replybox {
        margin-top: 20px;
        margin-bottom: 100px;
    }

    #rating {
        margin-top: 20px;
        display: flex;
        cursor: pointer;
    }

    .uerpage {
        background-color: rgb(0 208 255);
        padding: 1rem;
    }

    .uerpage:hover {
        box-shadow: 2px 2px 5px;
    }
</style>
<%@ include file="../include/header.jsp"%>
<body>
    <section>
        <div class="total">
            <div class="container">
                <div class="album">
                    <div class="images1">
                        <img src="${rootPath}/static/images/bicycle1.jpeg" />
                    </div>
                </div>
                <div class="ticker">
                    <div class="images2">
                        <img src="${rootPath}/static/images/bicycle2.jpeg" />
                        <img src="${rootPath}/static/images/bicycle3.jpeg" />
                        <img src="${rootPath}/static/images/bicycle4.jpeg" />
                        <img src="${rootPath}/static/images/bicycle5.jpeg" />
                        <img src="${rootPath}/static/images/bicycle6.jpeg" />
                    </div>
                </div>
            </div>
            <div class="pro">
                <div class="profile">
                    <div class="profile2">
                        <h1>????????? ???????????? ?????????</h1>
                        <div id="bong">
                            <i class="fa-solid fa-circle-user fa-2x" style="color:grey"></i>
                            <p>??????</p>
                            <div class="uerpage">
                                <a href="${rootPath}/item/we">??????????????????</a>
                            </div>
                        </div>
                    </div>
                </div>
                    <div class="trading2">
                        <ul>
                            <li>????????????</li>
                            <li>????????? ??? ?????? ??????</li>
                            <li>?????? ??????</li>
                            <li>?????????</li>
                            <li>?????? ?????? ??????</li>
                        </ul>
                        <ul>
                            <li>??????</li>
                            <li>?????????</li>
                            <li>??????/?????????</li>
                            <li>????????? ??????</li>
                            <li>??????????????? ??????</li>
                        </ul>
                    </div>
                    <div class="tag">
                        <div id="article1">?????? ?????? ?????? List</div>
                        <input type="text" value="#?????? #????????? #????????? # ????????? # ????????? # ???????????? # ?????????"  readonly="readonly" class="input">
                    </div>

                </div>
            </div>

        </div>

        <article>
            <div class="reply">
                <div class="reply2">
                    <i class="fa-solid fa-comment-dots"></i>
                    <div class="reply3">?????? 0</div>
                </div>
                <hr>
                <div class="replybox">
                    <h3>??????</h3>
                    <input type="text" placeholder="????????? ???????????????" class="square">
                    <input type="button" value="??????" class="enter">
                </div>
                <div>
                    <div class="list">????????? ?????? ??????</div>

                    <div class="same">
                        <div><img src="${rootPath}/static/images/ex1.jpeg"></div>
                        <div><img src="${rootPath}/static/images/ex2.jpeg"></div>
                        <div><img src="${rootPath}/static/images/ex3.jpeg"></div>
                        <div><img src="${rootPath}/static/images/ex4.jpeg"></div>
                    </div>
                </div>
        </article>
    </section>
</body>
<script>
    const ticker_click_cb = (e) => {
        const ticker_img = e.target
        if (ticker_img.tagName === "IMG") {

            console.log(ticker_img.src);

            const album = document.querySelector("div.album");
            const albumImg = album.querySelector("img");

            albumImg.style.marginLeft = "-100%";
            albumImg.style.opacity = "0";


            const newImg = document.createElement("img")
            newImg.src = ticker_img.src;

            album.querySelector("div.images1").appendChild(newImg);

            setTimeout(() => {

                album.querySelector("div.images1 img").remove();
            }, 1000);
        } // end if img
    }; // end ticker_click_cb
    document.addEventListener("DOMContentLoaded", () => {
        const ticker = document.querySelector("div.ticker");
        if (ticker) {
            ticker.addEventListener("click", ticker_click_cb);
        }
    });
</script>
</html>