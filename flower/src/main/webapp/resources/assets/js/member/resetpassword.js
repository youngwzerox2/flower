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

$(function(){
   $("#resetPassword").click(function(e) {
       e.preventDefault(); // 기본 제출 동작을 중지
       
        var password = $("#member_password").val();
        var passwordCheck = $("#member_passwordcheck").val();

        // 비밀번호가 입력되지 않았을 경우 알림창을 표시하고 포커스 설정
        if (password === "") {
            openModal("새 비밀번호를 입력해주세요.");
            $("#member_password").focus();
            return;
        }

        // 새 비밀번호 확인이 입력되지 않았을 경우 알림창을 표시하고 포커스 설정
        if (passwordCheck === "") {
            openModal("새 비밀번호 확인을 다시 입력해주세요.");
            $("#member_passwordcheck").focus();
            return;
        }

        // 비밀번호 유효성 검사: 영문, 숫자, 특수문자 조합, 8자 이상, 20자 이내
        var passwordPattern = /^(?=.*[a-zA-Z])(?=.*\d)(?=.*[@#$%^&+=!])[A-Za-z\d@#$%^&+=!]{8,20}$/;

        if (!password.match(passwordPattern)) {
            openModal("비밀번호는 영문, 숫자, 특수문자의 조합으로 8자 이상, 20자 이내여야 합니다.");
            $("#member_password").val(""); // 비밀번호 입력 칸 비우기
            $("#member_passwordcheck").val(""); // 비밀번호 확인 입력 칸 비우기
            $("#member_password").focus();
            return;
        }

        // 비밀번호가 일치하지 않을 경우 알림창을 표시하고 포커스 설정
        if (password !== passwordCheck) {
            openModal("비밀번호가 일치하지 않습니다.");
            $("#member_password").val(""); // 비밀번호 입력 칸 비우기
            $("#member_passwordcheck").val(""); // 비밀번호 확인 입력 칸 비우기
            $("#member_passwordcheck").focus();
            return;
        }
        
        $.ajax({
    type: "POST",
    url: "/flower/member/resetpassword", // 비밀번호 변경 처리 엔드포인트의 URL
    data: { "member_password": password },
    success: function(response) {
        openModal("비밀번호 변경이 완료되었습니다. 3초후 자동으로 로그인 페이지로 이동합니다");
        setTimeout(function() {
            location.href = "/flower/member/login"; // 로그인 페이지로 이동
        }, 3000);
    },
    error: function() {
        openModal("비밀번호 변경 중 오류가 발생했습니다.");
    }
});
              
              
      });
      
      
   });



  // 취소
		$("#cancel").click(function() {
		    var confirmed = confirm("취소하시겠습니까?");
		    if (confirmed) {
		        location.href = "/flower/member/login"; // 로그인 페이지로 이동
		    }
    });

