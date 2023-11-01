$(function(){

	// *********************************************
	// *******************EVENT*********************
	// *********************************************
	// 회원 > 회원관리 버튼 클릭 이벤트
	$("#account-member-info-tab").click(function(){
		selectAllMembers();
	});
		
	// 회원관리 > 상세보기 버튼 클릭 이벤트
	$(document).on("click", ".memberId", function() {
	    let email = $(this).text();
	    selectOneMember(email);
	});
	
	// *********************************************
	// ****************function*********************
	// *********************************************
	
	// 회원 목록 전체 조회
	function selectAllMembers(){
		$.ajax({
			  type		: "get"
			, url		: "../admin/selectAllMembers"
			, dataType 	: "json"
			, success 	: function(result){
				let memberList = $("#memberList");
				memberList.empty();
				
				memberList.append("<tr><th>ID</th><th>고객명</th><th>가입일</th><th>구매횟수</th><th>총 구매액</th><th>신고여부</th></tr>");
				
				for(row of result){
					let tr 				= $("<tr/>");
					let memberId 		= $("<td/>").append($("<a class='memberId' style='color:blue; text-decoration:underline;'/>").text(row["member_email"]).hover(function() {$(this).css("cursor", "pointer");}));
					let memberName 		= $("<td/>").html(row["member_name"]);
					let memberRegiDate 	= $("<td/>").html(row["member_register_date"]);
					let totalOrderCnt 	= $("<td/>").html("0");
					let totalOrderPrice = $("<td/>").html("0");
					let reportsCnt 		= $("<td/>").html("N");
					
					tr.append(memberId);
					tr.append(memberName);
					tr.append(memberRegiDate);
					tr.append(totalOrderCnt);
					tr.append(totalOrderPrice);
					tr.append(reportsCnt);
					
					memberList.append(tr);
				}
				
			}
			, error 	: function(err){
				alert(err);
			}
		});
	}
	
	// 회원 멤버 상세 조회
	function selectOneMember(email){
		alert(email);
	}
	
});