/**
 * 
 */
 
 $(function(){
 	
 	// 장바구니 담기
 	$('#addCart').click(function(e){
 		// console.log('You found me!: ' + $(this));
 		console.log('수량: ' + $('#product_quantity').val());
 		console.log('상품id: ' + $('#product_id').val());
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
 					// 로그인 '창'으로 띄우고 싶지....만
 					location.href='/flower/member/login';
 					
 				} else {
 					return false;
 				}
 			}
 		}); // ajax end
 		
 	}); // #addCart.click end
 	
 }) // $(function(){}) end