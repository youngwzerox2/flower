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
 			type: 'POST',
 			url: '/flower/cart?product_id=' + prod_id,
 			data: {
 				shopping_cart_product_quantity: prod_quan
 			},
 			success: function(result){
 				if(confirm('장바구니에 담겼습니다. 장바구니로 이동하시겠습니까?')) { 				
 					//'http://localhost:8080/flower/WEB-INF/views/cart/cart.jsp';
 					// ../../cart/cart.jsp >> 파일 [/cart/cart.jsp]을(를) 찾을 수 없습니다.
 					// ../cart/cart.jsp >> /product/cart/cart.jsp
 					location.href= '/flower/cart/cart';
 				} else {
 					return false;
 				}				
 			},
 			error: function(error){
 				console.log("err: " + error);
 			}
 		});
 	}); 
 	
 }) //$(function(){})