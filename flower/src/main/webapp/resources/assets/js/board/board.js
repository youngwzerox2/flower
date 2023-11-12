/**
 * 
 */
function insert_form(){

	var loginCheck = $('.loginCheck').text();
	alert(loginCheck);

	if(loginCheck == '로그인'){
		
		Swal.fire({
			  title: "문의하기",
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
		location.href = 'insert_form';
	}
	
}


function del(inquiries_id){
		
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
				  	
				  location.href = "inquiries_delete?inquiries_id=" + inquiries_id;
				  
			  }

			});
		
	}//end_del


$(document).ready(function(){

	$('#send').click(function(){
		
		var inquiries_title = $('#inquiries_title').val().trim();
		var inquiries_cotent = $('#inquiries_cotent').val().trim();
		
		if(inquiries_title==''){
			alert('제목을입력하세요');
			$('#inquiries_title').val(''); //값비우기
			$('#inquiries_title').focus(); //포커스지정
			return;
		}
		
		if(inquiries_cotent==''){
			alert('내용을입력하세요');
			$('#inquiries_cotent').val(''); //값비우기
			$('#inquiries_cotent').focus(); //포커스지정
			return;
		}
		
		$('#send_form').attr('action', 'inquiries_insert_form');
		
		$('#send_form').submit();

	});
	
});


function modify_form(inquiries_id){

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
			
				location.href="inquiries_modify_form?inquiries_id=" + inquiries_id
		  }

		});
}
function inquiries_modify(f){

	var inquiries_title  = f.inquiries_title.value.trim();
	var inquiries_cotent = f.inquiries_cotent.value.trim();
	
	if(inquiries_title==''){
		
		alert('제목을 입력하세요')
		f.inquiries_title.value='';
		f.inquiries_title.focus();
		return;
	}
	
	if(inquiries_cotent==''){
		
		alert('내용을 입력하세요')
		f.inquiries_cotent.value='';
		f.inquiries_cotent.focus();
		return;
	}
	
	f.action = "inquiries_modify";
	f.submit();
}

function inq_viewlist(){
	location.href = 'product-content?product_id=' + 1;
}

function inq_modify_viewlist(){
	location.href = 'product-content?product_id=' + 1;
}






