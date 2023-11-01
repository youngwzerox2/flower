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
            <div class="widgets-searchbox">
	            <form id="widgets-searchbox">
	            	 <div style="color: red;">
	            	 	<img src="../resources/assets/images/logo/dark.png" alt="Header Logo"></img>Admin Page
	            	 </div>
	            	 <div class="product-topbar" style="position:absoluted; top:50px; left: 50%;">
	                     <ul>
	                         <li class="page-count">
	                             <span>CEO</span> 관리자님, 환영합니다 !
	                         </li>
	                         <li class="mb-xs mt-xs mr-xs btn btn-primary" onclick="location.href='/flower/flower_main.jsp'"> 이용자 화면 이동 </li>
	                         <li class="mb-xs mt-xs mr-xs btn btn-warning"> 내정보 </li>
	                         <li class="mb-xs mt-xs mr-xs btn btn-danger"> 로그아웃 </li>
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
								</li>
                                <li class="nav-item">
                                    <a id="account-products-tab" data-bs-toggle="collapse" href="#account-products_info" role="tab" aria-hidden="true">상품</a>
                                </li>
                                <li class = 'sub-nav-item collapse' id = "account-products_info" >
                                	<a class="nav-link" id = account-products-tab data-bs-toggle="tab" role="tab" aria-controls="account-productsControll" href="#account-products" aria-expanded="false" style="text-align: right;">상품 관리</a>
                                	<a class="nav-link" id = account-inquiries-tab data-bs-toggle="tab" role="tab" aria-controls="account-inquiriesControll" href="#account-inquiries" aria-expanded="false" style="text-align: right;">문의 관리</a>
                                	<a class="nav-link" id = account-reviews-tab data-bs-toggle="tab" role="tab" aria-controls="account-reviewsControll" href="#account-reviews" aria-expanded="false" style="text-align: right;">리뷰 관리</a>
                                	<a class="nav-link" id = account-orders-tab data-bs-toggle="tab" role="tab" aria-controls="account-ordersControll" href="#account-orders" aria-expanded="false" style="text-align: right;">주문 관리</a>
                                </li>
                                <li class="nav-item">
                                    <a id="account-setting-tab" data-bs-toggle="collapse" href="#account-setting_info" role="tab" aria-hidden="true">설정</a>
                                </li>
                                <li class = 'sub-nav-item collapse' id = "account-setting_info" >
                                	<a class="nav-link" id = account-screens-tab data-bs-toggle="tab" role="tab" aria-controls="account-screensControll" href="#account-screens" aria-expanded="false" style="text-align: right;">메인화면 관리</a>
                                	<a class="nav-link" id = account-policies-tab data-bs-toggle="tab" role="tab" aria-controls="account-policiesControll" href="#account-policies" aria-expanded="false" style="text-align: right;">정책 관리</a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-lg-9">
                            <div class="tab-content myaccount-tab-content" id="account-page-tab-content">
                                <div class="tab-pane fade show active" id="account-dashboard" role="tabpanel" aria-labelledby="account-dashboard-tab">
                                    <div class="myaccount-dashboard">
                                        <p>Hello <b>Pronia</b> (not Pronia? <a href="login-register.html">Sign
                                                out</a>)</p>
                                        <p>From your account dashboard you can view your recent orders, manage your shipping and
                                            billing addresses and <a href="#">edit your password and account details</a>.</p>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="account-member" aria-labelledby="account-member-tab">
								    <div class="myaccount-orders">
								        <h4 class="small-title">회원 관리</h4><br/>
										<div class="widgets-searchbox">
												<ul>								        
													<li class="short">
				                                        <select class="nice-select">
				                                            <option value="">전체</option>
				                                            <option value="member_email">ID</option>
				                                            <option value="member_name">고객명</option>
				                                        </select>
			                                    	</li>
			                                    	<li>
		                                        	<input class="input-field" type="text" placeholder="검색어를 입력해주세요." style="width: 70%">
			                                    	</li>
			                                    	<li>
			                                        <button class="widgets-searchbox-btn" >
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
                                <div class="tab-pane fade" id="account-products" role="tabpanel" aria-labelledby="account-products-tab">
                                    <div class="myaccount-products">
                                        <p>The following addresses will be used on the checkout page by default.</p>
                                        <div class="row">
                                            <div class="col">
                                                <h4 class="small-title">BILLING ADDRESS</h4>
                                                <address>
                                                    1234 Heaven Stress, Beverly Hill OldYork UnitedState of Lorem
                                                </address>
                                            </div>
                                            <div class="col">
                                                <h4 class="small-title">SHIPPING ADDRESS</h4>
                                                <address>
                                                    1234 Heaven Stress, Beverly Hill OldYork UnitedState of Lorem
                                                </address>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="account-setting" role="tabpanel" aria-labelledby="account-setting-tab">
                                    <div class="myaccount-setting">
                                        <form action="#" class="myaccount-form">
                                            <div class="myaccount-form-inner">
                                                <div class="single-input single-input-half">
                                                    <label>First Name*</label>
                                                    <input type="text">
                                                </div>
                                                <div class="single-input single-input-half">
                                                    <label>Last Name*</label>
                                                    <input type="text">
                                                </div>
                                                <div class="single-input">
                                                    <label>Email*</label>
                                                    <input type="email">
                                                </div>
                                                <div class="single-input">
                                                    <label>Current Password(leave blank to leave
                                                        unchanged)</label>
                                                    <input type="password">
                                                </div>
                                                <div class="single-input">
                                                    <label>New Password (leave blank to leave
                                                        unchanged)</label>
                                                    <input type="password">
                                                </div>
                                                <div class="single-input">
                                                    <label>Confirm New Password</label>
                                                    <input type="password">
                                                </div>
                                                <div class="single-input">
                                                    <button class="btn btn-custom-size lg-size btn-pronia-primary" type="submit">
                                                        <span>SAVE CHANGES</span>
                                                    </button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>

        <!-- Begin Scroll To Top -->
        <a class="scroll-to-top" href="">
            <i class="fa fa-angle-double-up"></i>
        </a>
        <!-- Scroll To Top End Here -->

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
    <script src="../resources/assets/js/main.js"></script>
    <script src="../resources/assets/js/admin.js"></script>
</body>
</html>