$(function() {
    $("#findEmail").click(function() {
        var email = $("#member_email").val();

        if (email === "") {
            alert("이메일을 입력해주세요.");
        } else {
            // 여기서 데이터베이스에서 이메일 중복을 확인하는 Ajax 요청을 보냅니다.
            $.post("checkEmailAvailability", { "member_email": email }, function(data) {
                if (data === "exists") {
                    $("#resultMessage").html('<label>이미 가입된 이메일입니다.</label>');
                } else if (data === "not-exists") {
                    $("#resultMessage").html('<label>등록되지 않은 이메일입니다.</label>');
                } else {
                    alert("오류가 발생했습니다.");
                }
            });
        }
    });
});