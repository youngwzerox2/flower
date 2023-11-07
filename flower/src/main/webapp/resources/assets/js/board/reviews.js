/**
 * 
 */
 
 
function insert_reviews_form(userId, productId){
	
	var loginCheck = $('.loginCheck').text();
	alert(loginCheck);
	
	
	if(loginCheck == '로그인'){
	
		if(confirm('로그인 후 이용가능합니다\n로그인 하시겠습니까??')==true){
			location.href = '/flower/member/login';
			return;	
		}
		 
	}else {
	
		
		location.href = 'insert_reviews_form';
		
	}
	
	
	
	

}




function send(f){

		var reviews_title   = f.reviews_title.value.trim();
		var reviews_content = f.reviews_content.value.trim();
		
		if(reviews_title==''){
			
			alert('제목을 입력하세요')
			f.reviews_title.value='';
			f.reviews_title.focus();
			return;
		}
		
		if(reviews_content==''){
			
			alert('내용을 입력하세요')
			f.reviews_content.value='';
			f.reviews_content.focus();
			return;
		}
		
		f.action = "reviews_insert";
		f.submit();
	}

function reviews_form(reviews_id){

	if(confirm('수정하시겠습니까??')==true){
			location.href="reviews_form?reviews_id=" + reviews_id
			return;	
		}
}

function reviews_modify(f){
	alert('qoqoqo');
	var reviews_title   = f.reviews_title.value.trim();
	var reviews_content = f.reviews_content.value.trim();
	
	if(reviews_title==''){
		
		alert('제목을 입력하세요')
		f.reviews_title.value='';
		f.reviews_title.focus();
		return;
	}
	
	if(reviews_content==''){
		
		alert('내용을 입력하세요')
		f.reviews_content.value='';
		f.reviews_content.focus();
		return;
	}
	
	f.action = "reviews_modify";
	f.submit();
}




