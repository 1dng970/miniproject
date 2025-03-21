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
    <div class="banners">
      <ul>
        <li><img src="./banners/banner1.jpg"></li>
        <li><img src="./banners/banner2.jpg"></li>
      </ul>
    </div>
  </section>
  <section>
    <div class="quickmenu">
      <ul>
        <li>
        <span><img src="./ico/ico1.png"></span>
        <span>파트너가입</span>
        </li>
        <li>
        <span><img src="./ico/ico2.png"></span>
        <span>빌라,아파트</span>
        </li>
        <li>
        <span><img src="./ico/ico3.png"></span>
        <span>상가,창고</span>
        </li>
        <li>
        <span><img src="./ico/ico4.png"></span>  
        <span>오피스텔</span>
        </li>
        <li>
        <span><img src="./ico/ico5.png"></span> 
        <span>중개의뢰</span> 
        </li>
        <li>
        <span><img src="./ico/ico6.png"></span>
        <span>견적의뢰</span>    
        </li>
        <li>
        <span><img src="./ico/ico7.png"></span>
        <span>파트너가입</span>  
        </li>
      </ul>
    </div>
  </section>
  <!--금주 분양 매물 정보 시작-->
  <section>
    <div class="weekdays">
      <p>금주분양 매물정보<br><em>이번주 신규 매물정보!</em></p>
      <div class="week_estates">
        <ul>
          <li>
            <span>매매</span>
            <div>LH센트럴힐(공공임대)</div>
            <aside>송파구 문정동</aside>
            <span>아파트 | 공공임대</span>
            <label>2023.11 분양 | 2024.09 입주</label>
            <div><img src="./room/room1.jpg"></div>
          </li>
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
        <ul>
          <li>
            <div><img src="./md_room/md_1.jpg"></div>
            <span>도심 속 에코 라이프 입지<br>‘군산 레이크시티 아이파크’</span>
            <div>레이크 라이프 누릴 수 있는 프리미엄 조경에<br>입주민 라이프스타일 맞춤형 평면 설계까지</div>
          </li>
        </ul>
      </div>
    </div>
  </section>
  <!--추천 분양 정보 끝-->
 </main>
 <!-- 카피라이터 -->
 <footer>
  <div class="copyright">
    <ol>
      <li>
        <img src="./logo/e_click_logo.png" class="logos">
      </li>
      <li>
        <ul>
          <li>회사소개</li>
          <li>이용약관</li>
          <li>위치기반서비스 약관</li>
          <li>제휴문의</li>
          <li>개인정보처리방침</li>
          <li>신고센터</li>
        </ul>
      </li>
      <li>
        <ul>
          <li>저작권규약</li>
          <li>책임한계 및 법적고지</li>
          <li>이메일 무단수집거부</li>
          <li>고객센터문의</li>
          <li></li>
          <li></li>
        </ul>
      </li>
      <li>
        <ul>
          <li>e-Click 주식회사 | 대표 : 홍길동</li>
          <li>서울특별시 종로구 3가 국일빌딩 5F</li>
          <li>사업자번호 : 211-81-12345 | 통신판매업 : 2023-서울종로-1234호</li>
          <li>정보보호책임자 : 홍길동</li>
          <li>영업문의 : 02-123-5678</li>
          <li>팩스번호 : 02-550-1234</li>
        </ul>
      </li>
    </ol>
  </div>
 </footer>
</body>
</html>