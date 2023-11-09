/**
 * 
 */
 $(function(){
 
 	/*----------------------------------------*/
	/*  QTY Button(상품 일부 수량 변경) to DB by Jin
	/*----------------------------------------*/    
    $('.dbqtybutton').on('click', function () {
        const $button = $(this);
        const oldValue = $button.parent().find('input').val();
        const cartId = $button.parents('tr').find('.cartId').val();
        
        // 해당 상품이 선택되었는지 감지하자
        const isSelected = $button.parentsUntil('tbody').find('.product_each').hasClass("product_each checked");
        // console.log(isSelected);
        
        // 장바구니 상품 목록 하단: 전체 항목 합계(span)
        const sum_total = $('#sum_total');
        const oldTotal = stringNumberToInt(sum_total.html());
        // console.log("전체 총합(변경 전): " + oldTotal);


		// 장바구니 상품 목록 하단: 선택 항목 합계(span)
		const sum_selected = $('#sum_subset');
		var old_sum_selected = stringNumberToInt(sum_selected.html());
		// console.log("선택된 상품의 (변경 전) 합계" + old_sum_selected);
		
        // 해당 상품의 단가
        const price = stringNumberToInt($button.parent().parent().siblings().find('span').html());
        
        // 해당 상품의 합계(단가×수량)가 들어가는 칸(span)
        const cart_prod_subset_sum = $button.parent().parent().siblings().find('.cart_subset_sum');

        // 해당 상품의 (수량 변경 전) 합계(단가×수량) (ajax 밑에 위치해도 변경 전 값만 호출된다.)
        const oldSum = stringNumberToInt(cart_prod_subset_sum.html());
        // console.log("해당 상품 합계(변경 전): " + oldSum);
        
        
        if ($button.hasClass('dbinc')) {
            var newVal = parseFloat(oldValue) + 1;
            const newSum = price * newVal;
            $.ajax({
            	type: 'POST',
            	url: '/flower/updateCartQuan',
            	data: {
            		shopping_cart_id: cartId,
            		shopping_cart_product_quantity: newVal
            	},
            	success: function(result){
            		cart_prod_subset_sum.html(formatNumberWithCommas(newSum));
            		const diffInc = newSum - oldSum;
            		sum_total.html(formatNumberWithCommas(oldTotal + diffInc));
            		if(isSelected){
            			sum_selected.html(formatNumberWithCommas(old_sum_selected += diffInc));
            		}
            		
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
            			const diffDec = oldSum - (price * newVal);
            			sum_total.html(formatNumberWithCommas(oldTotal - diffDec));
            			if(isSelected){
            				sum_selected.html(formatNumberWithCommas(old_sum_selected -= diffDec));
            			}
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
	/*  remove_item(상품 일부 삭제) Button to DB by Jin
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
	/*  checkbox Button(상품 일부 선택) to DB by Jin
	/*----------------------------------------*/
 	$('.product_each').click(function(){
 		const inputBox = $(this);
 		const cartId = $(this).parent().siblings().find('input').val();
 		
 		// 장바구니 상품 목록 하단: 선택한 항목 합계 칸(span)
 		const sum_subset = $('#sum_subset');
 		let oldVal;
 		
 		if (sum_subset.html() == 0) {
 			oldVal = 0;
 		} else {
 			oldVal = stringNumberToInt(sum_subset.html());
 		}
 	
 		// 선택된 상품의 합계(수량 × 단가)
 		const sum_selected = stringNumberToInt(inputBox.parent().siblings().find('.cart_subset_sum').html());

 		let newVal = 0;
 		
 		if(!inputBox.hasClass("checked")) {
 			inputBox.addClass("checked");
 			$.ajax({
 				type: 'POST',
 				url: '/flower/selectCartProd',
 				data: {
 					shopping_cart_id: cartId,
 					selected: 1
 				},
 				success: function(result){
 					console.log("success");
 					newVal = oldVal + sum_selected;
 					// console.log("addClass's newVal: " + newVal)
 					sum_subset.html(formatNumberWithCommas(newVal));
 				},
 				error: function(err){
 					console.log("failed");
 				} 
 			}) // if's .ajax end 
 		} else {
 			inputBox.removeClass("checked");
 			$.ajax({
 				type: 'POST',
 				url: '/flower/selectCartProd',
 				data: {
 					shopping_cart_id: cartId,
 					selected: 0
 				},
 				success: function(result){
 					console.log("success");
 					if (oldVal == 0) {
 						newVal = 0;
 						sum_subset.html(formatNumberWithCommas(newVal));
 					} else {
 						newVal = oldVal - sum_selected;
 						// console.log("removeClass's newVal: " + newVal)
 						sum_subset.html(formatNumberWithCommas(newVal));
 					}
 					
 				},
 				error: function(err){
 					console.log("failed");
 				}
 			}) // else .ajax end
 		} // hasClass if ~ else end

 	
 	}); // 일부 상품 선택 버튼 이벤트 end
 	
 
  	/*----------------------------------------*/
	/*  선택항목 결제하기 Button 이벤트 by Jin
	/*  1) 선택한 항목이 없을 경우, 선택하신 항목이 없습니다. (전체 항목 결제하시겠습니까?)
	/*  2) 선택한 항목이 있을 경우, shopping cart id (list)들고 controller 접근
	/*----------------------------------------*/
	
		$('#check_out_selected').click(function(){
			const chk_selected_list = document.querySelectorAll('.checked');
			const all_chkbox = document.querySelectorAll('.prod_each');
			if(chk_selected_list.length == 0) {
				 if(confirm('선택하신 항목이 없습니다. 전체 항목 결제하시겠습니까?')) {
				 	return location.href= "/flower/order/orderInfo";
				 } else {
				 	return false;
				 } // confirm if ~ else end
			} else {
				return location.href="";
			} // chk_selected_list if~else end
		
	});// 선택항목 결제하기 btn 이벤트 end		
	
	
 
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
 
 }) //$(function(){}) end

 