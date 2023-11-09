/**
 * 
 */
 
 $(function(){
 	
 	// 장바구니 담기
 	$('#addCart').click(function(e){
 		prod_id = $('#product_id').val();
 		prod_quan = $('#product_quantity').val();
 		
 		$.ajax({
 			type: 'GET',
 			url: '/flower/cart?product_id=' + prod_id,
 			data: {
 				shopping_cart_product_quantity: prod_quan
 			},
 			success: function(result){
 				if(confirm('장바구니에 담겼습니다. 장바구니로 이동하시겠습니까?')) {
 					location.href = '/flower/cart/cart';
 				} else {
 					return false;
 				}				
 			},
 			error: function(error){
 				if(confirm('로그인이 필요한 서비스입니다. 로그인 하시겠습니까?')){
 					location.href='/flower/member/login';
 					console.log(error)
 				} else {
 					return false;
 				}
 			}
 		}); // ajax end
 		
 	}); // #addCart.click end
 	
	
	// 상세 페이지에서 찜btn 클릭 이벤트
	$('#love_content').click(function(){
		console.log("You find me!");
		prod_id = $('#product_id').val();
 		const iCon = $(this).find('i');
 		
 		if(iCon.hasClass('pe-7s-leaf')) {
 			iCon.removeClass('pe-7s-leaf');
 			iCon.addClass('pe-7f-leaf');
 			iCon.css({'font-weight': '200', 'color': '#8bc852'});
 			$.ajax({
 				type: 'GET',
 				url: '/flower/love?product_id=' + prod_id,
 				success: function(result){
 					console.log("love 입력 success");
 				},
 				error: function(err){
 					console.log("love 입력 failed");
 					if(confirm('로그인이 필요한 서비스입니다. 로그인 하시겠습니까?')){
 						location.href='/flower/member/login';
 					} else {
 						return false;
 					}
 				}
 			}); // ajax end
 		} else if (iCon.hasClass('pe-7f-leaf')) {
 			iCon.removeClass('pe-7f-leaf');
 			$.ajax({
 				type: 'GET',
 				url: '/flower/love?product_id=' + prod_id,
 				success: function(result){
 					console.log("love 해제 success");
 				},
 				error: function(err){
 					console.log("love 해제 failed");
 					
 				}
 			}); // ajax end
 			iCon.addClass('pe-7s-leaf');
 		} // iCon.hasClass if ~ else
 		
 	});
 	
 	
 	
 	// 숫자 형식화
	function formatNumberWithCommas(number) {
		if (number === null || number === undefined) {
	    	return "0";
	  	}
	  	
	  return number.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
	}
	
	// 바로구매 버튼
	$("#onlyoneorder").click(function(){
		if($("#memberid").val()==''){
			if(confirm('로그인이 필요한 서비스입니다. 로그인 하시겠습니까?')){
 				location.href='/flower/member/login';
 		} else {
 				return false;
 				}
		}	else {
			$("#productinfo").submit();
		}
	})
 	
 }) // $(function(){}) end