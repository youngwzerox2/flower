$(function(){

	// 휴대전화정규식
	var phoneRule = /^(01[016789]{1})-([0-9]{3,4})-([0-9]{4})$/;
	// 비밀번호정규식
	var passwordPattern = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,20}$/;

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
					
				}	else if($("#newpassword").val().length < 8 || $("#newpassword").val().length > 20){
					alert("비밀번호는 영문, 숫자, 특수문자 조합으로 최소 8자 이상, 20자 이내로 입력해주세요.");
					$("#newpassword").focus();
					return false
				}	else if (!passwordPattern.test($("#newpassword").val())){
					alert("비밀번호는 영문, 숫자, 특수문자 조합으로 최소 8자 이상, 20자 이내로 입력해주세요.")
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
	
	// 회원탈퇴
	$("#withdrawal").click(function(){
		if(!confirm("정말로 탈퇴하시겠습니까?")){
		} else{
			location.href="/flower/mypage/memberWithdrawal"
			alert("회원탈퇴가 완료되었습니다. 감사합니다.")
		}
	})
	
	// 배송지추가 우편번호 찾기
	
	$("#searchpost").click(function(){
		new daum.Postcode({
        	oncomplete: function(data) {
           	// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
              	}
              	
              	// 모달창의 값을 사용자가 선택한 주소값으로 채운다.
                $("#Mypage-postcode").val(data.zonecode)
                $("#Mypage-address").val(addr)
                $("#Mypage-detailaddress").focus();
			
        }	// end of oncomplete
        
    }).open();	// end of daum.postcode
	
	}) // end of #searchpost click
	
	
	// 배송지 그룹 (집, 회사, 기타) 선택시 텍스트필드 값 변경
		$('#selectType').change(function(){
			if($(this).val() == '집'){
				$("#addressType").val('집')
			} else if($(this).val() == '회사'){
				$("#addressType").val('회사')
			} else {
				$("#addressType").val('기타')
			}
		})
	
	// 배송지폼안에서 추가하기 누르면
	$('#saveaddress').click(function(){
	
		 if($("#recipient_name").val()==""){
		 alert("수취인 이름은 필수입력 사항입니다.")
		 return false
		 }
		 
		 if($("#Mypage-postcode").val()==""){
			 alert("우편번호를 입력해주세요.")
		 return false
		 }
		 
		 if($("#Mypage-detailaddress").val()==''){
			 alert("상세주소를 입력해주세요.")
			 return false
		 }
		 
		 if($('#recipient_tel').val()==""){
			 alert("휴대폰 번호를 입력해주세요.")
			 return false
		 } else if(phoneRule.test($('#recipient_tel').val())== false){
		 	alert("정확한 번호를 입력해주세요")
		 	return false
		 }
		 
		 
		 $("#in_Address").submit();
		 
		
	})	// end of saveaddress click
	
	
		// 배송지 삭제
		$(".deleteAddress").click(function(){
			if(!confirm("배송지를 삭제하시겠습니다?")){
			} else{
			var address_tr = $(this).parent().parent()
			var address_id = $(this).parent().parent().next('input').val()
			
			
			$.ajax({
			
				type : 'post',
				data : {"address_id" : address_id},
				url : '/flower/mypage/deleteAddress',
				success : function(result){
				address_tr.remove()
				alert("삭제가 완료되었습니다")
				}
			})	// end of deleteaddress ajax
		}	// end of else
	}) // end of deleteAddress click
	
	
	// 배송지 수정
	$(".updateAddress").click(function(){
	
		if( $('.mypage_address_id').length <= 10){
			alert("배송지는 최대 10개 입니다.")
			return false
		}
	
		var upad = $(this).parent().parent()
	
		
		// 모달창에 건네줄 정보들 변수에 저장
		var address_id = upad.next('input').val()
		var type = upad.children('td').eq(0).text()
		var name = upad.children('td').eq(1).text()
		var postcode = upad.children('td').eq(2).children('span').eq(0).text().substr(1,5)
		var address = upad.children('td').eq(2).children('span').eq(1).text()
		var detailaddress = upad.children('td').eq(2).children('span').eq(2).text()
		var tel = upad.children('td').eq(3).text()
		var address_id = upad.next().val()
		var default_delivery_address = upad.next().next().val()
		
		// 모달창에 값 넣기
		$("#selectType").val(type)
		$("#addressType").val(type)
		$("#recipient_name").val(name)
		$("#Mypage-postcode").val(postcode)
		$("#Mypage-address").val(address)
		$("#Mypage-detailaddress").val(detailaddress)
		$("#recipient_tel").val(tel)
		$("#address_id").val(address_id)
		if(default_delivery_address=='1'){
			$("#default_delivery_address").attr("checked", true)
		}
		
		$("#saveaddress").text('수정하기')
		$("#in_Address").attr("action","/flower/mypage/updateAddress")
		
		$("#add-address").click()
		
	
	})	// end of updateAddress click
	
	
	// 모달창 x누르면 모달창값 초기화
	$("#closeForm").click(function(){
		$("#selectType").val('집')
		$("#addressType").val('집')
		$("#recipient_name").val('')
		$("#Mypage-postcode").val('')
		$("#Mypage-address").val('')
		$("#Mypage-detailaddress").val('')
		$("#recipient_tel").val('')
		$("#saveaddress").text('추가하기')
		$("#in_Address").attr("action","/flower/mypage/in_Address")
		$("#default_delivery_address").attr("checked", false)
	
	})


})