$(function(){

	// ******************************************************************************************
	// *****************************************EVENT********************************************
	// ******************************************************************************************
	
	// 대시보드(구글차트)
	// 카테고리별 판매현황
    google.charts.load("current", {packages:['corechart']});
    google.charts.setOnLoadCallback(drawChart);
    function drawChart() {
      var data = google.visualization.arrayToDataTable([
        ["Element", "Density", { role: "style" } ],
        ["Copper", 8.94, "#b87333"],
        ["Silver", 10.49, "silver"],
        ["Gold", 19.30, "gold"],
        ["Platinum", 21.45, "color: #e5e4e2"]
      ]);

      var view = new google.visualization.DataView(data);
      view.setColumns([0, 1,
                       { calc: "stringify",
                         sourceColumn: 1,
                         type: "string",
                         role: "annotation" },
                       2]);

      var options = {
        title: "",
        width: 600,
        height: 400,
        bar: {groupWidth: "95%"},
        legend: { position: "none" },
      };
      var chart = new google.visualization.ColumnChart(document.getElementById("columnchart_values"));
      chart.draw(view, options);
  }
  
  
	
	// 회원 > 회원관리 탭 클릭 이벤트
	$("#account-member-info-tab").click(function(){
		// 회원 검색
		searchMembers();
	});
	
	// 회원관리 > 돋보기 버튼 클릭 이벤트
	$("#memberSearchBtn").click(function(){
		// 회원 검색
		searchMembers();
	});
		
    // 회원관리 > 엔터키 이벤트
    $("#memberSearchValue").on('keypress', function(e) {
        if (e.which === 13) {
            e.preventDefault();
            
            // 회원 검색
            searchMembers();
        }
    });
    
	// 회원관리 > 상세보기 버튼 클릭 이벤트
	$(document).on("click", ".memberId", function() {
	    let email = $(this).text();
	    
	    // 회원 멤버 상세 조회
	    selectOneMember(email);
	    $("#account-member-info-detail-tab").tab('show');
	});
	
	// 회원관리 > 제한 버튼 클릭 이벤트
	$("#goLimitation").on("click", function(){
		let email = $("#detailId").text();
		
		// 회원 이용 제한 팝업 오픈
		openLimitation(email);
	});
	
	// 회원 관리 상세 > 목록 버튼 클릭 이벤트
	$("#goMemberList").on("click", function(){
		$("#account-member-info-tab").tab('show');
	});
	
	// 회원 이용 제한 > 제한 버튼 클릭 이벤트
	$(document).on("click", "#btn-limitApproval", function(){
		let email = $("#limitEmail").text();
		
		// 이용자 사용 제한
		limitUser(email);
	});
	
	// 회원 이용 제한 > 닫기 버튼 클릭 이벤트
	$(document).on("click", "#btn-closePopup", function(){
	
		// 회원 이용 제한 팝업 닫기
		closeLimitPopup();
	});
	
	// 회원상세 > 신고내용 버튼 클릭 이벤트
	$(document).on("click", ".reportContent", function() {
		let realId = $("#realId").text();
		let detailId = $("#detailId").text();
		let adminAction = $("#adminActionYn").text();
		
		// 신고 내역 팝업 오픈
	    openReportPopup(realId, detailId, adminAction);
	});
	
	// 신고 내역 팝업 > 신고 취소 버튼 클릭 이벤트
	$(document).on("click", "#btn-cancelReport", function(){
		let memberId = $("#reportMemberId").text();
		
		// 신고 취소
		reportCancel(memberId);
	});
	
	// 신고 내역 팝업 > 해당 글 삭제 버튼 클릭 이벤트
	$(document).on("click", "#btn-deleteReportTarget", function(){
		let reviewId = $("#reportReviewId").text();
		
		// 해당 글 삭제
		deleteReportTarget(reviewId);
	});
	
	// 신고 내역 팝업 > 닫기 버튼 클릭 이벤트
	$(document).on("click", "#btn-closeReportPopup", function(){
		let email = $("#reportEmail").text();
		
		// 신고 내역 팝업 닫기
		closeReportPopup(email);
	});
	
	// 상품 > 상품관리 탭 클릭 이벤트
	$("#account-product-info-tab").click(function(){
	
		// 상품 조회
		searchProducts();
	});
	
	// 상품관리 > 돋보기 버튼 클릭 이벤트
	$("#productSearchBtn").click(function(){
		
		// 상품 조회
		searchProducts();
	});
		
    // 상품관리 > 엔터키 이벤트
    $("#productSearchValue").on('keypress', function(e) {
        if (e.which === 13) {
            e.preventDefault();
            
            // 상품 조회
            searchProducts();
        }
    });
    
    // 상품관리 > 상품가격 &  입력 이벤트
	$(".numberWithCommas").on("input", function() {
	    let value = $(this).val();
	
	    value = value.replace(/[^0-9]/g, "");
	
	    value = value.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	
	    $(this).val(value);
	});
	
    // 상품관리 > 상품등록 버튼 클릭 이벤트
	$(document).on("click", "#registerProduct", function() {
	
		// 신규 상품ID 조회
		selectNewProductID();
		
	    $("#account-product-info-register-tab").tab('show');
	});
	
	// 상품관리 > 상세보기 버튼 클릭 이벤트
	$(document).on("click", ".productId", function() {
	    let productId = $(this).text();
	    
	    // 상품 상세 조회
	    selectOneProduct(productId, "detail");
	    $("#account-product-info-detail-tab").tab('show');
	});
	
	// 이미지 변경 시 이벤트
	$('.imgFile').change(function () {
	    const files = this.files;
	    const type = $(this).attr('class').split(' ')[1];
	
	    if (!selectedFiles[type]) {
	        selectedFiles[type] = [];
	    }
	
	    selectedFiles[type] = selectedFiles[type].concat([...files]);
	    updateFileList(type);
	});
	
	// 상품등록 > 등록 버튼 클릭 이벤트
	$(document).on("click", "#goProductRegister", function(){
	
		// 상품 validation 확인
		productValidation();
	});
	
	// 상품 등록 > 목록 버튼 클릭 이벤트
	$("#cancelProductRegister").on("click", function(){
	
		// 상품 조회
		searchProducts();
		$("#account-product-info-tab").tab('show');
	});
	
	// 상품 관리 상세 > 목록 버튼 클릭 이벤트
	$("#goProductList").on("click", function(){
			
		// 상품 조회
		searchProducts();
		$("#account-product-info-tab").tab('show');
	});
	
	// 상품 상세 > 수정 버튼 클릭 이벤트
	$(document).on("click", "#goProductModify", function() {
		let proId = $("#productDetailId").text();
		
		// 상품 상세 조회
		selectOneProduct(proId, "modify");
	    $("#account-product-info-modify-tab").tab('show');
	});
	
	// 상품 관리 상세 > 상품노출거부 버튼 클릭 이벤트
	$("#goProductHide").on("click", function(){
		let proId 	= $("#productDetailId").text();
		let proStat = $("#proVisiStatus").text();
		
		// 상품노출여부 팝업 오픈
		openVisible(proId, proStat);
	});
	
	// 상품 노출 확인 > 수정 버튼 클릭 이벤트
	$(document).on("click", "#btn-visibleProduct", function(){
		let proId = $("#visibleProduct").text();
		let proStat = $("#proVisiStatus").text();
		
		// 상품노출여부 변경
		visibleProduct(proId, proStat);
	});
	
	// 상품 노출 확인 > 닫기 버튼 클릭 이벤트
	$(document).on("click", "#btn-closeVisiblePopup", function(){
	
		// 상품 노출 확인 팝업 닫기
		closeVisiblePopup();
	});
	
	// 상품 > 리뷰관리 탭 클릭 이벤트
	$("#account-reviews-tab").click(function(){
	
		// 리뷰 조회
		searchReviews();
	});
	
	// 상품 관리 > 돋보기 버튼 클릭 이벤트
	$("#reviewSearchBtn").click(function(){
	
		// 리뷰 조회
		searchReviews();
	});
		
    // 상품관리 > 엔터키 이벤트
    $("#reviewSearchValue").on('keypress', function(e) {
        if (e.which === 13) {
            e.preventDefault();
            
            // 리뷰 조회
            searchReviews();
        }
    });
    
    // 상품 수정 > 목록 버튼 클릭 이벤트
    $("#cancelProductRegister").click(function(){
    
    	// 상품 조회
		searchProducts();
		
    	$("#account-product-info-tab").tab('show');
    });
    
    // 리뷰관리 > 리뷰 클릭 이벤트
	$(document).on("click", ".reviewId", function() {
	    let reviewId = $(this).text();
	    
	    // 리뷰 상세 조회
	    selectOneReview(reviewId);
	    
	    $("#account-review-info-detail-tab").tab('show');
	});
	
	// 주문 > 주문관리 탭 클릭 이벤트
	$("#account-orders-info-tab").click(function(){
	
		// 주문 조회
		searchOrders();
	});
	
	// 주문 관리 > 돋보기 버튼 클릭 이벤트
	$("#orderSearchBtn").click(function(){
	
		// 주문 조회
		searchOrders();
	});
		
    // 주문 관리 > 엔터키 이벤트
    $("#orderSearchValue").on('keypress', function(e) {
        if (e.which === 13) {
            e.preventDefault();
            
            // 주문 조회
            searchOrders();
        }
    });
    
    // 주문 관리 > 주문 클릭 이벤트
	$(document).on("click", ".orderDetailNumber", function() {
	    let orderDetailNumber = $(this).text();
	    
	    // 주문 상세 조회
	    selectOneOrder(orderDetailNumber);
	    
	    $("#account-order-info-detail-tab").tab('show');
	});
	
	// 주문 상세 > 상품번호 클릭 이벤트
	$(document).on("click", ".orderProductId", function(){
		let productId = $(this).text();
	
		// 상품 상세 조회
		selectOneProduct(productId, "detail"); 
		$("#account-product-info-detail-tab").tab('show');
	});
	
	// 주문 상세 > 목록 버튼 클릭 이벤트
	$("#goOrderList").click(function(){
		
		// 주문 조회
        searchOrders();
		$("#account-orders-info-tab").tab('show');
	});
	
	// 주문 상세 > 주문 확인 버튼 클릭 이벤트
	$("#goOrderSuccess").click(function(){
		
		// 관리자 주문 확인
		adminOrderConfirmation("confirm");
	});
	
	// 주문 상세 > 주문 취소 버튼 클릭 이벤트
	$("#goOrderCancel").click(function(){
		let orderDetailNum = $("#orderDetailNumber").text();
		
		// 주문 취소 팝업 오픈
		openOrderCancelPopup(orderDetailNum);
	});
	
	// 주문 취소 팝업 > 주문 취소 버튼 클릭 이벤트
	$(document).on("click", "#btn-orderCancel", function(){
	
		// 관리자 주문 확인
		adminOrderConfirmation("cancel");
	});
	
	// 주문 취소 팝업 > 닫기 버튼 클릭 이벤트
	$(document).on("click", "#btn-closeOrderCancelPopup", function(){
		let cancelOrderNum = $("#orderCancelNum").text();
		
		// 주문 취소 팝업 닫기
		closeOrderCancelPopup(cancelOrderNum);
	});
	
	    
	// 설정 > 정책관리 탭 클릭 이벤트
	$("#account-policies-tab").click(function(){
	
		// 정책관리 조회
		searchPolicies();
	});
	
	// 정책관리 > 탭 클릭 이벤트
	$(document).on("click", "a[alt='poliesValue']", function(){
		let id 	 = $(this).attr("id");
		let text = $(this).text();
		
		// 정책관리 내용 조회
		serchPolicyValue(id, text);
	});
	
	// 정책관리 > 수정 버튼 클릭 이벤트
	$("#goModifyPolicy").click(function(){
	
		// 정책관리 수정
		modifyPolicy();
	})
	
	// ******************************************************************************************
	// ************************************function**********************************************
	// ******************************************************************************************
	
	// 숫자 형식화
	function formatNumberWithCommas(number) {
		if (number === null || number === undefined) {
	    	return "0";
	  	}
	  	
	  return number.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
	}
	
	// 회원 검색
	function searchMembers(){
		$.ajax({
			  type		: "get"
			, url		: "../admin/searchMembers"
			, data: {
			      searchKey: $("#memberSelectbox").val()
			    , searchValue: $("#memberSearchValue").val()
			}
			, dataType 	: "json"
			, success 	: function(result){
				let memberList = $("#memberList");
				memberList.empty();
				
				memberList.append("<tr style='background-color: #f6f7fb'><th style='text-align: center'>ID</th style='text-align: center'><th style='text-align: center'>고객명</th style='text-align: center'><th style='text-align: center'>가입일</th style='text-align: center'><th style='text-align: center'>구매횟수</th><th style='text-align: center'>총 구매액</th><th style='text-align: center'>회원상태</th><th style='text-align: center'>신고여부</th></tr>");
				
				if (result && result.length > 0) {
	                for (row of result) {
	                    let tr 				= $("<tr/>");
	                    let memberId 		= $("<td/>").append($("<a class='memberId' style='color:blue; text-decoration:underline; display: block; text-align: center;'/>").text(row["member_email"]).hover(function() { $(this).css("cursor", "pointer"); }));
	                    let memberName 		= $("<td style='text-align: center'/>").html(row["member_name"]);
	                    let memberRegiDate 	= $("<td style='text-align: center'/>").html(row["member_register_date"]);
	                    let totalOrderCnt 	= $("<td style='text-align: right'/>").html("120,000");
	                    let totalOrderPrice = $("<td style='text-align: right'/>").html("23,000");
	                    let memberStatus 	= $("<td style='text-align: center'/>").html(row["member_status"]);
	                    let reportYn 		= $("<td style='text-align: center'/>").html(row["report_yn"]);
	
	                    tr.append(memberId);
	                    tr.append(memberName);
	                    tr.append(memberRegiDate);
	                    tr.append(totalOrderCnt);
	                    tr.append(totalOrderPrice);
	                    tr.append(memberStatus);
	                    tr.append(reportYn);
	
	                    memberList.append(tr);
	                }
	            } else {
	                memberList.append("<tr><td colspan='7' style='text-align: center'>데이터가 존재하지 않습니다.</td></tr>");
	            }
				
			}
			, error 	: function(err){
				alert("회원 조회 중 에러가 발생했습니다. 관리자에게 문의 바랍니다.");
				console.log(err);
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

                let mId 		= $("<tr style='display: none;'/>").append($("<th>realID</th>")).append($("<td id='realId'/>").html(result.member_id));
                let mEmail 		= $("<tr/>").append($("<th>ID</th>")).append($("<td id='detailId'/>").html(result.member_email));
                let mName 		= $("<tr/>").append($("<th>고객명</th>")).append($("<td/>").html(result.member_name));
                let mRegiDate 	= $("<tr/>").append($("<th>가입일</th>")).append($("<td/>").html(result.member_register_date));
                let mOrderCnt	= $("<tr/>").append($("<th>구매횟수</th>")).append($("<td/>").html("120,000"));
                let mOrderPrice	= $("<tr/>").append($("<th>총 구매액</th>")).append($("<td/>").html("23,000"));
                let mAddress	= $("<tr/>").append($("<th>주소</th>")).append($("<td/>").html("거구장 3층, 한국ICT 3강의실"));
                let mStatus		= $("<tr/>").append($("<th>회원상태</th>")).append($("<td/>").html(result.member_status));
                let mReportYn	= $("<tr/>").append($("<th>신고여부</th>")).append($("<td/>").html(result.report_yn));
                let mReportCnt	= $("<tr/>").append($("<th>신고횟수</th>")).append($("<td id='reportCnt'/>").html(result.reports_cnt));
                let mReportDay	= $("<tr/>").append($("<th>신고일</th>")).append($("<td/>").html(result.reports_date));
                let adminAction	= $("<tr/>").append($("<th>관리자조치</th>")).append($("<td id='adminActionYn'/>").html(result.admin_action_yn));
                let mReportCont	= reportTag(result.report_contents);
                
                memberDetail.append(mId);
                memberDetail.append(mEmail);
                memberDetail.append(mName);
                memberDetail.append(mRegiDate);
                memberDetail.append(mOrderCnt);
                memberDetail.append(mOrderPrice);
                memberDetail.append(mAddress);
                memberDetail.append(mStatus);
                memberDetail.append(mReportYn);
                memberDetail.append(mReportCnt);
                memberDetail.append(mReportDay);
                memberDetail.append(adminAction);
                memberDetail.append(mReportCont);
				
			}
			, error 	: function(err){
				alert("회원 상세 조회 중 에러가 발생했습니다. 관리자에게 문의 바랍니다.");
				console.log(err);
			}
		});
	}
	
	// 신고내용 태그 변경
	function reportTag(content){
		if(content == "없음"){
			return $("<tr/>").append($("<th>최근신고내용</th>")).append($("<td/>").text(content));
		}else{
			return $("<tr/>").append($("<th>최근신고내용</th>")).append($("<td/>").append($("<a class='reportContent' style='color:blue; text-decoration:underline; display: block; text-align: center;'/>").text(content).hover(function() { $(this).css("cursor", "pointer"); })));
		}
	}
	
	// 회원 이용 제한 팝업 오픈
	function openLimitation(email) {
        $("#limitEmail").text(email);
        $("#popupLimitModal").modal("show");
    }

	// 회원 이용 제한 팝업 닫기
	function closeLimitPopup() {
		$("#popupLimitModal").modal("hide");
		
		// 회원 검색
		searchMembers();
	}
	
	// 이용자 사용 제한
	function limitUser(email){
		$.ajax({
			  type 		: "post"
			, url		: "../admin/limitMember"
			, data		: { email : email}
			, success	: function(){
				alert("회원 이용 제한이 처리 되었습니다.");
				
				// 회원 이용 제한 팝업 닫기
				closeLimitPopup();
				
				// 회원 멤버 상세 조회
				selectOneMember(email);
			}
			, 
			error 	: function(err){
				alert("회원 이용 제한 조치 중 에러가 발생했습니다. 관리자에게 문의 바랍니다.");
				console.log(err);
			}
		});
	}
	
	// 신고 내역 팝업 오픈
	function openReportPopup(realId, detailId, adminAction){
		 $("#popupReportModal").modal("show");
		 $("#reportMemberId").text(realId);
		 $("#reportEmail").text(detailId);
		 
		 $.ajax({
			  type 		: "get"
			, url		: "../admin/searchReportContent"
			, data		: { realId : realId}
			, dataType 	: "json"
			, success	: function(result){
				$("#reportProductId").text(result.product_id);
				$("#reportReviewId").text(result.reviews_id);
				$("#reportTitle").text(result.reviews_title);
				$("#reportReviewContent").text(result.reviews_content);
				$("#reportReviewRegiDate").text(result.reviews_register_date);
				$("#reportCnt").text(result.reports_cnt);
				$("#reportContent").text(result.report_contents);
				$("#reportDate").text(result.reports_date);
				
				// 관리자 조치에 따른 글삭제 버튼 컨트롤
				if (adminAction == "Y") {
                	$("#btn-deleteReportTarget").prop("disabled", true);
	            } else {
	                $("#btn-deleteReportTarget").prop("disabled", false);
	            }
	            
	            // 신고횟수에 따른 신고취소 버튼 컨트롤
	            if(result.reports_cnt > 0){
	            	$("#btn-cancelReport").prop("disabled", false);
	            }else{
	            	$("#btn-cancelReport").prop("disabled", true);
	            }
			}
			, 
			error 	: function(err){
				alert("신고 내용 조회 중 에러가 발생했습니다. 관리자에게 문의 바랍니다.");
				console.log(err);
			}
		});
	}
	
	// 신고 취소
	function reportCancel(memberId){
		let proId = $("#reportProductId").text();
		let email = $("#reportEmail").text();
		
		$.ajax({
			  type 		: "post"
			, url		: "../admin/reportCancel"
			, data		: { 
							memberId  : memberId 
						  , productId : proId	
						  }
			, success	: function(){
				alert("신고 취소 처리 되었습니다.");
				
				// 신고 내역 팝업 닫기
				closeReportPopup(email);
			}
			, 
			error 	: function(err){
				alert("신고 취소처리 중 에러가 발생했습니다. 관리자에게 문의 바랍니다.");
				console.log(err);
			}
		});
	}
	
	// 해당 글 삭제
	function deleteReportTarget(reviewId){
		let proId = $("#reportProductId").text();
		let email = $("#reportEmail").text();
		
		$.ajax({
			  type 		: "post"
			, url		: "../admin/deleteReportTarget"
			, data		: { reviewId : reviewId }
			, success	: function(result){
				alert("해당 글 삭제가 처리 되었습니다.");
				
				// 신고 내역 팝업 닫기
				closeReportPopup(email);
			}
			, 
			error 	: function(err){
				alert("해당 글 삭제 처리 중 에러가 발생했습니다. 관리자에게 문의 바랍니다.");
				console.log(err);
			}
		});
	}
	
	// 신고 내역 팝업 닫기
	function closeReportPopup(email){
		$("#popupReportModal").modal("hide");
		
		// 회원 멤버 상세 조회
		selectOneMember(email);
	}
	
	// 상품 조회
	function searchProducts(){
		$.ajax({
			  type		: "get"
			, url		: "../admin/searchProducts"
			, data: {
			      searchKey: $("#productSelectbox").val()
			    , searchValue: $("#productSearchValue").val()
			}
			, dataType 	: "json"
			, success 	: function(result){
				let productList = $("#productList");
				productList.empty();
				
				productList.append("<tr style='background-color: #f6f7fb'><th style='text-align: center'>상품ID</th><th style='text-align: center'>상품명</th><th style='text-align: center'>가격</th><th style='text-align: center'>좋아요</th><th style='text-align: center'>재고</th><th style='text-align: center'>상품노출</th></tr>");
				
				if (result && result.length > 0) {
	                for (row of result) {
	                    let tr 				= $("<tr/>");
	                    let productId 		= $("<td/>").append($("<a class='productId' style='color:blue; text-decoration:underline; display: block; text-align: center;'/>").text(row["product_id"]).hover(function() { $(this).css("cursor", "pointer"); }));
	                    let productName 	= $("<td style='text-align: center'/>").html(row["product_name"]);
	                    let productContent	= $("<td style='text-align: center'/>").html(row["product_content"]);
	                    let productPrice 	= $("<td style='text-align: right'/>").html(formatNumberWithCommas(row["product_price"]));
	                    let productLikes	= $("<td style='text-align: right'/>").html(formatNumberWithCommas(row["likes"]));
	                    let productQuantity = $("<td style='text-align: center'/>").html(formatNumberWithCommas(row["inventory_quantity"]));
	                    let productState	= $("<td style='text-align: center'/>").html(row["product_state"]);
	
	                    tr.append(productId);
	                    tr.append(productName);
	                    //tr.append(productContent);
	                    tr.append(productPrice);
	                    tr.append(productLikes);
	                    tr.append(productQuantity);
	                    tr.append(productState);
	
	                    productList.append(tr);
	                }
	            } else {
	                productList.append("<tr><td colspan='7' style='text-align: center'>데이터가 존재하지 않습니다.</td></tr>");
	            }
				
			}
			, error 	: function(err){
				alert("상품 조회 중 에러가 발생했습니다. 관리자에게 문의 바랍니다.");
				console.log(err);
			}
		});
	}
	
	// 신규 상품ID 조회
	function selectNewProductID(){
		$.ajax({
	          type: "get"
	        , url: "../admin/selectNewProductID"
	        , dataType 	: "json"
	        , success: function(result) {
	        
	        	// 상품 등록 초기화
                $("#rProductID").val(result);
                $("#rProductName").val("");
                $("#rProductKeyword").val("");
                $("#rProductCnt").val("");
                $("#rProductPrice").val("");
                $('#rbloomingSeasonSelectbox').val("");
                $('#rbloomingSeasonSelectbox').siblings('div').find('li').attr("class", "option");
                $('#rbloomingSeasonSelectbox').siblings('div').find('li:first').addClass('option focus selected');
                $('#rbloomingSeasonSelectbox').siblings('div').find('span').text("선택");
                $('#rbloomingTimeSelectbox').val("");
                $('#rbloomingTimeSelectbox').siblings('div').find('li').attr("class", "option");
                $('#rbloomingTimeSelectbox').siblings('div').find('li:first').addClass('option focus selected');
                $('#rbloomingTimeSelectbox').siblings('div').find('span').text("선택");
                $('#rlightSelectbox').val("");
                $('#rlightSelectbox').siblings('div').find('li').attr("class", "option");
                $('#rlightSelectbox').siblings('div').find('li:first').addClass('option focus selected');
                $('#rlightSelectbox').siblings('div').find('span').text("선택");
                $("input[name='rPetFriendly'][value='1']").prop("checked", true);
                $("input[name='rBeginnerStatus'][value='1']").prop("checked", true);
                $("input[name='rProductState'][value='Y']").prop("checked", true);
                
                // 이미지 파일 초기화
                selectedFiles.guide = [];
    			selectedFiles.list = [];
    			selectedFiles.main = [];
    			selectedFiles.sub = [];
    			
    			$('#guide-file-list').empty();
			    $('#list-file-list').empty();
			    $('#main-file-list').empty();
			    $('#sub-file-list').empty();
        		
        		$("input[alt='registerImg']").val('');
        		
	        }
	        , error: function(err) {
	            alert("신규 상품ID 조회 중 에러가 발생했습니다. 관리자에게 문의 바랍니다.");
				console.log(err);
	        }
	    });
	}
	
	// 상품 상세 조회
	function selectOneProduct(productId, val){
    	$.ajax({
			  type		: "get"
			, url		: "../admin/searchProductDetail"
			, data: { productId: productId }
			, dataType 	: "json"
			, success 	: function(result){
			
				let product = result.product;
				let imgs 	= result.imgs;
					
				// 상세 조회 화면 시
				if(val == "detail"){
					let productDetail = $("#productDetail");
					productDetail.empty();
					
					if (product && product.length > 0) {
		                for (row of product) {
		                    let pId			= $("<tr/>").append($("<th>상품ID</th>")).append($("<td id='productDetailId' colspan='2'/>").html(row["product_id"]));
			                let pcateId 	= $("<tr/>").append($("<th>카테고리ID</th>")).append($("<td colspan='2'/>").html(row["cate_id"]));
			                let pName	 	= $("<tr/>").append($("<th>상품명</th>")).append($("<td colspan='2'/>").html(row["product_name"]));
			                let pContent	= $("<tr/>").append($("<th>상품설명</th>")).append($("<td colspan='2'/>").html(row["product_content"]));
			                let pKeyword	= $("<tr/>").append($("<th>상품키워드</th>")).append($("<td colspan='2'/>").html(row["product_keyword"]));
			                let pBloSeason	= $("<tr/>").append($("<th>개화시기</th>")).append($("<td colspan='2'/>").html(row["blooming_season"]));
			                let pBloTime	= $("<tr/>").append($("<th>개화시간</th>")).append($("<td colspan='2'/>").html(row["blooming_time"]));
			                let pPetFriend	= $("<tr/>").append($("<th>펫 친화여부</th>")).append($("<td colspan='2'/>").html(row["pet_friendly"]));
			                let pEasyCare	= $("<tr/>").append($("<th>초보자여부</th>")).append($("<td colspan='2'/>").html(row["easy_care"]));
			                let pQuantity	= $("<tr/>").append($("<th>재고수량</th>")).append($("<td colspan='2'/>").html(formatNumberWithCommas(row["inventory_quantity"])));
			                let pPrice		= $("<tr/>").append($("<th>상품가격</th>")).append($("<td colspan='2'/>").html(formatNumberWithCommas(row["product_price"])));
			                let pRegDate	= $("<tr/>").append($("<th>상품등록일</th>")).append($("<td colspan='2'/>").html(row["product_register_date"]));
			                let pState		= $("<tr/>").append($("<th>상품노출</th>")).append($("<td id='proVisiStatus' colspan='2'/>").html(row["product_state"]));
			                let pLight		= $("<tr/>").append($("<th>채광</th>")).append($("<td colspan='2'/>").html(row["product_light"]));
			                let pLikes		= $("<tr/>").append($("<th>좋아요</th>")).append($("<td colspan='2'/>").html(formatNumberWithCommas(row["likes"])));
			                
			                productDetail.append(pId);
			                productDetail.append(pRegDate);
			                // productDetail.append(pcateId);
			                productDetail.append(pName);
			                // productDetail.append(pContent);
			                productDetail.append(pKeyword);
			                productDetail.append(pBloSeason);
			                productDetail.append(pBloTime);
			                productDetail.append(pPetFriend);
			                productDetail.append(pLight);
			                productDetail.append(pEasyCare);
			                productDetail.append(pPrice);
			                productDetail.append(pQuantity);
			                productDetail.append(pLikes);
			                productDetail.append(pState);
			                
			                if(row["product_state"] == "Y"){
	            				$("#goProductHide").text(" 상품노출거부 ");
	            			}else{
	            				$("#goProductHide").text(" 상품노출희망 ");
	            			}
		                }
		                
		            }
		            
		           	let imgRow = $("<tr/>")
					  .append($("<th>상품 이미지</th>"))
					  .append(
					    $("<td>").append(
					      $("<table border='2'>")
					        .append($("<tr>").append("<td style='border: 1px solid #000000;'>가이드</td>").append("<td id='pGuide'/>"))
	                        .append($("<tr>").append("<td style='border: 1px solid #000000;'>리스트</td>").append("<td id='pList' />"))
	                        .append($("<tr>").append("<td style='border: 1px solid #000000;'>메인</td>").append("<td id='pMain'/>"))
	                        .append($("<tr>").append("<td style='border: 1px solid #000000;'>서브</td>").append("<td id='pSub'/>"))
					    )
					);
		            
		            productDetail.append(imgRow);
		            
		            if (imgs && imgs.length > 0) {
		                for (row of imgs) {
		                    let img = $("<img>").attr("src", "../resources/product/imgs/" + row["product_image_froute"] + "/" + row["product_image_file_name"]);
		                    switch (row["product_image_froute"]) {
		                        case "guide":
		                        	$("#pGuide").append($("<td/>").append(img));
		                            break;
		                        case "list":
		                            $("#pList").append($("<td/>").append(img));
		                            break;
		                        case "main":
		                            $("#pMain").append($("<td/>").append(img));
		                            break;
		                        case "sub":
		                            $("#pSub").append($("<td/>").append(img));
		                            break;
		                        default:
		                            break;
		                    }
		                }
	            	}
	            // 상품 수정 화면 시 (+ 그 외)
				}else{
					if (product && product.length > 0) {
		                for (row of product) {
		                	// 상품코드 변경
		                	let bloomTime = changeProductCode(row["blooming_time"]);
		                	let bloomingSeason = changeProductCode(row["blooming_season"]);
		                	let petFriendly = changeProductCode(row["pet_friendly"]);
		                	let easyCare = changeProductCode(row["easy_care"]);
		                	let productLight = changeProductCode(row["product_light"]);
		                	
		                	$("#mProductID").val(row["product_id"]);
		                	$("#mProductName").val(row["product_name"]);
		                	$("#mProductKeyword").val(row["product_keyword"]);
		                	$("#mProductKeyword").val(row["product_keyword"]);
			                $('#mbloomingSeasonSelectbox').val(row["blooming_season"]);
			                $('#mbloomingSeasonSelectbox').siblings('div').find('li').attr("class", "option");
			                $('#mbloomingSeasonSelectbox').siblings('div').find('li:contains("'+bloomingSeason+'")').addClass('option focus selected');
			                $('#mbloomingSeasonSelectbox').siblings('div').find('span').text(bloomingSeason);
			                $('#mbloomingTimeSelectbox').val(row["blooming_time"]);
			                $('#mbloomingTimeSelectbox').siblings('div').find('li').attr("class", "option");
			                $('#mbloomingTimeSelectbox').siblings('div').find('li:contains("'+bloomTime+'")').addClass('option focus selected');
			                $('#mbloomingTimeSelectbox').siblings('div').find('span').text(bloomTime);
			                $('#mbloomingTimeSelectbox').val(row["product_light"]);
			                $('#mbloomingTimeSelectbox').siblings('div').find('li').attr("class", "option");
			                $('#mbloomingTimeSelectbox').siblings('div').find('li:contains("'+productLight+'")').addClass('option focus selected');
			                $('#mbloomingTimeSelectbox').siblings('div').find('span').text(productLight);
			                $("input[name='mPetFriendly'][value='"+petFriendly+"']").prop("checked", true);
			                $("input[name='mBeginnerStatus'][value='"+easyCare+"']").prop("checked", true);
			                $("input[name='mProductState'][value='"+row["product_state"]+"']").prop("checked", true);
			                $("#mProductPrice").val(formatNumberWithCommas(row["product_price"]));
			                $("#mProductCnt").val(formatNumberWithCommas(row["inventory_quantity"]));
		                }
		            }
		            
		            if (imgs && imgs.length > 0) {
		                for (row of imgs) {
		                    let img = $("<img>").attr("src", "../resources/product/imgs/" + row["product_image_froute"] + "/" + row["product_image_file_name"]);
		                    switch (row["product_image_froute"]) {
		                        case "guide":
		                        	// 수정 요청 부분
		                            break;
		                        case "list":
		                            // 수정 요청 부분
		                            break;
		                        case "main":
		                            // 수정 요청 부분
		                            break;
		                        case "sub":
		                            // 수정 요청 부분
		                            break;
		                        default:
		                            break;
		                    }
		                }
	            	}
		            console.log(imgs);
		            
		            
				}
			}
			, error 	: function(err){
				alert("상품 상세 조회 중 에러가 발생했습니다. 관리자에게 문의 바랍니다.");
				console.log(err);
			}
			
		});
	}
	
	// 상품 코드 변환
	function changeProductCode(param){
		switch(param){
			case "D" 		: return "낮";
			case "N" 		: return "밤";
			case "O" 		: return "1";
			case "X" 		: return "0";
			case "DL"		: return "직광";  
			case "IDL"		: return "간접광";  
			case "SH"		: return "그늘";
			case "all"		: return "사계절";
			case "spring"	: return "봄";
			case "summer"	: return "여름";
			case "fall"		: return "가을";
			case "winter"	: return "겨울";
			
			default : return param; 
		}
	}
	
	// 상품 validation 확인
	function productValidation(){
		
		// 상품명 체크
		if($("#rProductName").val().trim() == ""){
			alert("상품명을 입력하세요.");
			return;
		}
		
		// 상품키워드 체크
		if($("#rProductKeyword").val().trim() == ""){
			alert("상품키워드를 입력하세요.");
			return;
		}
		
		// 개화시기 체크
		if($("#rbloomingSeasonSelectbox").val() == ""){
			alert("개화시기를 선택하세요.");
			return;
		}
		
		// 개화시간 체크
		if($("#rbloomingTimeSelectbox").val() == ""){
			alert("개화시간을 선택하세요.");
			return;
		}
		
		// 채광 체크
		if($("#rlightSelectbox").val() == ""){
			alert("채광을 선택하세요.");
			return;
		}
		
		// 상품가격 체크
		if($("#rProductPrice").val().trim() == ""){
			alert("상품가격을 입력하세요.");
			return;
		}
		
		// 상품재고 체크
		if($("#rProductCnt").val().trim() == ""){
			alert("상품재고를 입력하세요.");
			return;
		}
		
		// 파일 체크
		// 가이드 이미지 체크
		if (!validateFileInput("guidefile")) {
	        alert("가이드 이미지를 선택하세요.");
	        return;
	    }
	
		// 리스트 이미지 체크
	    if (!validateFileInput("listfile")) {
	        alert("리스트 이미지를 선택하세요.");
	        return;
	    }
	
		// 메인 이미지 체크
	    if (!validateFileInput("mainfile")) {
	        alert("메인 이미지를 선택하세요.");
	        return;
	    }
	
		// 서브 이미지 체크
	    if (!validateFileInput("subfile")) {
	        alert("서브 이미지를 선택하세요.");
	        return;
	    }
	    
		// 상품 등록
		registerProduct();
	}
	
	// 상품 등록 이미지 파일 존재 여부 체크 	
	function validateFileInput(inputName) {
	    let fileInput = $("input[name='" + inputName + "']");
	    return fileInput[0].files.length > 0;
	}
	
	// 상품 등록
	let selectedFiles = { guide: [], list: [], main: [], sub: [] };
	
	function registerProduct(){
		let formData = new FormData($("#registerImgsForm")[0]);
		formData.append("product_id", $("#rProductID").val());
		formData.append("product_name", $("#rProductName").val());
		formData.append("product_keyword", $("#rProductKeyword").val());
		formData.append("blooming_season", $("#rbloomingSeasonSelectbox").val());
		formData.append("blooming_time", $("#rbloomingTimeSelectbox").val());
		formData.append("pet_friendly", $("input[name='rPetFriendly']:checked").val());
		formData.append("product_light", $("#rlightSelectbox").val());
		formData.append("easy_care", $("input[name='rBeginnerStatus']:checked").val());
    	formData.append("product_price", $("#rProductPrice").val().replace(/,/g, ""));
    	formData.append("inventory_quantity", $("#rProductCnt").val().replace(/,/g, ""));
    	formData.append("product_state", $("input[name='rProductState']:checked").val());
		
	    $.ajax({
	          type: "POST"
	        , url: "../admin/registerProduct"
	        , data: formData
	        , cache: false
	        , contentType: false
	        , processData: false
	        , success: function(result) {
	            if (result === "complete") {
	                alert("상품등록이 완료 되었습니다.")
	                
	                // 신규 상품ID 조회
	                selectNewProductID();
	            } else {
	                alert("상품등록이 실패 했습니다. 목록에서 재등록 부탁드립니다.")
	                return;
	            }
	        }
	        , error: function(err) {
	            alert("상품 이미지 등록 중 에러가 발생했습니다. 관리자에게 문의 바랍니다.");
				console.log(err);
	        }
	    });
	}
	
	// 파일 업로드
	function updateFileList(type) {
	    const fileListContainer = $('#' + type + '-file-list');
	    fileListContainer.empty();
	
	    for (let i = 0; i < selectedFiles[type].length; i++) {
	        const item = $('<div>');
	        const fileName = $(document.createTextNode(selectedFiles[type][i].name));
	        const deleteButton = $('<button>', {
	            text: 'X',
	            click: function (event) {
	                item.remove();
	                event.preventDefault();
	                deleteFile(type, i);
	            }
	        });
	
	        item.append(fileName, deleteButton);
	        fileListContainer.append(item);
	    }
	}
	
	// 특정 행 이미지 삭제
	function deleteFile(type, index) {
	    selectedFiles[type].splice(index, 1);
	    updateFileList(type);
	}
	
	// 상품노출여부 팝업 오픈
	function openVisible(proId, proStat) {
        $("#visibleProduct").text(proId);
        $("#visibleStatus").text(proStat);
        if(proStat == "Y"){
        	$("#btn-visibleProduct").text("숨김");
        }else{
        	$("#btn-visibleProduct").text("노출");
        }
        
        $("#popupVisibleModal").modal("show");
    }

	// 상품노출여부 변경
	function visibleProduct(proId, proStat){
		$.ajax({
			  type 		: "post"
			, url		: "../admin/modifyProductVisible"
			, data		: { 
							  proId   : proId
							, proStat : proStat
						  }
			, success	: function(){
				alert("상품 노출 정보가 수정 되었습니다.");
				
				// 상품 노출 확인 팝업 닫기
				closeVisiblePopup();
				
				// 상품 상세 조회
				selectOneProduct(proId, "detail");
			}
			, 
			error 	: function(err){
				alert("상품 노출 정보 수정 중 에러가 발생했습니다. 관리자에게 문의 바랍니다.");
				console.log(err);
			}
		});
	}
	    
    // 상품 노출 확인 팝업 닫기
	function closeVisiblePopup() {
		$("#popupVisibleModal").modal("hide");
	}
	
	// 리뷰 조회
	function searchReviews(){
		$.ajax({
			  type		: "get"
			, url		: "../admin/searchReviews"
			, data: {
			      searchKey: $("#reviewSelectbox").val()
			    , searchValue: $("#reviewSearchValue").val()
			}
			, dataType 	: "json"
			, success 	: function(result){
				let reviewList = $("#reviewList");
				reviewList.empty();
				
				reviewList.append("<tr style='background-color: #f6f7fb'><th style='text-align: center'>리뷰ID</th style='text-align: center'><th style='text-align: center'>회원ID</th style='text-align: center'><th style='text-align: center'>상품ID</th style='text-align: center'><th style='text-align: center'>리뷰제목</th><th style='text-align: center'>리뷰내용</th><th style='text-align: center'>리뷰등록일</th><th style='text-align: center'>신고여부</th></tr>");
				
				if (result && result.length > 0) {
	                for (row of result) {
	                    let tr 					= $("<tr/>");
	                    let rReviewsId 			= $("<td/>").append($("<a class='reviewId' style='color:blue; text-decoration:underline; display: block; text-align: center;'/>").text(row["reviews_id"]).hover(function() { $(this).css("cursor", "pointer"); }));
	                    let rMemberId 			= $("<td style='text-align: center'/>").html(row["member_id"]);
	                    let rProductId 			= $("<td style='text-align: center'/>").html(row["product_id"]);
	                    let rReviewsTitle 		= $("<td style='text-align: center'/>").html(row["reviews_title"]);
	                    let rReviewsContent 	= $("<td style='text-align: center'/>").html(row["reviews_content"]);
	                    let rReviewsRegDate 	= $("<td style='text-align: center'/>").html(row["reviews_register_date"]);
	                    let reportYn 			= $("<td style='text-align: center'/>").html(row["report_yn"]);
	
	                    tr.append(rReviewsId);
	                    tr.append(rMemberId);
	                    tr.append(rProductId);
	                    tr.append(rReviewsTitle);
	                    tr.append(rReviewsContent);
	                    tr.append(rReviewsRegDate);
	                    tr.append(reportYn);
	
	                    reviewList.append(tr);
	                }
	            } else {
	                reviewList.append("<tr><td colspan='7' style='text-align: center'>데이터가 존재하지 않습니다.</td></tr>");
	            }
				
			}
			, error 	: function(err){
				alert("리뷰 조회 중 에러가 발생했습니다. 관리자에게 문의 바랍니다.");
				console.log(err);
			}
		});
	}
	
	// 리뷰 상세 조회
	function selectOneReview(reviewId){
		$.ajax({
			  type		: "get"
			, url		: "../admin/searchReviewDetail"
			, data: { reviewId : reviewId }
			, dataType 	: "json"
			, success 	: function(result){
				let reviewDetail = $("#reviewDetail");
				reviewDetail.empty();

                let mId 		= $("<tr style='display: none;'/>").append($("<th>realID</th>")).append($("<td id='realId'/>").html(result.member_id));
                let mEmail 		= $("<tr/>").append($("<th>ID</th>")).append($("<td id='detailId'/>").html(result.member_email));
                let mName 		= $("<tr/>").append($("<th>고객명</th>")).append($("<td/>").html(result.member_name));
                let mRegiDate 	= $("<tr/>").append($("<th>가입일</th>")).append($("<td/>").html(result.member_register_date));
                let mOrderCnt	= $("<tr/>").append($("<th>구매횟수</th>")).append($("<td/>").html("120,000"));
                let mOrderPrice	= $("<tr/>").append($("<th>총 구매액</th>")).append($("<td/>").html("23,000"));
                let mAddress	= $("<tr/>").append($("<th>주소</th>")).append($("<td/>").html("거구장 3층, 한국ICT 3강의실"));
                let mStatus		= $("<tr/>").append($("<th>회원상태</th>")).append($("<td/>").html(result.member_status));
                let mReportYn	= $("<tr/>").append($("<th>신고여부</th>")).append($("<td/>").html(result.report_yn));
                let mReportCnt	= $("<tr/>").append($("<th>신고횟수</th>")).append($("<td id='reportCnt'/>").html(result.reports_cnt));
                let mReportDay	= $("<tr/>").append($("<th>신고일</th>")).append($("<td/>").html(result.reports_date));
                let adminAction	= $("<tr/>").append($("<th>관리자조치</th>")).append($("<td id='adminActionYn'/>").html(result.admin_action_yn));
                let mReportCont	= reportTag(result.report_contents);
                
                memberDetail.append(mId);
                memberDetail.append(mEmail);
                memberDetail.append(mName);
                memberDetail.append(mRegiDate);
                memberDetail.append(mOrderCnt);
                memberDetail.append(mOrderPrice);
                memberDetail.append(mAddress);
                memberDetail.append(mStatus);
                memberDetail.append(mReportYn);
                memberDetail.append(mReportCnt);
                memberDetail.append(mReportDay);
                memberDetail.append(adminAction);
                memberDetail.append(mReportCont);
				
			}
			, error 	: function(err){
				alert("회원 상세 조회 중 에러가 발생했습니다. 관리자에게 문의 바랍니다.");
				console.log(err);
			}
		});
	}
	
	// 주문 조회
	function searchOrders(){
		$.ajax({
			  type		: "get"
			, url		: "../admin/searchOrders"
			, data: {
			      searchKey: $("#orderSelectbox").val()
			    , searchValue: $("#orderSearchValue").val()
			}
			, dataType 	: "json"
			, success 	: function(result){
				let orderList = $("#orderList");
				orderList.empty();
				
				orderList.append("<tr style='background-color: #f6f7fb'><th style='text-align: center'>주문번호</th style='text-align: center'><th style='text-align: center'>수취인</th style='text-align: center'><th style='text-align: center'>주문량</th style='text-align: center'><th style='text-align: center'>주문상품량</th><th style='text-align: center'>결제금액</th><th style='text-align: center'>주문일</th><th style='text-align: center'>주문상태</th></tr>");
				
				if (result && result.length > 0) {
	                for (row of result) {
	                    let tr 					= $("<tr/>");
	                    let oOrderNum 			= $("<td/>").append($("<a class='orderDetailNumber' style='color:blue; text-decoration:underline; display: block; text-align: center;'/>").text(row["order_detail_number"]).hover(function() { $(this).css("cursor", "pointer"); }));
	                    let oRecipeName			= $("<td style='text-align: center'/>").html(row["recipient_name"]);
	                    let oTotalCnt 			= $("<td style='text-align: center'/>").html(formatNumberWithCommas(row["total_order_cnt"]));
	                    let oTotalProCnt 		= $("<td style='text-align: center'/>").html(formatNumberWithCommas(row["total_product_cnt"]));
	                    let oTotalPrice		 	= $("<td style='text-align: center'/>").html(formatNumberWithCommas(row["total_order_price"]));
	                    let oOrderDate 			= $("<td style='text-align: center'/>").html(row["order_date"]);
	                    let oOrderState		 	= $("<td style='text-align: center'/>").html(row["order_state"]);
	
	                    tr.append(oOrderNum);
	                    tr.append(oRecipeName);
	                    tr.append(oTotalCnt);
	                    tr.append(oTotalProCnt);
	                    tr.append(oTotalPrice);
	                    tr.append(oOrderDate);
	                    tr.append(oOrderState);
	
	                    orderList.append(tr);
	                }
	            } else {
	                orderList.append("<tr><td colspan='7' style='text-align: center'>데이터가 존재하지 않습니다.</td></tr>");
	            }
				
			}
			, error 	: function(err){
				alert("주문 조회 중 에러가 발생했습니다. 관리자에게 문의 바랍니다.");
				console.log(err);
			}
		});
	}
    
    // 주문 상세 조회
    function selectOneOrder(orderDetailNumber){
		$.ajax({
			  type		: "get"
			, url		: "../admin/selectOneOrder"
			, data: { orderDetailNumber : orderDetailNumber }
			, dataType 	: "json"
			, success 	: function(result){
				let orderMember 	= result.orderMember;
				let orderProducts 	= result.orderProducts;
				let orderDetail = $("#orderDetail");
				
				orderDetail.empty();
				
				for(row of orderMember){
					let oOrderNum 		= $("<tr/>").append($("<th>주문번호</th>")).append($("<td id='orderDetailNumber'/>").html(row["order_detail_number"]));
	                let oOrderMem 		= $("<tr/>").append($("<th>수취인</th>")).append($("<td/>").html(row["recipient_name"]));
	                let oTotOrCnt		= $("<tr/>").append($("<th>주문량</th>")).append($("<td/>").html(formatNumberWithCommas(row["total_order_cnt"])));
	                let oTotOrProCnt	= $("<tr/>").append($("<th>주문상품량</th>")).append($("<td/>").html(formatNumberWithCommas(row["total_product_cnt"])));
	                let oTotOrPropri	= $("<tr/>").append($("<th>결제금액</th>")).append($("<td/>").html(formatNumberWithCommas(row["total_order_price"])));
	                let oOrderList		= $("<tr/>").append($("<th>주문목록</th>")).append($("<td id='orderProductList'/>"));
	                let oOrderDate		= $("<tr/>").append($("<th>주문일</th>")).append($("<td/>").html(row["order_date"]));
	                let oRecipAddr		= $("<tr/>").append($("<th>주소</th>")).append($("<td/>").html(row["recipient_address"]));
	                let oRecipTel		= $("<tr/>").append($("<th>연락처</th>")).append($("<td/>").html(row["recipient_tel"]));
	                let oOrderState		= $("<tr/>").append($("<th>주문상태</th>")).append($("<td id='orderState'/>").html(row["order_state"]));
	                let oOrderReason	= $("<tr id='oCancelReason' style='display: none;'/>").append($("<th>주문취소사유</th>")).append($("<td/>").html(row["order_cancel_reason"]));
	                let oAdminYn		= $("<tr/>").append($("<th>관리자확인여부</th>")).append($("<td id='adminConfirmYn'/>").html(row["admin_confirmation_yn"]));
	                let oAdminYnDate	= $("<tr id='orderAdminYnDate' style='display: none;'/>").append($("<th>관리자확인일</th>")).append($("<td/>").html(row["admin_confirmation_date"]));
	            
		            orderDetail.append(oOrderNum);
	                orderDetail.append(oOrderMem);
	                orderDetail.append(oTotOrCnt);
	                orderDetail.append(oTotOrProCnt);
	                orderDetail.append(oTotOrPropri);
	                orderDetail.append(oOrderList);
	                orderDetail.append(oOrderDate);
	                orderDetail.append(oRecipAddr);
	                orderDetail.append(oRecipTel);
	                orderDetail.append(oOrderState);
	                orderDetail.append(oOrderReason);
	                orderDetail.append(oAdminYn);
	                orderDetail.append(oAdminYnDate);
	                
				}
                
	            if (orderProducts && orderProducts.length > 0) {
	                for (i of orderProducts) {
	                
						let divArea = $("<div style='white-space: nowrap;'/>");
						let linkArea = $("<a class='orderProductId' style='color:blue; text-decoration:underline; display: inline-block; text-align: center;'/>").text(i["product_id"]).hover(function() { $(this).css("cursor", "pointer"); });
						let textArea = $("<span/>").text("(" + i["product_name"] + ")" +" x " + i["order_product_quantity"] + "개");
						
						divArea.append(linkArea, textArea);
						
	                	$("#orderProductList").append(divArea);
	                }
            	}
            	
            	
            	// 주문확인 및 주문취소 버튼 컨트롤
            	isOrderCompleted();
            	
			}
			, error 	: function(err){
				alert("주문 상세 조회 중 에러가 발생했습니다. 관리자에게 문의 바랍니다.");
				console.log(err);
			}
		});
	}
	
	// 주문확인 및 주문취소 버튼 컨트롤
	function isOrderCompleted(){
		let checkValue 		= $("#adminConfirmYn").text() === "Y";
		let checkOrderState = $("#orderState").text() === "주문취소";
		
		if (checkValue) {
			$("#goOrderSuccess, #goOrderCancel").prop("disabled", true);
			$("#orderAdminYnDate").show();
			
			// 취소 일 시 사유 노출
			if(checkOrderState){
				$("#oCancelReason").show();
			}
		} else {
			$("#orderAdminYnDate").hide();
			$("#oCancelReason").hide();
			$("#goOrderSuccess, #goOrderCancel").prop("disabled", false);
		}
	}
	
	            
	// 관리자 주문 확인
	function adminOrderConfirmation(status){
		let orderDetailNum 		= $("#orderDetailNumber").text();
		let orderStatus	 		= status == "confirm" ? "배송완료" :  "주문취소";
		let orderCancelReason 	= status == "confirm" ? null : $("#orderCancelReason").val().trim();

		// 주문 취소 시 취소 사유 체크		
		if(status == "cancel" && orderCancelReason == ""){
			alert("주문 취소 사유를 입력하세요.");
			return;
		}
		
		$.ajax({
			  type 		: "post"
			, url		: "../admin/adminOrderConfirmation"
			, data		: { 
							order_detail_number	: orderDetailNum
						  , order_state 		: orderStatus
						  , order_cancel_reason : orderCancelReason
						  }
			, dataType 	: "json"
			, success	: function(result){
				let successText = status == "confirm" ? "주문수락" :  "주문취소";
				alert(successText + "이 완료 되었습니다.");
				
				// 상태 별 분개 조치
				if(status == "confirm"){
					// 주문 상세 조회
					selectOneOrder(orderDetailNum);
				}else{
					closeOrderCancelPopup(orderDetailNum);
				}
			}
			, 
			error 	: function(err){
				alert("관리자 주문 확인 중 에러가 발생했습니다. 관리자에게 문의 바랍니다.");
				console.log(err);
			}
		});
	}
	
	// 주문 취소 팝업 오픈
	function openOrderCancelPopup(orderDetailNum){
		$("#orderCancelModal").modal("show");
		$("#orderCancelNum").text(orderDetailNum);
	}
		
	// 주문 취소 팝업 닫기
	function closeOrderCancelPopup(cancelOrderNum){
		$("#orderCancelModal").modal("hide");
		
		// 주문 상세 조회
		selectOneOrder(cancelOrderNum);
	}
	
    // 정책관리 조회
    function searchPolicies(){
    	$.ajax({
			  type 		: "get"
			, url		: "../admin/selectPolicyColumn"
			, dataType 	: "json"
			, success	: function(result){
				let listLength = result.length;
				
				$("#myTab").empty();
				
      			for (let i = 0; i < listLength; i++) {
	                let row = result[i];
	                let tabLi = $("<li class='nav-item' />").append(
	                    $("<a data-bs-toggle='tab' role='tab' aria-controls='featured' aria-selected='true' role='presentation' alt='poliesValue' />")
	                    .attr("id", row["column_name"])
	                    .text(row["column_comment"])
	                    .hover(function() { $(this).css("cursor", "pointer")})
	                );
					
					// 첫번쨰 정책 검색
	                if (i === 0) {
	                    serchPolicyValue(tabLi.find("a").attr("id"), tabLi.find("a").text());
	                    tabLi.find("a").addClass("active");
	                }
	
	                $("#myTab").append(tabLi);
	                
	            }
			}
			, 
			error 	: function(err){
				alert("정책관리 조회 중 에러가 발생했습니다. 관리자에게 문의 바랍니다.");
				console.log(err);
			}
		});
    }
    
    // 정책관리 내용 조회
    function serchPolicyValue(id, value){
		$("#poliesId").val(id);
		$("#poliesComment").val(value);
		
    	$.ajax({
			  type 		: "get"
			, url		: "../admin/selectPolicyValue"
			, data		: { column : id }
			, dataType 	: "json"
			, success	: function(result){
				if (result.hasOwnProperty(id)) {
                	$("#poliesValue").val(result[id]);
           		}
			}
			, 
			error 	: function(err){
				alert("정책관리 내용 조회 중 에러가 발생했습니다. 관리자에게 문의 바랍니다.");
				console.log(err);
			}
		});
    }
    
    // 정책관리 수정
	function modifyPolicy(){
		let id 		= $("#poliesId").val();
		let value 	= $("#poliesValue").val();
		let text 	= $("#poliesComment").val();
		
		$.ajax({
			  type 		: "post"
			, url		: "../admin/modifyPolicy"
			, data		: { 
							id : id
						  , value : value
						  }
			, dataType 	: "json"
			, success	: function(result){
				alert(text + " 수정이 완료 되었습니다.");
				serchPolicyValue(id, text);
			}
			, 
			error 	: function(err){
				alert("정책관리 내용 수정 중 에러가 발생했습니다. 관리자에게 문의 바랍니다.");
				console.log(err);
			}
		});
	}
		
});