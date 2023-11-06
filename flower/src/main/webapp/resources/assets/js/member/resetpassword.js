$(function(){
   $("#resetPassword").click(function(e) {
       e.preventDefault(); // 기본 제출 동작을 중지
       
        var password = $("#member_password").val();
        var passwordCheck = $("#member_passwordcheck").val();

        // 비밀번호가 입력되지 않았을 경우 알림창을 표시하고 포커스 설정
        if (password === "") {
            alert("새 비밀번호를 입력해주세요.");
            $("#member_password").focus();
            return;
        }

        // 새 비밀번호 확인이 입력되지 않았을 경우 알림창을 표시하고 포커스 설정
        if (passwordCheck === "") {
            alert("새 비밀번호 확인을 다시 입력해주세요.");
            $("#member_passwordcheck").focus();
            return;
        }

        // 비밀번호 유효성 검사: 영문, 숫자, 특수문자 조합, 8자 이상, 20자 이내
        var passwordPattern = /^(?=.*[a-zA-Z])(?=.*\d)(?=.*[@#$%^&+=!])[A-Za-z\d@#$%^&+=!]{8,20}$/;

        if (!password.match(passwordPattern)) {
            alert("비밀번호는 영문, 숫자, 특수문자의 조합으로 8자 이상, 20자 이내여야 합니다.");
            $("#member_password").val(""); // 비밀번호 입력 칸 비우기
            $("#member_passwordcheck").val(""); // 비밀번호 확인 입력 칸 비우기
            $("#member_password").focus();
            return;
        }

        // 비밀번호가 일치하지 않을 경우 알림창을 표시하고 포커스 설정
        if (password !== passwordCheck) {
            alert("비밀번호가 일치하지 않습니다.");
            $("#member_password").val(""); // 비밀번호 입력 칸 비우기
            $("#member_passwordcheck").val(""); // 비밀번호 확인 입력 칸 비우기
            $("#member_passwordcheck").focus();
            return;
        }
        
        // 여기에서 비밀번호 변경 처리 로직을 수행합니다.
        $("#resetpassword").submit();
        alert("비밀번호 변경이 완료되었습니다. 로그인 페이지로 이동합니다");
        location.href = "/flower/member/login"; // 로그인 페이지로 이동
              
      });
      
      
   });



  // 취소
		$("#cancel").click(function() {
		    var confirmed = confirm("취소하시겠습니까?");
		    if (confirmed) {
		        location.href = "/flower/member/login"; // 로그인 페이지로 이동
		    }
    });

