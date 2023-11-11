/**
 * 
 */
 
function insert_reviews_form(userId, productId){
	
	var loginCheck = $('.loginCheck').text();
	
	if(loginCheck == '로그인'){
	
		Swal.fire({
			  title: "리뷰",
			  html: '<h5>로그인을 하신 후 이용해 주시기 바랍니다.<h5>',
			  icon: 'warning',
			  showCancelButton: true,
			  confirmButtonColor: '#3085d6',
			  cancelButtonColor: '#d33',
			  confirmButtonText: '예',
			  cancelButtonText: '아니오'
			}).then((result) => {
			  if (result.isConfirmed) {
				  				  
				  location.href = '/flower/member/login';
			  }
			   
			});
		 
	}else {
	
		
		location.href = 'insert_reviews_form';
		
	}

}

function reviews_form(reviews_id){

	Swal.fire({
		  title: "문의",
		  html: '<h3>수정하시겠습니까??<h3>',
		  icon: 'question',
		  showCancelButton: true,
		  confirmButtonColor: '#3085d6',
		  cancelButtonColor: '#d33',
		  confirmButtonText: '예',
		  cancelButtonText: '아니오'
		}).then((result) => {
		  
			//예 버튼클릭
			if (result.isConfirmed) {
			  	
				location.href="reviews_modify_form?reviews_id=" + reviews_id 
		  }

		});

}

function reviews_del(reviews_id){
		
		Swal.fire({
			  title: "게시판",
			  html: '<h3>삭제하시겠습니까??<h3>',
			  icon: 'question',
			  showCancelButton: true,
			  confirmButtonColor: '#3085d6',
			  cancelButtonColor: '#d33',
			  confirmButtonText: '예',
			  cancelButtonText: '아니오'
			}).then((result) => {
			  
				//예 버튼클릭
				if (result.isConfirmed) {
				  	
				  location.href = "reviews_delete?reviews_id=" + reviews_id;
				  
			  }

			});
		
	}//end_del




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
