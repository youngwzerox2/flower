/**
 * 
 */
function insert_form(){

	var loginCheck = $('.loginCheck').text();
	//alert(loginCheck);

	if(loginCheck == '로그인'){
	
		if(confirm('로그인 후 이용가능합니다\n로그인 하시겠습니까??')==true){
			location.href = '/flower/member/login';
			return;	
		}
		 
	}else {
		location.href = 'insert_form';
	}
		
	

}

function find(){
		
	var search      = $("#search").val();
	var search_text = $("#search_text").val().trim();
	
	//전체검색이면 검색창 내용 지워라
	if(search=='all'){
		$("#search_text").val("");
	}
	
	if(search!='all'&& search_text==''){
		
		alert('검색어를 입력하세요');
		$("#search_text").val(""); //값지우기
		$("#search_text").focus();
		return;
	}
	
	location.href = "product?search=" + search + "&search_text=" + encodeURIComponent(search_text,"utf-8");
		
}


$(document).ready(function(){


	$('#send').click(function(){
		
		alert('ddd');
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
		
		$('#send_form').attr('action', 'insert');
		
		$('#send_form').submit();

	});
	
});

function add_comment(){

	var c_content = $("#c_content").val().trim();
			
		if(c_content==''){
			alert('내용을 입력하세요');
			$("#c_content").val();
			$("#c_content").focus();
			return;
		}

}

function modify_form(inquiries_id){
	
	location.href="modify_form?inquiries_id=" + inquiries_id
	
}


function send(f){
		
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
		
		f.action = "modify";
		f.submit();
	}

