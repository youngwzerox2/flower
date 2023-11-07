$(function(){

	// ******************************************************************************************
	// *****************************************EVENT********************************************
	// ******************************************************************************************
	
	// 회원 > 회원관리 탭 클릭 이벤트
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
	
	// 회원 이용 제한 > 제한 버튼 클릭 이벤트
	$(document).on("click", "#btn-limitApproval", function(){
		let email = $("#limitEmail").text();
		limitUser(email);
	});
	
	// 회원 이용 제한 > 닫기 버튼 클릭 이벤트
	$(document).on("click", "#btn-closePopup", function(){
		closeLimitPopup();
	});
	
	// 회원상세 > 신고내용 버튼 클릭 이벤트
	$(document).on("click", ".reportContent", function() {
		let realId = $("#realId").text();
		let detailId = $("#detailId").text();
		let adminAction = $("#adminActionYn").text();
		
	    openReportPopup(realId, detailId, adminAction);
	});
	
	// 신고 내역 팝업 > 신고 취소 버튼 클릭 이벤트
	$(document).on("click", "#btn-cancelReport", function(){
		let memberId = $("#reportMemberId").text();
		reportCancel(memberId);
	});
	
	// 신고 내역 팝업 > 해당 글 삭제 버튼 클릭 이벤트
	$(document).on("click", "#btn-deleteReportTarget", function(){
		let reviewId = $("#reportReviewId").text();
		deleteReportTarget(reviewId);
	});
	
	// 신고 내역 팝업 > 닫기 버튼 클릭 이벤트
	$(document).on("click", "#btn-closeReportPopup", function(){
		let email = $("#reportEmail").text();
		closeReportPopup(email);
	});
	
	// 상품 > 상품관리 탭 클릭 이벤트
	$("#account-products-tab").click(function(){
		searchProducts();
	});
	
	// 상품관리 > 돋보기 버튼 클릭 이벤트
	$("#productSearchBtn").click(function(){
		searchProducts();
	});
		
    // 상품관리 > 엔터키 이벤트
    $("#productSearchValue").on('keypress', function(e) {
        if (e.which === 13) {
            e.preventDefault();
            searchProducts();
        }
    });
	
	// 상품관리 > 상세보기 버튼 클릭 이벤트
	$(document).on("click", ".productId", function() {
	    let productId = $(this).text();
	    selectOneProduct(productId);
	    $("#account-product-info-detail-tab").tab('show');
	});
	
	// 상품 관리 상세 > 목록 버튼 클릭 이벤트
	$("#goProductList").on("click", function(){
		$("#account-product-info-tab").tab('show');
	});
	
	// 상품 관리 상세 > 상품노출거부 버튼 클릭 이벤트
	$("#goProductHide").on("click", function(){
		let proId 	= $("#productDetailId").text();
		let proStat = $("#proVisiStatus").text();
		openVisible(proId, proStat);
	});
	
	// 상품 노출 확인 > 수정 버튼 클릭 이벤트
	$(document).on("click", "#btn-visibleProduct", function(){
		let proId = $("#visibleProduct").text();
		let proStat = $("#proVisiStatus").text();
		visibleProduct(proId, proStat);
	});
	
	// 상품 노출 확인 > 닫기 버튼 클릭 이벤트
	$(document).on("click", "#btn-closeVisiblePopup", function(){
		closeVisiblePopup();
	});
	
	// 설정 > 정책관리 탭 클릭 이벤트
	$("#account-policies-tab").click(function(){
		searchPolicies();
	});
	
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
	
	// 멤버 상세 팝업 오픈
	function openLimitation(email) {
        $("#limitEmail").text(email);
        $("#popupLimitModal").modal("show");
    }

	// 회원 이용 제한 > 팝업 닫기
	function closeLimitPopup() {
		$("#popupLimitModal").modal("hide");
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
				closeLimitPopup();
				selectOneMember(email);
			}
			, 
			error 	: function(err){
				alert("회원 이용 제한 조치 중 에러가 발생했습니다. 관리자에게 문의 바랍니다.");
				console.log(err);
			}
		});
	}
	
	// 회원상세 > 신고내용 버튼 클릭 이벤트
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
	
	// 상품 상세 조회
	function selectOneProduct(productId){
    	$.ajax({
			  type		: "get"
			, url		: "../admin/searchProductDetail"
			, data: { productId: productId }
			, dataType 	: "json"
			, success 	: function(result){
				let product = result.product;
				let imgs 	= result.imgs;
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
		                let pPetFriend	= $("<tr/>").append($("<th>펫친화여부</th>")).append($("<td colspan='2'/>").html(row["pet_friendly"]));
		                let pEasyCare	= $("<tr/>").append($("<th>초보자여부</th>")).append($("<td colspan='2'/>").html(row["easy_care"]));
		                let pQuantity	= $("<tr/>").append($("<th>재고수량</th>")).append($("<td colspan='2'/>").html(formatNumberWithCommas(row["inventory_quantity"])));
		                let pPrice		= $("<tr/>").append($("<th>상품가격</th>")).append($("<td colspan='2'/>").html(formatNumberWithCommas(row["product_price"])));
		                let pRegDate	= $("<tr/>").append($("<th>상품등록일</th>")).append($("<td colspan='2'/>").html(row["product_register_date"]));
		                let pState		= $("<tr/>").append($("<th>상품노출</th>")).append($("<td id='proVisiStatus' colspan='2'/>").html(row["product_state"]));
		                let pLight		= $("<tr/>").append($("<th>상품채광</th>")).append($("<td colspan='2'/>").html(row["product_light"]));
		                let pLikes		= $("<tr/>").append($("<th>좋아요</th>")).append($("<td colspan='2'/>").html(formatNumberWithCommas(row["likes"])));
		                
		                productDetail.append(pId);
		                productDetail.append(pRegDate);
		                productDetail.append(pcateId);
		                productDetail.append(pName);
		                productDetail.append(pContent);
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
	            
	           	let imgRow = $("<tr rowspan='4'/>")
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
            	
			}
			, error 	: function(err){
				alert("상품 상세 조회 중 에러가 발생했습니다. 관리자에게 문의 바랍니다.");
				console.log(err);
			}
			
		});
	}
	
	// 상품 상세 > 팝업 오픈
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

	// 상품 노출 확인 > 수정 버튼 클릭
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
				closeVisiblePopup();
				selectOneProduct(proId);
			}
			, 
			error 	: function(err){
				alert("상품 노출 정보 수정 중 에러가 발생했습니다. 관리자에게 문의 바랍니다.");
				console.log(err);
			}
		});
	}
	    
    // 상품 노출 확인 > 팝업 닫기
	function closeVisiblePopup() {
		$("#popupVisibleModal").modal("hide");
		searchProducts();
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
				
      			for (row of result) {
                    let tabLi = $("<li class='nav-item'/>").append($("<a data-bs-toggle='tab' href='#featured' role='tab' aria-controls='featured' aria-selected='true' role='presentation' />").attr("id", row["column_name"]).text(row["column_comment"]));
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
    
});