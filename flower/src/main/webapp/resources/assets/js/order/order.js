$(function(){

	$(".modifyaddress").click(function(){
		
		var name = $(".list_02").find("label").eq(0).text()
		var post = $(".list_02").find("label").eq(1).children('span').eq(0).text().substr(1,5)
		var address = $(".list_02").find("label").eq(1).children('span').eq(1).text()
		var detailaddress = $(".list_02").find("label").eq(1).children('span').eq(2).text()
		var tel = $(".list_02").find("label").eq(2).text()
		
		$("#modifyname").val(name)
		$("#modifypostcode").val(post)
		$("#modifyaddress").val(address)
		$("#modifydetailaddress").val(detailaddress)
		$("#modifytel").val(tel)
		
		$("#defaultaddress").hide()
		$("#myaddressTab").show()
		$("#myaddressTabContent").show()
		
	})	// end of .modifyaddress click
	
	$("#searchaddress").click(function(){
	
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
              	
                $("#modifypostcode").val(data.zonecode)
                $("#modifyaddress").val(addr)
                $("#modifydetailaddress").val('')
                $("#modifydetailaddress").focus();
			
			}	// end of oncomplete
        
		}).open();	// end of daum.postcode
	
	}) // end of #searchaddress click
	
	$(".chooseaddress").click(function(){
	
		$("#defaultaddress").hide()
		$("#selectaddress-tab").click();
		
		$("#myaddressTab").show()
		$("#myaddressTabContent").show()
	
	})	// end of .chooseaddress click
	
	
	$("#selectaddress li label").click(function(){
	
		var ul = $(this).parents(".list")
		var listname = ul.find("label").eq(0).text()
		var listpost = ul.find("label").eq(1).children('span').eq(0).text()
		var listaddress = ul.find("label").eq(1).children('span').eq(1).text()
		var listdetailaddress = ul.find("label").eq(1).children('span').eq(2).text()
		var listtel = ul.find("label").eq(2).text()
		
		$('#defaultaddress').find('label').eq(0).text(listname)
		$('#defaultaddress').find('label').eq(1).children('span').eq(0).text(listpost)
		$('#defaultaddress').find('label').eq(1).children('span').eq(1).text(listaddress)
		$('#defaultaddress').find('label').eq(1).children('span').eq(2).text(listdetailaddress)
		$('#defaultaddress').find('label').eq(2).text(listtel)
		
		$("#modifyname").val(listname)
		$("#modifypostcode").val(listpost)
		$("#modifyaddress").val(listaddress)
		$("#modifydetailaddress").val(listdetailaddress)
		$("#modifytel").val(listtel)
		
		$("#newaddress-tab").click();
		
		$("#defaultaddress").show()
		$("#myaddressTab").hide()
		$("#myaddressTabContent").hide()
		
	})	// end of #selectaddres li labe click
	
	
		// 토탈금액 구하기
		
		// 각 가격을 원을 빼고 배열로 생성
		var spaceprice = $(".cart-product-total").find('span').text().split('원')
		var totalprice = 0;
		
		// 배열에 있는 공백 제거
		price  = spaceprice.filter(function(item) {
 				return item !== '';
				});
				
		// 배열을 가지고 토탈금액 구하기
		$.each(price, function(index, value){
			totalprice = totalprice + parseInt(price)
		})
		$(".order-total").find('span').text(totalprice+"원")
		
		// end of 토탈금액 구하기
		
		function kakaopay(){
			IMP.init('imp35575482')
		
			IMP.request_pay({
     		 pg: "kakaopay.TC0ONETIME",
     		 pay_method: "card",
     		 merchant_uid: "615152301",   // 주문번호
     		 name: "노르웨이 회전 의자",
     		 amount: 1000,                         // 숫자 타입
     		 buyer_email: "gildong@gmail.com",
    		  buyer_name: "홍길자",
    		  buyer_tel: "010-4242-4242",
    		  buyer_addr: "서울특별시 강남구 신사동",
     		 buyer_postcode: "01181"
   		 }, function (rsp) { // callback
   		 		if(rsp.success){
   		 		alert("완료")
   		 		} else{
   		 		alert("실패" + rsp.error_msg)
   		 		}
   			 });
		}
		
		$("#payment").click(function(){
			location.href = "detailorder"
		})
})