$(function(){

	// 비밀번호 변경할때 검사
	$("#pwUpdateBt").click(function(){
	
	
				if($("#curpassword").val()==""){
					alert("현재 비밀번호를 입력해주세요");
					$("#curpassword").focus();
					return false
				}
				
				if($("#memberpass").val() != $("#curpassword").val()){
					alert("현재 비밀번호가 일치하지 않습니다.")
					$("#curpassword").focus();
					return false
				}
				
				if($("#newpassword").val()==""){
					alert("변경비밀번호을를 입력해주세요");
					$("#newpassword").focus();
					return false
				}	else if($("#newpassword").val().length < 8){
					alert("비밀번호는 8글자 이상입니다.");
					$("#newpassword").focus();
					return false
				}
				
				if($("#curpassword").val() == $("#newpassword").val()){
					alert("현재 비밀번호와 변경하실 비밀번호가 같습니다.\n다른 비밀번호를 입력해주세요.")
					$("#newpassword").focus();
					return false
				}
				
				if($("#newpasswordconfirm").val()==""){
					alert("변경비밀번호을를 입력해주세요");
					$("#newpasswordconfirm").focus();
					return false
				}
				
				if ($("#newpassword").val() != $("#newpasswordconfirm").val()) {
					alert("변경비밀번호가 일치하지 않습니다.");
					$("#newpasswordconfirm").focus();
					return false
				}	
				
				pwUpdate.submit();
		
	})
	
	$("#withdrawal").click(function(){
		if(!confirm("정말로 탈퇴하시겠습니까?")){
		} else{
			location.href="/flower/mypage/memberWithdrawal"
			alert("회원탈퇴가 완료되었습니다. 감사합니다.")
		}
	
	
	})

	


})