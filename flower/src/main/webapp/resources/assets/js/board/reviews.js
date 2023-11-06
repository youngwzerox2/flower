/**
 * 
 */
 
 
function insert_reviews_form(){
	location.href = 'insert_reviews_form';
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

function modify_form(b_idx){
	alert('adsadsa');
	location.href="modify_form?reviews_id=" + reviews_id
	
}


