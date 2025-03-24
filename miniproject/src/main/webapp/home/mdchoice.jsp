<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>아이파크 프로젝트</title>
    
</head>
<body>
    <div class="recommend">
        <p>추천분양정보<br><em>실시간 추천 분양정보를 한곳에!</em></p>
        <div class="md_estates">
            <ul id="md-list">
                <!-- 프로젝트 목록이 여기에 동적으로 추가됩니다. -->
            </ul>
        </div>
    </div>

    <script>
        // JSON 데이터 로드
        fetch('./json/md_choice.json')
            .then(response => response.json())
            .then(data => {
                const mdList = document.getElementById("md-list");
                data.md_db.forEach(item => {
                    const imageUrl = item[0]; // 이미지 경로
                    const title = item[1]; // 제목
                    const description = item[2]; // 설명
                    const link = item[3]; // 링크

                    // 각 항목을 동적으로 생성
                    const listItem = document.createElement("li");

                    const imageDiv = document.createElement("div");
                    const img = document.createElement("img");
                    img.src = imageUrl; // 이미지 경로 설정
                    imageDiv.appendChild(img);

                    const titleSpan = document.createElement("span");
                    titleSpan.innerHTML = title; // 제목 설정

                    const descriptionDiv = document.createElement("div");
                    descriptionDiv.innerHTML = description; // 설명 설정

                    // 링크 추가
                    const linkElement = document.createElement("a");
                    linkElement.href = link;
                    linkElement.textContent = "자세히 보기";

                    // 요소들을 li 안에 추가
                    listItem.appendChild(imageDiv);
                    listItem.appendChild(titleSpan);
                    listItem.appendChild(descriptionDiv);
                    listItem.appendChild(linkElement);

                    // 최종적으로 md-list에 추가
                    mdList.appendChild(listItem);
                });
            })
            .catch(error => {
                console.error('JSON 파일을 불러오는 데 문제가 발생했습니다.', error);
            });
    </script>
</body>
</html>