$(function(){

	// *********************************************
	// *******************EVENT*********************
	// *********************************************
	// 회원 > 회원관리 버튼 클릭 이벤트
	$("#account-member-info-tab").click(function(){
		searchMembers();
	});
	
	// 회원관리 > 돋보기 버튼 클릭 이벤트
	$("#memberSearchBtn").click(function(){
		searchMembers();
	});
		
    // 회원관리 > 엔터키 이벤트
    $("#memberSearchValue").on('keypress', function(e) {
        if (e.which === 13) {
            e.preventDefault();
            searchMembers();
        }
    });
    
	// 회원관리 > 상세보기 버튼 클릭 이벤트
	$(document).on("click", ".memberId", function() {
	    let email = $(this).text();
	    selectOneMember(email);
	    $("#account-member-info-detail-tab").tab('show');
	});
	
	// 회원관리 > 제한 버튼 클릭 이벤트
	$("#goLimitation").on("click", function(){
		let email = $("#detailId").text();
		openLimitation(email);
	});
	
	// 회원 관리 상세 > 목록 버튼 클릭 이벤트
	$("#goMemberList").on("click", function(){
		$("#account-member-info-tab").tab('show');
	});
	
	// 팝업 닫기 버튼
	$(document).on("click", "#closePopup", function(){
		closePopup();
	});
	
	// *********************************************
	// ****************function*********************
	// *********************************************
	
	
	// 회원 검색
	function searchMembers(){
		$.ajax({
			  type		: "get"
			, url		: "../admin/searchMembers"
			, data: {
			      searchKey: $(".nice-select").val()
			    , searchValue: $("#memberSearchValue").val()
			}
			, dataType 	: "json"
			, success 	: function(result){
				let memberList = $("#memberList");
				memberList.empty();
				
				memberList.append("<tr style='background-color: #f6f7fb'><th style='text-align: center'>ID</th style='text-align: center'><th style='text-align: center'>고객명</th style='text-align: center'><th style='text-align: center'>가입일</th style='text-align: center'><th style='text-align: center'>구매횟수</th><th style='text-align: center'>총 구매액</th><th style='text-align: center'>신고여부</th></tr>");
				
				if (result && result.length > 0) {
	                for (row of result) {
	                    let tr = $("<tr/>");
	                    let memberId = $("<td/>").append($("<a class='memberId' style='color:blue; text-decoration:underline; display: block; text-align: center;'/>").text(row["member_email"]).hover(function() { $(this).css("cursor", "pointer"); }));
	                    let memberName = $("<td style='text-align: center'/>").html(row["member_name"]);
	                    let memberRegiDate = $("<td style='text-align: center'/>").html(row["member_register_date"]);
	                    let totalOrderCnt = $("<td style='text-align: right'/>").html("0");
	                    let totalOrderPrice = $("<td style='text-align: right'/>").html("0");
	                    let reportsCnt = $("<td style='text-align: center'/>").html("N");
	
	                    tr.append(memberId);
	                    tr.append(memberName);
	                    tr.append(memberRegiDate);
	                    tr.append(totalOrderCnt);
	                    tr.append(totalOrderPrice);
	                    tr.append(reportsCnt);
	
	                    memberList.append(tr);
	                }
	            } else {
	                memberList.append("<tr><td colspan='6' style='text-align: center'>데이터가 존재하지 않습니다.</td></tr>");
	            }
				
			}
			, error 	: function(err){
				alert(err);
			}
		});
	}
	
	// 회원 멤버 상세 조회
	function selectOneMember(email){
    	$.ajax({
			  type		: "get"
			, url		: "../admin/searchMemberDetail"
			, data: { email: email }
			, dataType 	: "json"
			, success 	: function(result){
				let memberDetail = $("#memberDetail");
				memberDetail.empty();

                let mEmail 		= $("<tr/>").append($("<th>ID</th>")).append($("<td id='detailId'/>").html(result.member_email));
                let mName 		= $("<tr/>").append($("<th>고객명</th>")).append($("<td/>").html(result.member_name));
                let mRegiDate 	= $("<tr/>").append($("<th>가입일</th>")).append($("<td/>").html(result.member_register_date));
                let mOrderCnt	= $("<tr/>").append($("<th>구매횟수</th>")).append($("<td/>").html("0"));
                let mOrderPrice	= $("<tr/>").append($("<th>총 구매액</th>")).append($("<td/>").html("0"));
                let mAddress	= $("<tr/>").append($("<th>주소</th>")).append($("<td/>").html("거구장 3층, 한국ICT 3강의실"));
                let mReportYn	= $("<tr/>").append($("<th>신고여부</th>")).append($("<td/>").html("Y"));
                let mReportCont	= $("<tr/>").append($("<th>최근신고내용</th>")).append($("<td/>").append($("<a class='memberId' style='color:blue; text-decoration:underline; display: block; text-align: center;'/>").text("욕설, 혐오 및 성적인 게시글").hover(function() { $(this).css("cursor", "pointer"); })));
                
                memberDetail.append(mEmail);
                memberDetail.append(mName);
                memberDetail.append(mRegiDate);
                memberDetail.append(mOrderCnt);
                memberDetail.append(mOrderPrice);
                memberDetail.append(mAddress);
                memberDetail.append(mReportYn);
                memberDetail.append(mReportCont);
				
			}
			, error 	: function(err){
				alert(err);
			}
		});
	}
	
	// 멤버 상세 팝업 오픈
	function openLimitation(email) {
        $("#emailContent").text("클릭한 이메일 주소: " + email);
        $("#popupModal").modal("show");
    }

	// 멤버 상세 팝업 닫기
	function closePopup() {
		$("#popupModal").modal("hide");
		searchMembers();
	}
	
	
	
});