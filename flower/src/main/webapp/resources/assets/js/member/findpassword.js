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

    $("#findPassword").click(function() {
        var emailInput = $("#member_email");
        var email = $("#member_email").val();
        if (email === "") {
            openModal("이메일을 입력해 주세요.");
            emailInput.focus();
        }else {
            // 이메일을 서버로 보내어 처리하는 로직을 추가
            $.ajax({
            url: "findEmailChk",
            type: "post",
            dataType: "json",
            data: { "member_email": $("#member_email").val() },
            success: function(data) {
                
                if (data == '1') {
                   openModal("등록된 이메일입니다. 3초후 자동으로 비밀번호 초기화 페이지로 이동합니다");
                  setTimeout(function() {
					        window.location.href = "/flower/member/resetpassword";
					    }, 3000); 
                } else  {
                    openModal("등록되지 않은 이메일입니다. 3초후 자동으로 회원가입 페이지로 이동합니다");
                     setTimeout(function() {
						        window.location.href = "/flower/member/register";
						    }, 3000); 
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
