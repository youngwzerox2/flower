$(function(){
	
	const id = 1;	
	
	function inquiryList(){
	
	$.ajax({
		type : 'post',
		data : {memberid : id},
		dataType : 'json',
		url : '/mypage/inquiryList',
		success : function(result){
		
		}
	
	
	});	// end of ajax

	
	}	// end of inquiryList
	
	
	
	
})