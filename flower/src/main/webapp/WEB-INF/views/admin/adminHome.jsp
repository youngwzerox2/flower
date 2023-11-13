<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Flowerer_AdminPage</title>
    <meta name="robots" content="index, follow" />
    <meta name="description" content="Pronia plant store bootstrap 5 template is an awesome website template for any home plant shop.">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="../resources/assets/images/favicon.ico" />

    <!-- CSS
    ============================================ -->

    <link rel="stylesheet" href="../resources/assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="../resources/assets/css/font-awesome.min.css" />
    <link rel="stylesheet" href="../resources/assets/css/Pe-icon-7-stroke.css" />
    <link rel="stylesheet" href="../resources/assets/css/animate.min.css">
    <link rel="stylesheet" href="../resources/assets/css/swiper-bundle.min.css">
    <link rel="stylesheet" href="../resources/assets/css/nice-select.css">
    <link rel="stylesheet" href="../resources/assets/css/magnific-popup.min.css" />
    <link rel="stylesheet" href="../resources/assets/css/ion.rangeSlider.min.css" />

    <!-- Style CSS -->
    <link rel="stylesheet" href="../resources/assets/css/style.css">
    
    <!-- Jin's Style CSS -->
    <link rel="stylesheet" href="../resources/assets/css/jin_style.css">
       
    <!-- Google Chart -->
    <script src="https://www.gstatic.com/charts/loader.js"></script>
    
    
