$(function() {
    // 취소
    $("#cancel").click(function() {
        var confirmed = confirm("취소하시겠습니까?");
        if (confirmed) {
            location.href = "member/login"; // 로그인 페이지로 이동
        } else {
            location.reload(); // 현재 페이지를 리로드
        }
    });

    // 회원가입하기
    $("#join").click(function() {
        if ($("#member_name").val() === "") {
            alert("회원명을 입력해주세요.");
            $("#member_name").focus();
            return false;
        }
        var email = $("#member_email").val();
        if (email === "") {
            alert("이메일을 입력해주세요.");
            $("#member_email").focus();
            return false;
        }
        if (!validateEmail(email)) {
            alert("유효한 이메일 주소를 입력해주세요.");
            $("#member_email").focus();
            return false;
        }
        if ($("#member_password").val() === "") {
            alert("비밀번호를 입력해주세요.");
            $("#member_password").focus();
            return false;
        }

        var idChkVal = $("#idChk").val();
        if (idChkVal === "N") {
            alert("중복확인 버튼을 눌러주세요.");
            return false; // 폼 제출을 막음
        }

        // 중복 확인을 통과한 경우 회원가입 폼을 제출
    });

    $("#idChk").click(function() {
    	var email = $("#member_email").val();
    
	    if (email === "") {
	        alert("이메일을 입력해주세요.");
	        return;
	    }
    
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
    }); // function 끝
    
    
    
    
    
});
