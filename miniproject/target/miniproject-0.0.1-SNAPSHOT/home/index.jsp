<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
    <%@taglib prefix="cr" uri="http://java.sun.com/jsp/jstl/core" %> 
    <%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="ko">
<style>
/* 모든 링크에 빨간색을 적용 */
.aptname {
   font-weight: bold;
        }

.red-bold {
   color: red; 
   font-weight: bold; 
        }

.mdtitle {
  display: block;
  margin-top: 10px;
  font-weight: bold;
  text-align: left;  
}

.mddescription {
  font-size: 10px;
  margin-top: 10px;
  text-align: left;
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
  <div class="weekdays">
      <p>금주분양 매물정보<br><em>이번주 신규 매물정보!</em></p>
      <div class="week_estates">
          <ul>
        <cr:forEach var="wk" items="${wkall}">        
          <li>
            <p class="red-bold">${wk.apt_sec}</p>
            <div class="aptname">${wk.apt_name}</div>
            <aside>${fn:substring(wk.apt_adr, 4, 12)}</aside>
            <span>${wk.apt_jr}|${wk.apt_id}</span><br>
            <label>${wk.buy_date}|${wk.apt_date}</label>            
           <a href="week_tails.html" style="display: block;">
           <div><img src="./room/${wk.apt_image}" width="100%" height="200"></div>
            </a>
          </li>
          </cr:forEach>
        </ul>
      </div>
    </div> 
  </section>
  <!--금주 분양 매물 정보 끝-->
  <!--추천 분양 정보-->
<section>
  <div class="recommend">
    <p>추천분양정보<br><em>실시간 추천 분양정보를 한곳에!</em></p>
    <div class="md_estates">
      <ul style="list-style-type: none; padding: 0; margin: 0; display: flex; flex-wrap: wrap;">
        <cr:forEach var="md" items="${mdall}">
          <li style="margin-right: 20px; margin-bottom: 20px; width: 23%;">
            <a href="${md.mdlink_adr}" style="display: block;">
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