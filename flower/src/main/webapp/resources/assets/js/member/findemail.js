$(function(){

$("#findEmailChk").click(function(evt) {

  // 이벤트 막기
   evt.preventDefault();
  
    var email = $("#member_email").val();

    if (email === "") {
        alert("이메일을 입력해주세요.");
        $("#member_email").focus();
    } else {
        $.ajax({
            url: "findEmailChk",
            type: "post",
            dataType: "json",
            data: { "member_email": $("#member_email").val() },
            success: function(data) {
                if (data == '1') {
                    $("#resultMessage").html("이미 가입된 이메일입니다. <a href='login' style='margin-left: 10px; color: blue; text-decoration: underline;'>로그인 페이지로 이동</a>");
                } else if (data == '0') {
                    $("#findEmailChk").attr("value", "Y");
                    $("#resultMessage").html("등록되지 않은 이메일입니다. <a href='register' style='margin-left: 10px; color: blue; text-decoration: underline;'>회원가입 페이지로 이동</a>");
                }
            }
        });
    }
});

});