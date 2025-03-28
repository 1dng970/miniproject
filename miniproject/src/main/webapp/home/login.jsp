<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>
    <link rel="stylesheet" type="text/css" href="./css/index.css?v=1">
    <link rel="stylesheet" type="text/css" href="./css/login.css?v=2">
    <style>
        .box {
            width: 800px;
            height: 300px;
            border: 1px solid black;
            overflow: auto;
        }
    </style>
</head>
<body>
    <!--최상단-->
    <header>
        <div class="top_banner"></div>
    </header>
    <!--최상단끝-->
    <!--메뉴-->
    <%@include file="./top.jsp" %>
    <!--메뉴끝-->
 <main>
    <aside class="login_pg">  
       
        <p>이메일로 시작하기</p>
        <div><input type="text" placeholder="이메일 주소" id="memail"></div>
        <div><input type="password" placeholder="비밀번호" id="mpass"></div>
        <div><input type="button" value="로그인" onclick="loginok()"></div>
        <div><input type="button" value="카카오로그인" class="kakao_btn"></div>
        <div>
            <span>회원가입</span>
            <span>이메일 찾기</span>
            <span>비밀번호 찾기</span>
        </div>
   
    </aside>
</main>

<!-- 카피라이터 -->
<footer>
    <%@include file="./copyright.jsp" %>
</footer>
</body>
</html>