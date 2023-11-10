/*------ by Jin -------*/

$(function(){

	// 상품목록에서 검색필터(체크박스, 라디오 → class="product-filter-condition")를 선택한 후, '적용하기' 버튼을 눌렀을 때
	$('#product-filter-apply').click(function(e){
		 e.preventDefault();
		 e.stopPropagation();
		
		// 검색 조건을 담을 배열
		const condition = [];
		
		// 검색
		$('.product-filter-condition').each(function(){
			if($(this).hasClass('checked')){
				condition.push($(this).val());
				console.log("submit 클릭 시 checked된 값 넣어지는가: " + $(this).val());
			}
		});
		console.log("다 담겼..나?: " + condition); // 담김!! 
		
		$.ajax({
			type: 'POST',
			url: '/flower/product/category/product',
			traditional: true,
			data: {
				filterCondition: condition
			},
			success: function(result){
				console.log("필터 적용 success");
				let prodTable = $('#prodTable');
				console.log(prodTable);
				let tes = $('#testRemove');
				tes.empty();
				// prodTable.html("");
				// let divC = $('.product-grid-view row g-y-20');
				// console.log(divC);
				// divC.empty();
				// divC.html("");
				
			},
			error: function(err){
				console.log("필터 적용 failed");
			}
		});
		
	});
	
	// 검색 필터 조건(checkbox)을 클릭했을 때, 클래스에 checked가 이미 있는지 확인 후 add or remove 
	$('.product-filter-condition').click(function(){
		if($(this).hasClass('checked')) {
			$(this).removeClass("checked");
		} else {
			$(this).addClass("checked");
		}
		
	});
	
	
	// 검색 필터 조건(radio)을 클릭했을 때, 모든 라디오 버튼의 checked클래스를 지운 뒤
	// 선택한 조건에만 checked클래스를 추가한다.
	$('input:radio[name=light]').each(function(){
		$(this).click(function(){
			$('input:radio[name=light]').removeClass('checked');
			$(this).addClass("checked");
		});
	});
	
	
}) // $(function(){}) end