 // 팝업 창 열기
function openModal(message) {
  document.getElementById('modalMessage').innerText = message;
  document.getElementById('myModal').style.display = 'block';
}

// 팝업 창 닫기
function closeModal() {
  document.getElementById('myModal').style.display = 'none';
}

// 모달 닫기 버튼 클릭 시 닫기
document.getElementsByClassName('close')[0].addEventListener('click', closeModal);

// 모달 영역 외 클릭 시 닫기
window.addEventListener('click', function(event) {
  if (event.target == document.getElementById('myModal')) {
    closeModal();
  }
});


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
            openModal("이메일 주소를 입력해주세요.");
            $("#member_email").focus();
            return;
        } 
        
        if (!validateEmail(email)) {
            openModal("유효한 이메일 주소를 입력해주세요.");
            $("#member_email").focus();
            return;
        } 
        
        if (password === "") {
           openModal("비밀번호를 입력해주세요.");
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
                    //alert(response);
                    if (response == 0) {
                        //openModal("로그인에 성공하였습니다! 메인페이지로 이동합니다"); // 로그인 성공 알림
                       window.location.href = "/flower/flower_main.jsp"; // 메인 페이지로 리다이렉트
                     } else if (response == 2) {
                        openModal("탈퇴한 회원이거나 제재를 받은 회원입니다."); 
                    } else if (response == 1) {
                        openModal("이메일 또는 비밀번호가 잘못되었습니다.");
                    }
                },
                error: function() {
                    openModal("로그인 중 오류가 발생했습니다.");
                }
            });
        
        $('#loginForm').sumbit();
        //alert("ok");
    });
    
    $("#cancel").click(function(e) {
      var confirmed = confirm("취소하시겠습니까?");
      if (confirmed) {
      location.href = "/flower/flower_main.jsp"
      }
      
    });
    
    
    
    
});
