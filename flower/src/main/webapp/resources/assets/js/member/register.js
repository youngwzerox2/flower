// 회원가입 폼이 완료되었을 때 함수
var isCheckEmail = false;

var pattern = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-za-z0-9\-]+/;

  // "모두 동의" 체크박스 클릭 이벤트 처리
          $("#allAgreements").change(function() {
	              var isChecked = $(this).prop("checked");
	              
	           // 모든 약관 동의 체크박스들을 선택/해제
	          $(".agreeservice input[type='checkbox']").prop("checked", isChecked);
          });

// 회원가입하기
$("#join").click(function(e) { 
    e.preventDefault(); // 기본 폼 제출 방지

		    if ($("#member_name").val() == "") {
		        alert("회원명을 입력해주세요.");
		        $("#member_name").focus();
		        return;
		    } 
		    
        var email = $("#member_email").val();
        
        if (email == "") {
            alert("이메일을 입력해주세요.");
            $("#member_email").focus();
            return;
        }
        
        if (pattern.test(email) === false) {
		        alert("유효한 이메일 주소를 입력해주세요.");
		        $("#member_email").focus();
            return;
        }
        
         if (!isCheckEmail) {
		        alert("이메일 중복확인을 먼저 해주세요.");
		        return;
		    }
        
         var password = $("#member_password").val();
        
         if (password == "") {
             alert("비밀번호를 입력해주세요.");
             $("#member_password").focus();
             return;
        }
        
         if (password.length < 8 || password.length > 20) {
		        alert("비밀번호는 영문, 숫자, 특수문자 조합으로 최소 8자 이상, 20자 이내로 입력해주세요.");
		        $("#member_password").val("");
		        $("#member_password").focus();
		        return;
		    }
		    
		    var passwordPattern = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,20}$/;
		    if (!passwordPattern.test(password)) {
		        alert("비밀번호는 영문, 숫자, 특수문자 조합으로 최소 8자 이상, 20자 이내로 입력해주세요.");
		        $("#member_password").focus();
		        return;
		    }
<<<<<<< HEAD
		    
		      if (!$("#termsOfService").is(":checked")) {
            alert("꽃물주 서비스 이용 약관에 동의해 주세요!");
            return;
        }
        
          if (!$("#privacyPolicy").is(":checked")) {
            alert("개인정보 처리방침에 동의해 주세요!");
            return;
        }
        
          if (!$("#dataProcessingAgreement").is(":checked")) {
            alert("개인정보 제 3자 제공에 동의해 주세요!");
            return;
        }
		    
=======
        	
>>>>>>> refs/remotes/origin/20231104박민진
        // 모든 조건이 충족되면 폼을 제출
         $("form").submit();
         alert("회원가입이 완료되었습니다!")
});



// 중복 확인을 통과한 경우 회원가입 폼을 제출
$("#idChk").click(function() {
    var email = $("#member_email").val();

    if (email == "") {
        alert("이메일을 입력해주세요.");
    } else {
        $.ajax({
            url: "idChk",
            type: "post",
            dataType: "json",
            data: { "member_email": email },
            success: function(data) {
                if (data === 1) {
                    $("#emailCheckResult").text("이미 등록된 이메일입니다.");
                    $("#member_email").val("");
                    $("#member_email").focus();
                    return;
                } else if (data === 0) {
                    $("#idChk").attr("value", "Y");
                    $("#emailCheckResult").text("사용 가능한 이메일입니다.");
                    isCheckEmail = true;
                    
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
