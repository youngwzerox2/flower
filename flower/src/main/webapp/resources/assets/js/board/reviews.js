/**
 * 
 */
 
function insert_reviews_form(userId, productId){
	
	var loginCheck = $('.loginCheck').text();
	
	if(loginCheck == '로그인'){
	
		if(confirm('로그인 후 이용가능합니다\n로그인 하시겠습니까??')==false){
		return;
		}
		
		location.href = '/flower/member/login';
		 
	}else {
	
		
		location.href = 'insert_reviews_form';
		
	}

}

function reviews_form(reviews_id){

	if(confirm('수정하시겠습니까??')==false){
		return;
		}
		
		location.href="reviews_modify_form?reviews_id=" + reviews_id 

}

function reviews_del(reviews_id){

	if(confirm('삭제하시겠습니까??')==false){
		return;
		}
		
		location.href = "reviews_delete?reviews_id=" + reviews_id; 

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


function reviews_modify(f){

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

function viewlist(product_id){
	
	location.href = 'product-content?product_id=' + 1;
}

function modify_viewlist(product_id){

	location.href = 'product-content?product_id=' + 1;
}
