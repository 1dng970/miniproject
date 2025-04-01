function joinok() {
    var frm = document.forms[0];  // 첫 번째 폼을 가져옵니다.

    // 아이디와 패스워드 입력 여부 체크
    if (frm.mid.value == "") {
        alert("아이디를 입력하세요");
        return false;  // 폼 제출을 막고 함수 종료
    } else if (frm.mpass.value == "") {
        alert("패스워드를 입력하세요");
        return false;  // 폼 제출을 막고 함수 종료
    } else {
        // 패스워드 재입력값 확인
        var pw2 = document.getElementById("mpass2").value;
        if (pw2 !== frm.mpass.value) {
            alert("동일한 패스워드를 입력하셔야만 회원가입이 진행 됩니다.");
            return false;  // 폼 제출을 막고 함수 종료
        } else {
            // 모든 검사를 통과하면 폼 제출
            frm.submit();
        }
    }
}