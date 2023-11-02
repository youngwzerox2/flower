// 회원가입하기
$("#join").click(function(e) { 
    e.preventDefault(); // 기본 폼 제출 방지

    if ($("#member_name").val() === "") {
        alert("회원명을 입력해주세요.");
        $("#member_name").focus();
    } else {
        var email = $("#member_email").val();
        if (email === "") {
            alert("이메일을 입력해주세요.");
            $("#member_email").focus();
        } else if (!validateEmail(email)) {
            alert("유효한 이메일 주소를 입력해주세요.");
            $("#member_email").focus();
        } else {
            var password = $("#member_password").val();
            if (password === "") {
                alert("비밀번호를 입력해주세요.");
                $("#member_password").focus();
            } else if (password.length < 8) {
                alert("비밀번호는 최소 8자 이상이어야 합니다.");
                $("#member_password").focus();
            } else {
                // 모든 조건이 충족되면 폼을 제출
                //$("form").submit();
            }
        }
    }
});

// 중복 확인을 통과한 경우 회원가입 폼을 제출
$("#idChk").click(function() {
    var email = $("#member_email").val();

    if (email === "") {
        alert("이메일을 입력해주세요.");
    } else {
        $.ajax({
            url: "idChk",
            type: "post",
            dataType: "json",
            data: { "member_email": $("#member_email").val() },
            success: function(data) {
                if (data === 1) {
                    $("#emailCheckResult").text("중복된 이메일입니다.");
                } else if (data === 0) {
                    $("#idChk").attr("value", "Y");
                    $("#emailCheckResult").text("사용가능한 이메일입니다.");
                }
            }
        });
    }
});

// 취소
$("#cancel").click(function() {
    var confirmed = confirm("취소하시겠습니까?");
    if (confirmed) {
        location.href = "/flower/member/login"; // 로그인 페이지로 이동
    }
});
