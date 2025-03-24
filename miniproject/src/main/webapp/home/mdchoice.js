const jsondata ={
    "md_db":[
        ["./md_room/md_1.jpg","도심속에코 라이프입지<br>‘군산 레이크시티 아이파크’","레이크 라이프 누릴 수 있는 프리미엄 조경에<br>입주민 라이프스타일 맞춤형 평면 설계까지","https://www.r114.com/?_c=lots&_m=lotsnews&_a=newsdetail&bno=70&kind=0&search_keyword=&search_writer=&search_addr1=&search_addr2=&search_addr3=&sort=1&sort2=down&page=1&num=14428"],
        ["./md_room/md_2.jpg","청주 가경 아이파크 6단지 <br> 합리적인 분양가!","브랜드 시티의 중심 <br> 중대형 중심의 공간 특화!","https://www.r114.com/?_c=lots&_m=lotsnews&_a=newsdetail&bno=70&kind=0&search_keyword=&search_writer=&search_addr1=&search_addr2=&search_addr3=&sort=1&sort2=down&page=1&num=14430"],
        ["./md_room/md_3.jpg","풍부한 중심생활 인프라<br> '보문 센트럴 아이파크'","보문역 초역세권<br>성북천의 쾌적한 힐링 라이프","https://www.r114.com/?_c=lots&_m=lotsnews&_a=newsdetail&bno=70&kind=0&search_keyword=&search_writer=&search_addr1=&search_addr2=&search_addr3=&sort=1&sort2=down&page=1&num=14426"],
        ["./md_room/md_4.jpg","서산 첫 아이파크<br>‘서산 센트럴 아이파크’","도보로 누리는 안심 통학권<br>최고 29층, 서산의 랜드마크","https://www.r114.com/?_c=lots&_m=lotsnews&_a=newsdetail&bno=70&kind=0&search_keyword=&search_writer=&search_addr1=&search_addr2=&search_addr3=&sort=1&sort2=down&page=1&num=14429"]
    ]
};
function displayData() {
    const listContainer = document.getElementById("md-list");

    // md_db 데이터를 순차적으로 처리
    data.md_db.forEach(item => {
        const imageUrl = item[0];
        const title = item[1];
        const description = item[2];
        const link = item[3];

        // 새로운 div 생성
        const itemDiv = document.createElement("div");
        itemDiv.classList.add("md-item");

        // 이미지 요소 생성
        const image = document.createElement("img");
        image.src = imageUrl;
        image.alt = title;

        // 제목 요소 생성
        const itemTitle = document.createElement("h2");
        itemTitle.innerHTML = title;

        // 설명 요소 생성
        const itemDescription = document.createElement("p");
        itemDescription.innerHTML = description;

        // 링크 요소 생성
        const itemLink = document.createElement("a");
        itemLink.href = link;
        itemLink.textContent = "자세히 보기";

        // div에 이미지, 제목, 설명, 링크 추가
        itemDiv.appendChild(image);
        itemDiv.appendChild(itemTitle);
        itemDiv.appendChild(itemDescription);
        itemDiv.appendChild(itemLink);

        // md-list에 추가
        listContainer.appendChild(itemDiv);
    });
}

// 페이지가 로드되면 displayData 함수 호출
window.onload = displayData;