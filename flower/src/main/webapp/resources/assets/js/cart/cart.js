/**
 * 
 */
 $(function(){
 
 	/*----------------------------------------*/
	/*  QTY Button to DB by Jin
	/*----------------------------------------*/
    
    // 수량변경 버튼 이벤트
    
    $('.dbqtybutton').on('click', function () {
        var $button = $(this);
        var oldValue = $button.parent().find('input').val();
        const cartId = $('#cartId').val();
        
        const price = stringNumberToInt($button.parent().parent().siblings().find('span').html());
                
        let cart_prod_subset_sum1 = stringNumberToInt($button.parent().parent().siblings().find('.cart_subset_sum').html());
        const cart_prod_subset_sum = $button.parent().parent().siblings().find('.cart_subset_sum');
        
        
        if ($button.hasClass('dbinc')) {
            var newVal = parseFloat(oldValue) + 1;
            $.ajax({
            	type: 'POST',
            	url: '/flower/updateCartQuan',
            	data: {
            		shopping_cart_id: cartId,
            		shopping_cart_product_quantity: newVal
            	},
            	success: function(result){
            		cart_prod_subset_sum.html(formatNumberWithCommas(price * newVal));
            		
            	},
            	error: function(err){
            		console.log("실패");
            	}
            });
        } else {
            // Don't allow decrementing below zero
            if (oldValue > 1) {
                var newVal = parseFloat(oldValue) - 1;
                $.ajax({
            		type: 'POST',
            		url: '/flower/updateCartQuan',
            		data: {
            			shopping_cart_id: cartId,
            			shopping_cart_product_quantity: newVal
            		},
            		success: function(result){
            			cart_prod_subset_sum.html(formatNumberWithCommas(price * newVal));
            		},
            		error: function(err){
            			console.log("실패");
            		}
            	});
            } else {
                newVal = 1;
            }
        }
        $button.parent().find('input').val(newVal);
    }); // 수량변경 버튼 이벤트 end
    
    
  	/*----------------------------------------*/
	/*  remove_item Button to DB by Jin
	/*----------------------------------------*/
 	
 	$('.remove_item').click(function(){
 		// console.log($(this).siblings().filter('input').val()); // 쇼핑카트ID
 		const cartId = $(this).siblings().filter('input').val();
 		const tr = $(this).parent().parent();
 		
 		$.ajax({
 			type: 'POST',
 			url: '/flower/deleteCartProd',
 			data: {
 				shopping_cart_id: cartId
 			},
 			success: function(result){
 				tr.remove();
 			},
 			error: function(err){
 				console.log("failed");
 				console.log("로그인 세션이 만료되었습니다. ");
 			}
 		});  // ajax end
 	}); // 상품 삭제 버튼 클릭이벤트
 	
 	
 	/*----------------------------------------*/
	/*  checkbox Button to DB by Jin
	/*----------------------------------------*/
 	$('.product_each').click(function(){
 		const cartId = $(this).parent().siblings().find('input').val();
 		
 		// console.log(cartId);
 		$.ajax({
 			type: 'POST',
 			url: '/flower/selectCartProd',
 			data: {
 				shopping_cart_id: cartId
 			},
 			success: function(result){
 				console.log("success");
 			},
 			error: function(err){
 				console.log("failed");
 			}
 		})
 	});
 	
 
 	/*----------------- function -----------------------*/   
    // 콤마 찍힌 숫자를 정수형으로 변환
    function stringNumberToInt(stringNumber) {
    	return parseInt(stringNumber.replace(/,/g, ''));
    }
    
    // 숫자 형식화
	function formatNumberWithCommas(number) {
		if (number === null || number === undefined) {
	    	return "0";
	  	}
	  return number.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
	}
 
 }) //$(function(){})

 