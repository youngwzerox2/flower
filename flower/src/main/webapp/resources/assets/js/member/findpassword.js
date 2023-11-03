$(function() {

    $("#findPassword").click(function() {
        var email = $("#member_email").val();
        if (email === "") alert("이메일을 입력해 주세요.");
        else {
            // 이메일을 서버로 보내어 처리하는 로직을 추가
            $.ajax({
            url: "findEmailChk",
            type: "post",
            dataType: "json",
            data: { "member_email": $("#member_email").val() },
            success: function(data) {
                
                if (data == '1') {
                   alert("등록된 이메일입니다. 비밀번호 초기화 페이지로 이동합니다");
                   location.href = "/flower/member/resetpassword";
                } else if (data == '0') {
                    alert("등록되지 않은 이메일입니다. 다시 입력해주세요");
                    $("#member_email").val("");
                    $("#member_email").focus(); 
                }
            }
        });
            
            
            
            
        }
    });

    $("#cancel").click(function() {
        if (confirm("취소하시겠습니까?")) {
            location.href = "/flower/member/login";
        }
    });
});
