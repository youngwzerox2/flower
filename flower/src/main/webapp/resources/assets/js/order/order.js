$(function(){

	// 휴대전화정규식
	var phoneRule = /^(01[016789]{1})-([0-9]{3,4})-([0-9]{4})$/;

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
			totalprice = totalprice + parseInt(value)
		})
		
		// 페이지 불러지자마자 값적용
		$(".order-total").find('span').text(totalprice+"원")
		
		
		// end of 토탈금액 구하기
		
	
		$("#payment").click(function(){
		
		
		// 배송지 및 전화번호 유효성
		if($("#defaultaddress").css("display") == "none"){
			 if($("#modifyname").val() == '' || $("#modifypostcode").val() == '' ||
				$("#modifyaddress").val() == '' || $("#modifydetailaddress").val() == ''
				|| $("#modifytel").val() ==''){
				alert("배송지 정보를 입력하세요")
				return false;
			}else if(phoneRule.test($("#modifytel").val())== false){
		 		alert("정확한 번호를 입력해주세요")
		 		return false
			}
		 }
		
		
		// 배송지가 신규배송지인지 기존에 등록해놓은 배송지인지 확인
		// 기존 배송지 정보
		if($("#defaultaddress").css("display") != 'none'){
			var defaultadd = $("#defaultaddress").find('.list_02').children('li')
			
			// 수령인 이름
			var recipient_name = defaultadd.eq(0).children('label').text()
			// 수령인 우편주소
			var recipient_postalcode = defaultadd.eq(1).children('label').children('span').eq(0).text().substr(1,5)
			// 수령인 주소
			var recipient_address = defaultadd.eq(1).children('label').children('span').eq(1).text()
			// 수령인 상세주소
			var recipient_detailaddress = defaultadd.eq(1).children('label').children('span').eq(2).text()
			// 수령인 전화번호
			var recipient_tel = defaultadd.eq(2).children('label').text()
			
			// 신규 배송지 정보
		} else{
			
			var recipient_name = $("#modifyname").val()
			var recipient_postalcode = $("#modifypostcode").val()
			var recipient_address = $("#modifyaddress").val()
			var recipient_detailaddress = $("#modifydetailaddress").val()
			var recipient_tel = $("#modifytel").val() 
			
			} //end of 배송지 값 저장
			
			// pay에 넣을 정보들
			// 상품 이름 외 n개
			var Arrayname = new Array();
			var productsname = $(".goods_name").find('a')
			$.each(productsname, function(index, productname){
			Arrayname[index] = productname.text
			})
			var payproductname = Arrayname[0] + ' 외 ' + (Arrayname.length - 1) + '개'
		
			// 이메일
			var payemail = $('.orderer .list_02').children('li').eq(1).children('span').eq(1).text()
			// 주문자 이름
			var payname = $('.orderer .list_02').children('li').eq(0).find('input').val()
		
			
			//주문 상세번호 날짜로 만들기
		
			var today = new Date();
			
			var year = today.getFullYear(); // 년도
			var month = today.getMonth() +1; // 월
			var date = "0" + today.getDate();
			var hours = today.getHours(); // 시
			var minutes = today.getMinutes();  // 분
			var seconds = today.getSeconds();  // 초
			var milliseconds = today.getMilliseconds();
			
			// 주문 상세번호
			var makeMerchantUid =  `${year}` + `${month}` + `${date}` +`${hours}` + `${minutes}` + `${seconds}` + `${milliseconds}`;
			
			// vo를 담을 배열 생성
			var dataArray = []
			
			// 상품 리스트
			var product_list = $(".option_area")
			
			// 회원 ID
			var memberid = $('.orderer .list_02').children('li').eq(1).children('input').val()
			
			// 상품이 여러개일경우 컨트롤러에 넘겨야할 VO를 상품 개수만큼 만들기 위한 each함수
			$.each(product_list, function(index, productinfo){
				var productids = $(this).find('.productid').val()
				var productname = $(this).find('a').text()
				var productimage = $(this).find('.productimage').val()
				var quantity = $(this).find('.goods_quantity').text()
				// 각 상품의 한개 가격
				var price = parseInt($(this).find('.goods_subtotalprice').text()) / parseInt($(this).find('.goods_quantity').text())
				
				// vo에 담겨있는 멤버변수 name에 값들을 key,value로 저장
				const data = {"product_name" : productimage, "product_image_file_name" : productimage, "product_id" : productids,
							  "order_product_price" : price, "order_detail_number" : "flower" + makeMerchantUid, "recipient_name" : recipient_name,
							  "postal_code" : recipient_postalcode, "recipient_address" : (recipient_address +" "+ recipient_detailaddress),
							  recipient_tel : recipient_tel, "order_product_quantity" : quantity, "order_state" : "주문완료", "member_id" : memberid }
				//vo 생성후 컨트롤러에서 list로 가져오기위해 배열에 저장
				dataArray.push(data)	
			})
			
			// input 동적 생성 함수
			function add(form, name, value){
				var element = document.createElement("input")
				element.setAttribute("value", value);
				element.setAttribute("name", name);
				element.setAttribute("type", 'hidden');
				form.appendChild(element);
			}
			
					// form 동적 생성
			let myForm = document.createElement('form')
			myForm.setAttribute("action","/flower/order/detailorder")
			myForm.setAttribute("method","POST")
			document.body.appendChild(myForm)
			
			// 배열에 담겨있는 멤버변수를 컨트롤러에서 list로 받기 위해 vo에 담겨있는 멤버변수 name들을
			// list<vo>를 멤버변수로 가지고 있는 vo를 만들어 해당 클래스의 멤버변수인 Listvo[index].name으로 만들기 위한 작업
			for(let i = 0; i < dataArray.length; i++){
				for (const [key, value] of Object.entries(dataArray[i])){
					const name = `Listvo[${i}].${key}`;
					add(myForm, name, value)
				}
			}
	
			// 장바구니에서 구매했는지 체크
			// 장바구니에서 구매했으면 장바구니 초기화, 바로구매했으면 장바구니 초기화x
			add(myForm, "notbuyfromcart", $("#notbuyfromcart").val())
			
			// 카카오페이 결제
			kakaopay();
			
			// 결제 함수
			function kakaopay(){
				IMP.init('imp35575482')
				IMP.request_pay({
     			 pg: "kakaopay.TC0ONETIME",
     			 pay_method: "card",
     			 merchant_uid: "flower" + makeMerchantUid,   // 주문번호
     			 name: payproductname,
     			 amount: totalprice,                         // 숫자 타입
     			 buyer_email: payemail,
    		 	 buyer_name: payname,
    		 	 buyer_addr: recipient_address + recipient_detailaddress,
     			 buyer_postcode: recipient_postalcode,
   				}, function (rsp) { // callback
   		 			if(rsp.success){
   		 			alert("결제가 완료되었습니다")
   		 			myForm.submit();
   		 		} else{
   		 		 var msg = '오류로 인하여 결제가 시작되지 못하였습니다.';
       			 msg += '에러내용 : ' + rsp.error_msg;
        		 alert(msg);
   		 		}	// end of 결제 에러
   			 });	// end of 결제 콜백
		 }	// end of 결제 함수
	})	// end of 결제버튼
})