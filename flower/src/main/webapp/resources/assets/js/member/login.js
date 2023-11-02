$(function() {
    $("#login").click(function(e) {
        e.preventDefault(); // 기본 폼 제출 방지

        var email = $("input[name='member_email']").val().trim();
        var password = $("input[name='member_password']").val().trim();


        function validateEmail(email) {
            var re = /\S+@\S+\.\S+/;
            return re.test(email);
        }

        if (email === "") {
            alert("이메일 주소를 입력해주세요.");
            $("#member_email").focus();
            return;
        } 
        
        if (!validateEmail(email)) {
            alert("유효한 이메일 주소를 입력해주세요.");
            $("#member_email").focus();
            return;
        } 
        
        if (password === "") {
            alert("비밀번호를 입력해주세요.");
            $("#member_password").focus();
            return;
        } 
        
            // AJAX 요청 생성
            $.ajax({
                type: "POST",
                url: "login", // 로그인 처리를 담당하는 서버 엔드포인트의 URL
                dataType : "json",
                data: {
                    member_email: email,
                    member_password: password
                },
                success: function(response) {
                    if (response == 0) {
                        alert("로그인에 성공하였습니다!"); // 로그인 성공 알림
                       window.location.href = "/flower/flower_main.jsp"; // 메인 페이지로 리다이렉트
                    } else {
                        alert("이메일 또는 비밀번호가 잘못되었습니다.");
                    }
                },
                error: function() {
                    alert("로그인 중 오류가 발생했습니다.");
                }
            });
        
        
        $('#loginForm').sumbit();
        alert("ok");
    });
    
    $("#cancel").click(function(e) {
      var confirmed = confirm("취소하시겠습니까?");
      if (confirmed) {
      location.href = "/flower/flower_main.jsp"
      }
      
    });
    
    
    
    
});
