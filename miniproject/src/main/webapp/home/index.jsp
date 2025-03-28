<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
    <%@taglib prefix="cr" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html lang="ko">
<style>
#mdlist {
  display: flex;
  gap: 20px;
  padding: 0;
  list-style: none;
}

.mditem {
  flex: 1;
  max-width: 23%;
  text-align: left;
}

.mdimage img {
  width: 100%;
  height: 200px;
  object-fit: cover;
}

.mdtitle {
  display: block;
  margin-top: 10px;
  font-weight: bold;
}

.mddescription {
  font-size: 12px;
  margin-top: 10px;
}
</style>
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
  <div class="recommend">
    <p>추천분양정보<br><em>실시간 추천 분양정보를 한곳에!</em></p>
    <div class="md_estates">
      <ul id="mdlist">
        <cr:forEach var="md" items="${mdall}">
          <li class="mditem">
            <a href="${md.mdlink_adr}">
              <img src="./md_room/${md.mdimage}" width="100%" height="200" alt="${md.mdtitle}">             
              <span class="mdtitle">${md.mdtitle}</span>
              <div class="mddescription">${md.mdtitle_texts}</div>
            </a>
          </li>
        </cr:forEach>
      </ul>
    </div>
  </div>
</section>

 <!--추천 분양 정보 끝-->
 </main>
 <!-- 카피라이터 -->
 <footer>
 <%@include file="./copyright.jsp" %>
 </footer>
</body>
</html>