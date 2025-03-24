<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>온라인 부동산 중개</title>
  <link rel="stylesheet" type="text/css" href="./css/index.css?v=7">
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
  <!--카테고리 및 배너-->
  <section>
 <%@include file="./banner.jsp" %>
  </section>
  <section>
      <%@include file="./quickmenu.jsp" %>
  </section>
  <!--금주 분양 매물 정보 시작-->
  <section>
      <%@include file="./weekinfo.jsp" %>
  </section>
  <!--금주 분양 매물 정보 끝-->
  <!--추천 분양 정보-->
  <section>
      <%@include file="./mdchoice.jsp" %>
  </section>
  <!--추천 분양 정보 끝-->
 </main>
 <!-- 카피라이터 -->
 <footer>
 <%@include file="./copyright.jsp" %>
 </footer>
</body>
</html>