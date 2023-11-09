$(function(){

var spaceprice = $(".price").text().split('원')
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
		$('.totalprice').text(totalprice+"원")

	$('.totalprice').text()


})