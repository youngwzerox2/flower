/**
 * 
 */
function insert_form(){

	var loginCheck = $('.loginCheck').text();
	alert(loginCheck);
	
	
	
	
	if(loginCheck == '로그인'){
		
		if(confirm('로그인 후 이용가능합니다\n로그인 하시겠습니까??')==false){
		return;
		}
		
		location.href = '/flower/member/login';

	}else {
		location.href = 'insert_form';
	}
	
}

function modify_form(inquiries_id){

	if(confirm('수정하시겠습니까')==false){
		return;
		}
		
		location.href="inquiries_modify_form?inquiries_id=" + inquiries_id 

}

function del(inquiries_id){
	
	if(confirm('삭제하시겠습니까??')==false){
		return;
		}
		
		location.href = "inquiries_delete?inquiries_id=" + inquiries_id;
		
		
	}


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