</head>
<body>
	<div class="preloader-activate preloader-active open_tm_preloader">
        <div class="preloader-area-wrap">
            <div class="spinner d-flex justify-content-center align-items-center h-100">
                <div class="bounce1"></div>
                <div class="bounce2"></div>
                <div class="bounce3"></div>
            </div>
        </div>
    </div>
    <div class="main-wrapper">
        <main class="main-content">
            <div class="widgets-searchbox" style="padding-top: 0px; padding-bottom: 0px;">
	            <form id="widgets-searchbox">
	            	 <div style="color: red;">
	            	 	<img src="../resources/assets/images/logo/logo_flowerOwner.png" alt="Header Logo"></img>Admin Page
	            	 </div>
	            	 <div class="product-topbar" style="position:absoluted;padding-top : 50px;padding-left: 67%; padding-bottom: 10px;">
	                     <ul>
	                         <li class="page-count">
	                             <span>CEO</span> 관리자님, 환영합니다 !
	                         </li>
	                         <li class="mb-xs mt-xs mr-xs btn btn-primary" onclick="location.href='/flower/flower_main.jsp'"> 이용자 화면 이동 </li>
	                         <li class="mb-xs mt-xs mr-xs btn btn-danger" onclick="location.href='/flower/flower_main.jsp'"> 로그아웃 </li>
	                     </ul>
                     </div>
	            </form>
            </div>
            
            
            <div class="account-page-area section-space-y-axis-100" style="padding-top: 0px;">
                <div class="container" style="margin-left: 0px;">
                    <div class="row">
                        <div class="col-lg-3">
                            <ul class="nav myaccount-tab-trigger" id="account-page-tab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="account-dashboard-tab" data-bs-toggle="tab" href="#account-dashboard" role="tab" aria-controls="account-dashboard" aria-selected="true">DASHBOARD</a>
                                </li>
                               	<li class="nav-item">
								    <a id="account-member-tab" data-bs-toggle="collapse" href="#account-member-info" role="tab" aria-hidden="true">회원</a>
								</li>
								<li class='sub-nav-item collapse' id="account-member-info">
								    <a class="nav-link" id="account-member-info-tab" data-bs-toggle="tab" role="tab" aria-controls="account-member" href="#account-member" aria-expanded="false" style="text-align: right;">회원 관리</a>
								    <a class="nav-link" id="account-member-info-detail-tab" data-bs-toggle="tab" role="tab" aria-controls="account-member-detail" href="#account-member-detail" aria-expanded="false" style="text-align: right; display: none;" >회원 관리 상세</a>
								</li>
                                <li class="nav-item">
                                    <a id="account-products-tab" data-bs-toggle="collapse" href="#account-products_info" role="tab" aria-hidden="true">상품</a>
                                </li>
                                <li class = 'sub-nav-item collapse' id = "account-products_info" >
                                	<a class="nav-link" id="account-product-info-tab" data-bs-toggle="tab" role="tab" aria-controls="account-productsControll" href="#account-products" aria-expanded="false" style="text-align: right;">상품 관리</a>
                                	<a class="nav-link" id="account-inquiries-tab" data-bs-toggle="tab" role="tab" aria-controls="account-inquiriesControll" href="#account-inquiries" aria-expanded="false" style="text-align: right;">문의 관리</a>
                                	<a class="nav-link" id="account-reviews-tab" data-bs-toggle="tab" role="tab" aria-controls="account-reviewsControll" href="#account-reviews" aria-expanded="false" style="text-align: right;">리뷰 관리</a>
                                	<a class="nav-link" id="account-orders-info-tab" data-bs-toggle="tab" role="tab" aria-controls="account-ordersControll" href="#account-orders" aria-expanded="false" style="text-align: right;">주문 관리</a>
                                	<a class="nav-link" id="account-product-info-register-tab" data-bs-toggle="tab" role="tab" aria-controls="account-product-regiter" href="#account-product-register" aria-expanded="false" style="text-align: right; display: none;" >상품 등록</a>
                                	<a class="nav-link" id="account-product-info-modify-tab" data-bs-toggle="tab" role="tab" aria-controls="account-product-modify" href="#account-product-modify" aria-expanded="false" style="text-align: right; display: none;" >상품 수정</a>
                                	<a class="nav-link" id="account-product-info-detail-tab" data-bs-toggle="tab" role="tab" aria-controls="account-product-detail" href="#account-product-detail" aria-expanded="false" style="text-align: right; display: none;" >상품 관리 상세</a>
                                	<a class="nav-link" id="account-inquiry-info-detail-tab" data-bs-toggle="tab" role="tab" aria-controls="account-inquiry-detail" href="#account-inquiry-detail" aria-expanded="false" style="text-align: right; display: none;" >문의 관리 상세</a>
                                	<a class="nav-link" id="account-review-info-detail-tab" data-bs-toggle="tab" role="tab" aria-controls="account-review-detail" href="#account-review-detail" aria-expanded="false" style="text-align: right; display: none;" >리뷰 관리 상세</a>
                                	<a class="nav-link" id="account-order-info-detail-tab" data-bs-toggle="tab" role="tab" aria-controls="account-order-detail" href="#account-order-detail" aria-expanded="false" style="text-align: right; display: none;" >주문 관리 상세</a>
                                </li>
                                <li class="nav-item">
                                    <a id="account-setting-tab" data-bs-toggle="collapse" href="#account-setting_info" role="tab" aria-hidden="true">설정</a>
                                </li>
                                <li class = 'sub-nav-item collapse' id = "account-setting_info" >
                                	<a class="nav-link" id = account-screens-tab data-bs-toggle="tab" role="tab" aria-controls="account-screensControll" href="#account-screens" aria-expanded="false" style="text-align: right; display: none;">메인화면 관리</a>
                                	<a class="nav-link" id = account-policies-tab data-bs-toggle="tab" role="tab" aria-controls="account-policiesControll" href="#account-policies" aria-expanded="false" style="text-align: right;">정책 관리</a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-lg-9">
                        	<div class="tab-content myaccount-tab-content" id="account-page-tab-content" style="width : 150%">
                                <div class="tab-pane fade show active" id="account-dashboard" role="tabpanel" aria-labelledby="account-dashboard-tab">
                                    <div class="myaccount-members">
								        <h4 class="small-title">DASHBOARD</h4><br/>
                                        <div id="flower-to-do-list" class="flower-dashboard flower-dashboard-top">
                                        	<div id="todolist" style="padding-bottom: 50px;"></div>
                                        	<div id="flower-dashboard-order" class="flower-to-do" style="width: 150px; height: 150px; background-color: lightblue; border-radius: 50%; text-align: center; line-height: 50px; font-weight: bold; white-space: pre;">주문<br/><a id="a-dashboardOrder">0</a>건</div>
                                        	<div id="flower-dashboard-inqueries" class="flower-to-do" style="width: 150px; height: 150px; background-color: orange; border-radius: 50%; text-align: center; line-height: 50px; font-weight: bold; white-space: pre;">문의<br/><a id="a-dashboardInquiry">0</a>건</div>
                                        	<div id="flower-dashboard-report" class="flower-to-do" style="width: 150px; height: 150px; background-color: red; border-radius: 50%; text-align: center; line-height: 50px; font-weight: bold; white-space: pre;">신고<br/><a id="a-dashboardReport">0</a>건</div>
                                        	<!-- 
                                        	<div id="flower-dashboard-member" class="flower-to-do">
                                        		전체회원<span id="">0</span>명<br/>
                                        		신규회원<span id="">0</span>명<br/>
                                        		탈퇴회원<span id="">0</span>명<br/>
                                        	</div>
                                        	 -->
                                        	
                                        </div>
                                        <div id="" class="flower-dashboard flower-dashboard-bottom">
                                        	<div class="flower-stats flower-dashboard-bottom-left">
                                        		<div id="columnchart_values" class="sales"></div>
                                        		<h3 class="chart-title">매출현황</h3>
                                        	</div>
                                        </div>
                                	</div>
                                </div>
                                <div class="tab-pane fade" id="account-member" aria-labelledby="account-member-tab">
								    <div class="myaccount-members">
								        <h4 class="small-title">회원 관리</h4><br/>
										<div class="widgets-searchbox">
											<ul>								        
												<li class="short">
			                                        <select class="nice-select" id="memberSelectbox">
			                                            <option value="">전체</option>
			                                            <option value="member_email">ID</option>
			                                            <option value="member_name">고객명</option>
			                                            <option value="member_status">회원상태</option>
			                                            <option value="report_yn">신고여부</option>
			                                        </select>
		                                    	</li>
		                                    	<li>
	                                        		<input class="input-field" id="memberSearchValue" type="text" placeholder="검색어를 입력해주세요." style="width: 88%">
		                                    	</li>
		                                    	<li>
		                                        <button id="memberSearchBtn" class="widgets-searchbox-btn" >
		                                            <i class="fa fa-search"></i>
		                                        </button>
		                                    	</li>
									        </ul>
		                                </div>
								        <div class="table-responsive">
								            <table class="table table-bordered table-hover">
								                <tbody id="memberList"></tbody>
								            </table>
								        </div>
								    </div>
								</div>
								<div class="tab-pane fade" id="account-member-detail" aria-labelledby="account-member-tab">
								    <div class="myaccount-members">
								        <h4 class="small-title">회원 관리 상세</h4><br/>
										<div class="widgets-searchbox">
											<div class="table-responsive">
									            <div class="compare-table table-responsive">
							                        <table class="table table-bordered table-hover mb-0">
							                            <tbody id="memberDetail"></tbody>
							                        </table>
							                        <div class="member-topbar" style="position:absoluted; padding-top: 20px; padding-left: 90%;">
									                    <ul>
									                    <li id="goMemberList" class="mb-xs mt-xs mr-xs btn btn-primary"> 목록 </li>
									                    <li id="goLimitation" class="mb-xs mt-xs mr-xs btn btn-danger"> 제한 </li>
									                    </ul>
							                     	</div>
						                    	</div>
									        </div>
		                                </div>
								    </div>
								</div>
                                <div class="tab-pane fade" id="account-products" role="tabpanel" aria-labelledby="account-products-tab">
                                    <div class="myaccount-products">
                                        <h4 class="small-title">상품 관리</h4><br/>
										<div class="widgets-searchbox">
												<ul>								        
													<li class="short">
				                                        <select class="nice-select" id="productSelectbox">
				                                            <option value="">전체</option>
				                                            <option value="product_id">상품ID</option>
				                                            <option value="product_name">상품명</option>
				                                            <option value="product_state">상품노출여부</option>
				                                        </select>
			                                    	</li>
			                                    	<li>
		                                        		<input class="input-field" id="productSearchValue" type="text" placeholder="검색어를 입력해주세요." style="width: 88%">
			                                    	</li>
			                                    	<li>
			                                        <button id="productSearchBtn" class="widgets-searchbox-btn" >
			                                            <i class="fa fa-search"></i>
			                                        </button>
			                                    	</li>
										        </ul>
		                                </div>
		                                <div style="position:absoluted;padding-top : 50px;padding-left: 90%; padding-bottom: 10px;">
		                                	<ul>
												<li id="registerProduct" class="mb-xs mt-xs mr-xs btn btn-primary"> 신규상품등록 </li>
									        </ul>
		                                </div>
								        <div class="table-responsive">
								            <table class="table table-bordered table-hover">
								                <tbody id="productList"></tbody>
								            </table>
								        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="account-product-register" aria-labelledby="account-product-tab">
								    <div class="myaccount-products">
								        <h4 class="small-title">상품 등록</h4><br/>
										<div class="widgets-searchbox">
											<div class="table-responsive">
									            <div class="compare-table table-responsive">
							                        <table class="table table-bordered table-hover mb-0">
							                            <tbody id="productRegister">
											                <tr>
											                	<th>상품ID*</th>
											                	<td colspan='2'>
											                		<input class="input-field" id="rProductID" type="text" placeholder="상품ID" style="width: 100%; font-weight: bold;" disabled>
											                	</td>
											                </tr>
											                <tr>
											                	<th>상품명*</th>
											                	<td colspan='2'>
											                		<input class="input-field" id="rProductName" type="text" placeholder="상품명" style="width: 100%">
											                	</td>
											                </tr>
											                <tr>
											                	<th>상품키워드*</th>
											                	<td colspan='2'>
											                		<input class="input-field" id="rProductKeyword" type="text" placeholder="상품키워드 ex) 사랑, 우정, ..." style="width: 100%">
											                	</td>
											                </tr>
											              	<tr>
											              		<th>개화시기*</th>
											              		<td colspan='2'>
												              		<ul>
												                		<li class="short">
									                                        <select class="nice-select" id="rbloomingSeasonSelectbox">
									                                            <option value="">선택</option>
									                                            <option value="all">사계졀</option>
									                                            <option value="spring">봄</option>
									                                            <option value="summer">여름</option>
									                                            <option value="fall">가을</option>
									                                            <option value="winter">겨울</option>
									                                        </select>
								                                    	</li>
												              		</ul>
											              		</td>
											              	</tr>
											              	<tr>
											              		<th>개화시간*</th>
											              		<td colspan='2'>
												              		<ul>
												                		<li class="short">
									                                        <select class="nice-select" id="rbloomingTimeSelectbox">
									                                            <option value="">선택</option>
									                                            <option value="D">낮</option>
									                                            <option value="N">밤</option>
									                                        </select>
								                                    	</li>
												              		</ul>
											              		</td>
											              	</tr>
											              	<tr>
											              		<th>펫 친화여부*</th>
											              		<td colspan='2'>
											              			<label>
															            <input type="radio" name="rPetFriendly" value="1" checked> 예 (Yes)
															        </label>
															        <label>
															            <input type="radio" name="rPetFriendly" value="0"> 아니오 (No)
															        </label>
											              		</td>
											              	</tr>
											              	<tr>
											              		<th>채광*</th>
											              		<td colspan='2'>
												              		<ul>
												                		<li class="short">
									                                        <select class="nice-select" id="rlightSelectbox">
									                                            <option value="">선택</option>
									                                            <option value="DL">직광</option>
									                                            <option value="IDL">간접광</option>
									                                            <option value="SH">그늘</option>
									                                            <option value="NM">일조량영향적음</option>
									                                        </select>
								                                    	</li>
												              		</ul>
											              		</td>
											              	</tr>
											              	<tr>
											              		<th>초보자여부*</th>
											              		<td colspan='2'>
																	<label>
																		<input type="radio" name="rBeginnerStatus" value="1" checked> 예 (Yes)
																	</label>
																	<label>
																		<input type="radio" name="rBeginnerStatus" value="0"> 아니오 (No)
																	</label>
											              		</td>
											              	</tr>
											              	<tr>
											              		<th>상품가격*</th>
											              		<td colspan='2'>
											                		<input class="input-field numberWithCommas" id="rProductPrice" type="text" placeholder="상품가격" style="width: 100%">
											              		</td>
											              	</tr>
											              	<tr>
											              		<th>재고수량*</th>
											              		<td colspan='2'>
											                		<input class="input-field numberWithCommas" id="rProductCnt" type="text" placeholder="재고수량" style="width: 100%">
											              		</td>
											              	</tr>
											              	<tr>
											              		<th>상품노출*</th>
											              		<td colspan='2'>
											              			<label>
															            <input type="radio" name="rProductState" value="Y" checked> 예 (Yes)
															        </label>
															        <label>
															            <input type="radio" name="rProductState" value="N"> 아니오 (No)
															        </label>
											              		</td>
											              	</tr>
											              	<tr>
															    <th>상품이미지*</th>
															    <td>
															        <form id="registerImgsForm" method="post" enctype="multipart/form-data" action="../admin/registerImgsForm">
															            <table>
															                <tr>
															                    <td style='border: 1px solid #000000;'>가이드</td>
															                    <td style='border: 1px solid #000000;'>
															                        <input class="imgFile guide" type="file" name="guidefile" maxlength="60" size="40" multiple alt="registerImg">
															                        <div id="guide-file-list" class="file-list-container"></div>
															                    </td>
															                </tr>
															                <tr>
															                    <td style='border: 1px solid #000000;'>리스트</td>
															                    <td style='border: 1px solid #000000;'>
															                        <input class="imgFile list" type="file" name="listfile" maxlength="60" size="40" multiple alt="registerImg">
															                        <div id="list-file-list" class="file-list-container"></div>
															                    </td>
															                </tr>
															                <tr>
															                    <td style='border: 1px solid #000000;'>메인</td>
															                    <td style='border: 1px solid #000000;'>
															                        <input class="imgFile main" type="file" name="mainfile" maxlength="60" size="40" multiple alt="registerImg">
															                        <div id="main-file-list" class="file-list-container"></div>
															                    </td>
															                </tr>
															                <tr>
															                    <td style='border: 1px solid #000000;'>서브</td>
															                    <td style='border: 1px solid #000000;'>
															                        <input class="imgFile sub" type="file" name="subfile" maxlength="60" size="40" multiple alt="registerImg">
															                        <div id="sub-file-list" class="file-list-container"></div>
															                    </td>
															                </tr>
															            </table>
															        </form>
															    </td>
															</tr>
							                            </tbody>
							                        </table>
							                        <div class="product-topbar" style="position:absoluted; padding-top: 20px; padding-left: 89%;">
									                    <ul>
										                    <li id="cancelProductRegister" class="mb-xs mt-xs mr-xs btn btn-primary"> 목록 </li>
										                    <li id="goProductRegister" class="mb-xs mt-xs mr-xs btn btn-danger"> 등록 </li>
									                    </ul>
							                     	</div>
						                    	</div>
									        </div>
		                                </div>
								    </div>
								</div>
								<div class="tab-pane fade" id="account-product-modify" aria-labelledby="account-product-tab">
								    <div class="myaccount-products">
								        <h4 class="small-title">상품 수정</h4><br/>
										<div class="widgets-searchbox">
											<div class="table-responsive">
									            <div class="compare-table table-responsive">
							                        <table class="table table-bordered table-hover mb-0">
							                            <tbody id="productModify">
											                <tr>
											                	<th>상품ID*</th>
											                	<td colspan='2'>
											                		<input class="input-field" id="mProductID" type="text" placeholder="상품ID" style="width: 100%; font-weight: bold;" disabled>
											                	</td>
											                </tr>
											                <tr>
											                	<th>상품명*</th>
											                	<td colspan='2'>
											                		<input class="input-field" id="mProductName" type="text" placeholder="상품명" style="width: 100%">
											                	</td>
											                </tr>
											                <tr>
											                	<th>상품키워드*</th>
											                	<td colspan='2'>
											                		<input class="input-field" id="mProductKeyword" type="text" placeholder="상품키워드 ex) 사랑, 우정, ..." style="width: 100%">
											                	</td>
											                </tr>
											              	<tr>
											              		<th>개화시기*</th>
											              		<td colspan='2'>
												              		<ul>
												                		<li class="short">
									                                        <select class="nice-select" id="mbloomingSeasonSelectbox">
									                                            <option value="">선택</option>
									                                            <option value="all">사계졀</option>
									                                            <option value="spring">봄</option>
									                                            <option value="summer">여름</option>
									                                            <option value="fall">가을</option>
									                                            <option value="winter">겨울</option>
									                                        </select>
								                                    	</li>
												              		</ul>
											              		</td>
											              	</tr>
											              	<tr>
											              		<th>개화시간*</th>
											              		<td colspan='2'>
												              		<ul>
												                		<li class="short">
									                                        <select class="nice-select" id="mbloomingTimeSelectbox">
									                                            <option value="">선택</option>
									                                            <option value="D">낮</option>
									                                            <option value="N">밤</option>
									                                        </select>
								                                    	</li>
												              		</ul>
											              		</td>
											              	</tr>
											              	<tr>
											              		<th>펫 친화여부*</th>
											              		<td colspan='2'>
											              			<label>
															            <input type="radio" name="mPetFriendly" value="1" checked> 예 (Yes)
															        </label>
															        <label>
															            <input type="radio" name="mPetFriendly" value="0"> 아니오 (No)
															        </label>
											              		</td>
											              	</tr>
											              	<tr>
											              		<th>채광*</th>
											              		<td colspan='2'>
												              		<ul>
												                		<li class="short">
									                                        <select class="nice-select" id="mlightSelectbox">
									                                            <option value="">선택</option>
									                                            <option value="DL">직광</option>
									                                            <option value="IDL">간접광</option>
									                                            <option value="SH">그늘</option>
									                                            <option value="NM">일조량영향적음</option>
									                                        </select>
								                                    	</li>
												              		</ul>
											              		</td>
											              	</tr>
											              	<tr>
											              		<th>초보자여부*</th>
											              		<td colspan='2'>
																	<label>
																		<input type="radio" name="mBeginnerStatus" value="1" checked> 예 (Yes)
																	</label>
																	<label>
																		<input type="radio" name="mBeginnerStatus" value="0"> 아니오 (No)
																	</label>
											              		</td>
											              	</tr>
											              	<tr>
											              		<th>상품가격*</th>
											              		<td colspan='2'>
											                		<input class="input-field numberWithCommas" id="mProductPrice" type="text" placeholder="상품가격" style="width: 100%">
											              		</td>
											              	</tr>
											              	<tr>
											              		<th>재고수량*</th>
											              		<td colspan='2'>
											                		<input class="input-field numberWithCommas" id="mProductCnt" type="text" placeholder="재고수량" style="width: 100%">
											              		</td>
											              	</tr>
											              	<tr>
											              		<th>상품노출*</th>
											              		<td colspan='2'>
											              			<label>
															            <input type="radio" name="mProductState" value="Y" checked> 예 (Yes)
															        </label>
															        <label>
															            <input type="radio" name="mProductState" value="N"> 아니오 (No)
															        </label>
											              		</td>
											              	</tr>
							                            </tbody>
							                        </table>
							                        <div class="product-topbar" style="position:absoluted; padding-top: 20px; padding-left: 90%;">
									                    <ul>
										                    <li id="cancelProductModify" class="mb-xs mt-xs mr-xs btn btn-primary"> 목록 </li>
										                    <li id="goProductModify" class="mb-xs mt-xs mr-xs btn btn-danger"> 수정 </li>
									                    </ul>
							                     	</div>
						                    	</div>
									        </div>
		                                </div>
								    </div>
								</div>
                                <div class="tab-pane fade" id="account-product-detail" aria-labelledby="account-product-tab">
								    <div class="myaccount-products">
								        <h4 class="small-title">상품 관리 상세</h4><br/>
										<div class="widgets-searchbox">
											<div class="table-responsive">
									            <div class="compare-table table-responsive">
							                        <table class="table table-bordered table-hover mb-0">
							                            <tbody id="productDetail"></tbody>
							                        </table>
							                        <div class="product-topbar" style="position:absoluted; padding-top: 20px; padding-left: 77%;">
									                    <ul>
									                    <li id="goProductList" class="mb-xs mt-xs mr-xs btn btn-primary"> 목록 </li>
									                    <li id="goProductModify" class="mb-xs mt-xs mr-xs btn btn-warning"> 수정 </li>
									                    <li id="goProductHide" class="mb-xs mt-xs mr-xs btn btn-danger"></li>
									                    </ul>
							                     	</div>
						                    	</div>
									            
									        </div>
		                                </div>
								    </div>
								</div>
								<div class="tab-pane fade" id="account-inquiries" aria-labelledby="account-inquiries-tab">
								    <div class="myaccount-members">
								        <h4 class="small-title">문의 관리</h4><br/>
										<div class="widgets-searchbox">
											<ul>								        
												<li class="short">
			                                        <select class="nice-select" id="inquirieSelectbox">
			                                            <option value="">전체</option>
			                                            <option value="inquiries_id">리뷰ID</option>
			                                            <option value="inquiries_title">문의제목</option>
			                                            <option value="inquiries_cotent">문의내용</option>
			                                            <option value="inquiries_answer_yn">답변여부</option>
			                                        </select>
		                                    	</li>
		                                    	<li>
	                                        		<input class="input-field" id="inquirieSearchValue" type="text" placeholder="검색어를 입력해주세요." style="width: 88%">
		                                    	</li>
		                                    	<li>
		                                        <button id="inquiriesSearchBtn" class="widgets-searchbox-btn" >
		                                            <i class="fa fa-search"></i>
		                                        </button>
		                                    	</li>
									        </ul>
		                                </div>
								        <div class="table-responsive">
								            <table class="table table-bordered table-hover">
								                <tbody id="inquirieList"></tbody>
								            </table>
								        </div>
								    </div>
								</div>
								<div class="tab-pane fade" id="account-inquiry-detail" aria-labelledby="account-inquiry-tab">
								    <div class="myaccount-inquiry">
								        <h4 class="small-title">문의 관리 상세</h4><br/>
										<div class="widgets-searchbox">
											<div class="table-responsive">
									            <div class="compare-table table-responsive">
							                        <table class="table table-bordered table-hover mb-0">
							                            <tbody id="inquiryDetail"></tbody>
							                        </table>
							                        <div style="position:absoluted; padding-top: 20px; padding-left: 88%;">
							                        	<button id="goInquiryList" class="btn btn-primary" style="margin-left: 10px;"> 목록 </button>
                    									<button id="goInquiryAnswer" class="btn btn-warning" style="margin-left: 10px;"> 답변 </button>
							                     	</div>
						                    	</div>
									            
									        </div>
		                                </div>
								    </div>
								</div>
								<div class="tab-pane fade" id="account-reviews" aria-labelledby="account-reviews-tab">
								    <div class="myaccount-reviews">
								        <h4 class="small-title">리뷰 관리</h4><br/>
										<div class="widgets-searchbox">
											<ul>								        
												<li class="short">
			                                        <select class="nice-select" id="reviewSelectbox">
			                                            <option value="">전체</option>
			                                            <option value="reviews_id">리뷰ID</option>
			                                            <option value="member_id">회원ID</option>
			                                            <option value="product_id">상품ID</option>
			                                            <option value="reviews_title">리뷰제목</option>
			                                            <option value="reviews_content">리뷰내용</option>
			                                            <option value="report_yn">신고여부</option>
			                                        </select>
		                                    	</li>
		                                    	<li>
	                                        		<input class="input-field" id="reviewSearchValue" type="text" placeholder="검색어를 입력해주세요." style="width: 88%">
		                                    	</li>
		                                    	<li>
		                                        <button id="reviewSearchBtn" class="widgets-searchbox-btn" >
		                                            <i class="fa fa-search"></i>
		                                        </button>
		                                    	</li>
									        </ul>
		                                </div>
								        <div class="table-responsive">
								            <table class="table table-bordered table-hover">
								                <tbody id="reviewList"></tbody>
								            </table>
								        </div>
								    </div>
								</div>
								<div class="tab-pane fade" id="account-review-detail" aria-labelledby="account-review-tab">
								    <div class="myaccount-review">
								        <h4 class="small-title">리뷰 관리 상세</h4><br/>
										<div class="widgets-searchbox">
											<div class="table-responsive">
									            <div class="compare-table table-responsive">
							                        <table class="table table-bordered table-hover mb-0">
							                            <tbody id="reviewDetail"></tbody>
							                        </table>
							                        <div style="position:absoluted; padding-top: 20px; padding-left: 88%;">
							                        	<button id="goReviewList" class="btn btn-primary" style="margin-left: 10px;"> 목록 </button>
                    									<button id="goReviewHide" class="btn btn-danger" style="margin-left: 10px;"> 삭제 </button>
							                     	</div>
						                    	</div>
									            
									        </div>
		                                </div>
								    </div>
								</div>
								<div class="tab-pane fade" id="account-orders" aria-labelledby="account-orders-tab">
								    <div class="myaccount-orders">
								        <h4 class="small-title">주문 관리</h4><br/>
										<div class="widgets-searchbox">
											<ul>								        
												<li class="short">
			                                        <select class="nice-select" id="orderSelectbox">
			                                            <option value="">전체</option>
			                                            <option value="order_detail_number">주문번호</option>
			                                            <option value="recipient_name">수취인</option>
			                                            <option value="order_state">주문상태</option>
			                                        </select>
		                                    	</li>
		                                    	<li>
	                                        		<input class="input-field" id="orderSearchValue" type="text" placeholder="검색어를 입력해주세요." style="width: 88%">
		                                    	</li>
		                                    	<li>
		                                        <button id="orderSearchBtn" class="widgets-searchbox-btn" >
		                                            <i class="fa fa-search"></i>
		                                        </button>
		                                    	</li>
									        </ul>
		                                </div>
								        <div class="table-responsive">
								            <table class="table table-bordered table-hover">
								                <tbody id="orderList"></tbody>
								            </table>
								        </div>
								    </div>
								</div>
								<div class="tab-pane fade" id="account-order-detail" aria-labelledby="account-order-tab">
								    <div class="myaccount-order">
								        <h4 class="small-title">주문 관리 상세</h4><br/>
										<div class="widgets-searchbox">
											<div class="table-responsive">
									            <div class="compare-table table-responsive">
							                        <table class="table table-bordered table-hover mb-0">
							                            <tbody id="orderDetail"></tbody>
							                        </table>
							                        <div style="position:absoluted; padding-top: 20px; padding-left: 77%;">
									                    <button id="goOrderList" class="btn btn-primary" style="margin-left: 10px;"> 목록 </button>
                    									<button id="goOrderSuccess" class="btn btn-warning" style="margin-left: 10px;"> 주문확인 </button>
                    									<button id="goOrderCancel" class="btn btn-danger" style="margin-left: 10px;"> 주문취소 </button>
							                     	</div>
						                    	</div>
									            
									        </div>
		                                </div>
								    </div>
								</div>
								<div class="tab-pane fade" id="account-policies" aria-labelledby="account-policies-tab">
								    <div class="myaccount-policies">
								        <h4 class="small-title">정책 관리</h4><br/>
								        <div class="table-responsive">
									        <ul class="nav product-tab-nav tab-style-1" id="myTab" role="tablist" style="padding-bottom: 0px;"></ul>
								            <table class="table table-bordered table-hover">
								                <tbody id="poliesTbody" style="height:200px;">
								                	<tr>
								                		<td style="height: 100%">
								                			<input id="poliesId" type="text" style="display: none;">
								                			<input id="poliesComment" type="text" style="display: none;">
								                			<textarea id="poliesValue" placeholder="1000자 이내로 입력해주세요." cols="20" style="width: 100%; height: 200px"></textarea>
								                		</td>
								                	</tr>
								                </tbody>
								            </table>
								        </div>
							            <div class="policy-topbar" style="position:absoluted; padding-top: 20px; padding-left: 95%;">
						                    <ul>
						                    <li id="goModifyPolicy" class="mb-xs mt-xs mr-xs btn btn-danger"> 수정 </li>
						                    </ul>
										</div>
								    </div>
								</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <a class="scroll-to-top" href="">
            <i class="fa fa-angle-double-up"></i>
        </a>
    </div>
    <!-- 팝업 영역  -->
	<div id="popupLimitModal" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">회원 이용 제한</h4>
                </div>
                <div class="widgets-searchbox">
                    <table class="table table-bordered table-hover">
					  <tr>
					    <th> 이용 제한 대상</th>
					    <td id="limitEmail"></td>
					  </tr>
					  <tr>
					    <th colspan="2" style="color: #FF0000">* 제한 시 해당 계정은 영구적으로 로그인이 불가능 합니다.</th>
					  </tr>
					</table>
                </div>
                <div class="modal-footer">
                    <button id="btn-limitApproval" type="button" class="btn btn-danger" data-dismiss="modal">제한</button>
                    <button id="btn-closePopup" type="button" class="btn btn-primary" data-dismiss="modal">닫기</button>
                </div>
            </div>
        </div>
    </div>
    <div id="popupInquiryModal" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">문의 답변</h4>
                </div>
                <div class="widgets-searchbox">
                    <table class="table table-bordered table-hover">
					  <tr>
					    <th> 리뷰ID </th>
					    <td id="inquiryAnswerId"></td>
					  </tr>
					  <tr>
					    <th> 회원ID </th>
					    <td id="inquiryMemberId"></td>
					  </tr>
					  <tr>
					    <th> 상품ID </th>
					    <td id="inquiryProductId"></td>
					  </tr>
					  <tr>
					    <th> 문의내용 </th>
					    <td>
					    	<textarea id='inquiryAContent' disabled='disabled' cols='20' style='width: 100%; height: 200px'></textarea>
					    </td>
					  </tr>
					  <tr>
					    <th> 답변내용 </th>
					    <td>
					    	<textarea id='inquiryAdminAnswerContent' placeholder="답변 내용을 입력하세요." cols='20' style='width: 100%; height: 200px'></textarea>
					    </td>
					  </tr>
					</table>
                </div>
                <div class="modal-footer">
                    <button id="btn-adminAnswer" type="button" class="btn btn-warning" data-dismiss="modal"> 답변등록 </button>
                    <button id="btn-closeInquiryPopup" type="button" class="btn btn-primary" data-dismiss="modal">닫기</button>
                </div>
           	</div>
       	</div>
   	</div>
    <div id="popupReportModal" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">신고 내역</h4>
                </div>
                <div class="widgets-searchbox">
                    <div style="position:absoluted; padding-bottom: 10px; padding-left: 79%;">
               			<button id="btn-cancelReport" type="button" class="btn btn-danger" data-dismiss="modal">신고취소</button>
               		</div>
                    <table class="table table-bordered table-hover">
					  <tr style="display: none;">
					    <th> 회원 아이디 </th>
					    <td id="reportMemberId"></td>
					  </tr>
					  <tr>
					    <th> 이용 제한 대상 </th>
					    <td id="reportEmail"></td>
					  </tr>
					  <tr>
					    <th> 상품ID </th>
					    <td id="reportProductId"></td>
					  </tr>
					  <tr>
					    <th> 리뷰 번호 </th>
					    <td id="reportReviewId"></td>
					  </tr>
					  <tr>
					  <tr>
					    <th> 리뷰 제목 </th>
					    <td id="reportTitle"></td>
					  </tr>
					  <tr>
					    <th> 리뷰 내용 </th>
					    <td id="reportReviewContent"></td>
					  </tr>
					  <tr>
					    <th> 리뷰 작성일 </th>
					    <td id="reportReviewRegiDate"></td>
					  </tr>
					  <tr>
					    <th> 신고 횟수 </th>
					    <td id="reportCnt"></td>
					  </tr>
					  <tr>
					    <th> 최근 신고 내용 </th>
					    <td id="reportContent"></td>
					  </tr>
					  <tr>
					    <th> 최근 신고일 </th>
					    <td id="reportDate"></td>
					  </tr>
					</table>
                </div>
                <div class="modal-footer">
                    <button id="btn-deleteReportTarget" type="button" class="btn btn-danger" data-dismiss="modal">해당 글 삭제</button>
                    <button id="btn-closeReportPopup" type="button" class="btn btn-primary" data-dismiss="modal">닫기</button>
                </div>
           	</div>
       	</div>
   	</div>
	<div id="popupVisibleModal" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">상품 노출 확인</h4>
                </div>
                <div class="widgets-searchbox">
                    <table class="table table-bordered table-hover">
					  <tr>
					    <th> 노출 제한 상품 </th>
					    <td id="visibleProduct"></td>
					    <td id="visibleStatus" style="display: none;"></td>
					  </tr>
					  <tr>
					    <th colspan="2" style="color: #FF0000">* 실행 시 해당 상품의 노출/숨김이 변경됩니다.</th>
					  </tr>
					</table>
                </div>
                <div class="modal-footer">
                    <button id="btn-visibleProduct" type="button" class="btn btn-danger" data-dismiss="modal"></button>
                    <button id="btn-closeVisiblePopup" type="button" class="btn btn-primary" data-dismiss="modal">닫기</button>
                </div>
            </div>
        </div>
    </div>
    <div id="orderCancelModal" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">상품 취소</h4>
                </div>
                <div class="widgets-searchbox">
                    <table class="table table-bordered table-hover">
					  <tr>
					    <th> 주문번호 </th>
					    <td id="orderCancelNum"></td>
					  </tr>
					  <tr>
					    <th> 취소 사유 </th>
					    <td>
					    	<textarea id="orderCancelReason" placeholder="취소 사유를 입력하세요." cols="20" style="width: 100%; height: 100px"></textarea>
					    </td>
					  </tr>
					</table>
                </div>
                <div class="modal-footer">
                    <button id="btn-orderCancel" type="button" class="btn btn-danger" data-dismiss="modal">주문취소</button>
                    <button id="btn-closeOrderCancelPopup" type="button" class="btn btn-primary" data-dismiss="modal">닫기</button>
                </div>
            </div>
        </div>
    </div>
    <!-- Global Vendor, plugins JS -->

    <!-- JS Files
    ============================================ -->

    <script src="../resources/assets/js/vendor/bootstrap.bundle.min.js"></script>
    <script src="../resources/assets/js/vendor/jquery-3.6.0.min.js"></script>
    <script src="../resources/assets/js/vendor/jquery-migrate-3.3.2.min.js"></script>
    <script src="../resources/assets/js/vendor/jquery.waypoints.js"></script>
    <script src="../resources/assets/js/vendor/modernizr-3.11.2.min.js"></script>
    <script src="../resources/assets/js/plugins/wow.min.js"></script>
    <script src="../resources/assets/js/plugins/swiper-bundle.min.js"></script>
    <script src="../resources/assets/js/plugins/jquery.nice-select.js"></script>
    <script src="../resources/assets/js/plugins/parallax.min.js"></script>
    <script src="../resources/assets/js/plugins/jquery.magnific-popup.min.js"></script>
    <script src="../resources/assets/js/plugins/tippy.min.js"></script>
    <script src="../resources/assets/js/plugins/ion.rangeSlider.min.js"></script>
    <script src="../resources/assets/js/plugins/mailchimp-ajax.js"></script>
    <script src="../resources/assets/js/plugins/jquery.counterup.js"></script>

    <!--Main JS (Common Activation Codes)-->
    <script src="/flower/resources/assets/js/main.js"></script>
    <script src="/flower/resources/assets/js/admin/admin.js"></script>
</body>
</html>