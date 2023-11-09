// JavaScript로 원(₩)으로 값 표시 설정
$('.pronia-range-slider').ionRangeSlider({
    type: "double",
    min: 0,
    from: 0,
    to: 100000,
    max: 100000,
    prettify_enabled: true, // 값 표시 활성화
    prettify: function (num) {
        return "₩ " + num ; // 원(₩) 기호 추가
    }
});

$(document).ready(function () {
    // 체크박스 이벤트 처리
    $('input[type="checkbox"]').change(function () {
        if ($(this).is(":checked")) {
            // 체크됐을 때의 동작
            console.log($(this).val() + " is checked.");
            // 여기에 동적으로 처리할 내용 추가
            // 예: 해당 체크박스에 대한 이미지를 동적으로 표시하는 등
        } else {
            // 체크가 해제됐을 때의 동작
            console.log($(this).val() + " is unchecked.");
            // 여기에 동적으로 처리할 내용 추가
        }
    });

    // 라디오 버튼 이벤트 처리
    $('input[type="radio"]').change(function () {
        if ($(this).is(":checked")) {
            // 선택됐을 때의 동작
            console.log($(this).val() + " is selected.");
            // 여기에 동적으로 처리할 내용 추가
            // 예: 선택된 라디오 버튼에 대한 이미지를 동적으로 표시하는 등
        }
    });
});


 $(function(){
 	
 	// 상품 목록 검색 필터
 	$('#pet_friendly').click(function(e){
 		console.log('You found me!: ' + $(this).val());
 	}); // 상품목록 검색필터: pet-friendly click 이벤트
 })