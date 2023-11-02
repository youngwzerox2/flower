<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% String pjName = "/flower"; %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Pronia - My Account</title>
    <meta name="robots" content="index, follow" />
    <meta name="description" content="Pronia plant store bootstrap 5 template is an awesome website template for any home plant shop.">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="/flower/resources/assets/images/favicon.ico" />

    <!-- CSS
    ============================================ -->

    <link rel="stylesheet" href="/flower/resources/assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/flower/resources/assets/css/font-awesome.min.css" />
    <link rel="stylesheet" href="/flower/resources/assets/css/Pe-icon-7-stroke.css" />
    <link rel="stylesheet" href="/flower/resources/assets/css/animate.min.css">
    <link rel="stylesheet" href="/flower/resources/assets/css/swiper-bundle.min.css">
    <link rel="stylesheet" href="/flower/resources/assets/css/nice-select.css">
    <link rel="stylesheet" href="/flower/resources/assets/css/magnific-popup.min.css" />
    <link rel="stylesheet" href="/flower/resources/assets/css/ion.rangeSlider.min.css" />

    <!-- Style CSS -->
    <link rel="stylesheet" href="/flower/resources/assets/css/style.css">

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
	<%@ include file="/flower_header.jsp" %>
       
        <!-- Begin Main Content Area -->
        <main class="main-content">
            <div class="breadcrumb-area breadcrumb-height" data-bg-image="/flower/resources/assets/images/breadcrumb/bg/1-1-1919x388.jpg">
                <div class="container h-100">
                    <div class="row h-100">
                        <div class="col-lg-12">
                            <div class="breadcrumb-item">
                                <h2 class="breadcrumb-heading">My Account Page</h2>
                                <ul>
                                    <li>
                                        <a href="index.html">Home</a>
                                    </li>
                                    <li>My Account</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="account-page-area section-space-y-axis-100">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3">
                            <ul class="nav myaccount-tab-trigger" id="account-page-tab" role="tablist">
                                <li class="nav-item">
                                    <a id="account-dashboard-tab" href="#account-dashboard_info" data-bs-toggle="collapse" role="tab" >나의 쇼핑정보</a>
                                </li>
                                <li class = 'sub-nav-item collapse show' id = "account-dashboard_info" >
                                	<a class="nav-link active" id = account-like-tab data-bs-toggle="tab" role="tab" aria-controls="account-like" href="#account-like" aria-expanded="true">마음에 든 꽃</a>
                                	<a class="nav-link" id = account-orders-tab data-bs-toggle="tab" role="tab" aria-controls="account-orders" href="#account-orders" aria-expanded="false">구매내역</a>
                                	<a class="nav-link" id = account-inquiry-tab data-bs-toggle="tab" role="tab" aria-controls="account-inquiry" href="#account-inquiry" aria-expanded="false" >문의내역</a>
                                </li>
                                <li class="nav-item">
                                    <a id="account-orders2-tab" data-bs-toggle="collapse" href="#account-orders_info" role="tab">개인정보관리</a>
                                </li>
                                 <li class = 'sub-nav-item  collapse'  id = "account-orders_info">
                                	<a class="nav-link" id = account-address-tab data-bs-toggle="tab" role="tab" aria-controls="account-address" href="#account-address" aria-expanded="false">배송지 관리</a>
                                	<a class="nav-link" id = account-password-tab data-bs-toggle="tab"  role="tab" aria-controls="account-password" href="#account-password" aria-expanded="false">비밀번호 관리</a>
                                	<a class="nav-link" id = account-withdrwal-tab data-bs-toggle="tab" role="tab" aria-controls="account-withdrwal" href="#account-withdrwal" aria-expanded="false">회원 탈퇴</a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-lg-9">
                            <div class="tab-content myaccount-tab-content" id="account-page-tab-content">
                                <div class="tab-pane fade show active" id="account-like" role="tabpanel" aria-labelledby="account-like-tab">
                                    <div class="myaccount-like">
                                    <h4 class="small-title">나의 좋아요</h4>
                                    <table class="table table-bordered mypage-list">
                                    	<tr>
                                    		<td>
                                    			<a href ="#"><img src ="/flower/resources/assets/images/product/medium-size/1-10-270x300.jpg"></a>
                                    			<div>꽃 설명 블라블라블라블라</div>
                                    			<div>가격 블라블라</div>
                                    		</td>
                                    		<td>
                                    			<a href ="#"><img src ="/flower/resources/assets/images/product/medium-size/1-10-270x300.jpg"></a>
                                    		</td>
                                    		<td>
                                    			<a href ="#"><img src ="/flower/resources/assets/images/product/medium-size/1-10-270x300.jpg"></a>
                                    		</td>
                                    	</tr>
                                    	<tr>
                                    		<td>
                                    			<a href ="#"><img src ="/flower/resources/assets/images/product/medium-size/1-10-270x300.jpg"></a>
                                    		</td>
                                    		<td>
                                    			<a href ="#"><img src ="/flower/resources/assets/images/product/medium-size/1-10-270x300.jpg"></a>
                                    		</td>
                                    		<td>
                                    			<a href ="#"><img src ="/flower/resources/assets/images/product/medium-size/1-10-270x300.jpg"></a>
                                    		</td>
                                    	</tr>
                                    </table>                                        
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="account-orders" role="tabpanel" aria-labelledby="account-orders-tab">
                                    <div class="myaccount-orders">
                                        <h4 class="small-title">나의 주문내역</h4>
                                        <div class="table-responsive">
                                            <table class="table table-bordered table-hover">
                                                <tbody>
                                                    <tr>
                                                        <th>주문날짜</th>
                                                        <th>주문번호</th>
                                                        <th>상품</th>
                                                        <th>주문금액</th>
                                                        <th>상태</th>
                                                    </tr>
                                                    <tr>
                                                        <td>2023.10.31</td>
                                                        <td><a class="account-order-id" href="#">2021025416232</a></td>
                                                        <td>
                                                        	<ul class = "orders_product_info">
                                                        		<li class = 'orders_product_info_img'>
                                                        			<div class = 'wrphover'>
                                                        				<img src = '/flower/resources/assets/images/product/small-size/1-1-112x124.png'>
                                                        			</div>
                                                        		</li>
                                                        		<li class = "orders_product_info_num">
                                                        			<div>꽃 이름 블라 블라 블라 블라</div>
                                                        			<div>
                                                        				<span>수량: </span>
                                                        				<strong>1</strong>
                                                        				개
                                                        			</div>
                                                        		</li>	
                                                       		</ul>
                                                        </td>
                                                        <td>8,900원</td>
                                                        <td>결제 확인중</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="account-inquiry" role="tabpanel" aria-labelledby="account-inquiry-tab">
                                    <div class="myaccount-orders (inquiry)">
                                    	<h4 class="small-title">나의 문의내역</h4>
                                    	<div class="table-responsive">
                                            <table class="table table-bordered table-hover">
                                                <tbody>
                                                    <tr>
                                                        <th>번호</th>
                                                        <th>제목</th>
                                                        <th>답변 여부</th>
                                                        <th>등록일</th>
                                                        <th></th>
                                                    </tr>
                                                    <tr>
                                                        <td>1</td>
                                                        <td>회원가입이 안돼요</td>
                                                        <td>Y</td>
                                                        <td>2023-10-31</td>
                                                        <td><a href="#" class="btn btn-dark" hidden><span>View</span></a> <!-- 답변여부가 y면 히든 풀기 -->
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="account-address" role="tabpanel" aria-labelledby="account-address-tab">
                                    <div class="myaccount-orders (address)">
                                    	<h4 class="small-title">나의 배송지</h4>
                                    	<div class="table-responsive">
                                            <table class="table table-bordered table-hover">
                                                <tbody>
                                                    <tr>
                                                        <th>구분</th>
                                                        <th>받는분</th>
                                                        <th>주소</th>
                                                        <th>연락처</th>
                                                        <th>관리</th>
                                                    </tr>
                                                    <tr>
                                                        <td>집</td>
                                                        <td>박종건</td>
                                                        <td>경기도 고양시 의정부 얄리얄리 얄랴성 얄라리얄라라루</td>
                                                        <td>010-5555-6666</td>
                                                        <td><a href="#" class="btn btn-dark"><span>수정</span></a>
                                                        	<a href="#" class="btn"><span>삭제</span></a>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="account-password" role="tabpanel" aria-labelledby="account-password-tab">
                                    <div class="myaccount-details">
                                        <form action="#" class="myaccount-form">
                                            <div class="myaccount-form-inner">
                                                <div class="single-input">
                                                    <label>현재 비밀번호</label>
                                                    <input type="password">
                                                </div>
                                                <div class="single-input">
                                                    <label>변경할 비밀번호</label>
                                                    <input type="password">
                                                </div>
                                                <div class="single-input">
                                                    <label>변경할 비밀번호 확인</label>
                                                    <input type="password">
                                                </div>
                                                <div class="single-input">
                                                    <button class="btn btn-custom-size lg-size btn-pronia-primary" type="submit">
                                                        <span>변경하기</span>
                                                    </button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="account-withdrwal" role="tabpanel" aria-labelledby="account-withdrwal-tab">
                                    <h3>회원탈퇴</h3>
                                    <p>꽃물주 서비스를 이용 해주셔서 감사합니다</p>
                                    <dl id = 'infobox'>
                                    	<dt>탈퇴를 하시면</dt>
                                    	<dd>" 꽃물주에서 이용하신 모든 회원정보가 삭제되며, 더 이상 서비스를 이용할 수 없게 됩니다."<br>
                                    		" 또한 삭제된 정보는 복구할 수 없으며, 탈퇴에 대한 다른 궁금한 사항이 있으시면 1:1문의를 통해 안내 받으실 수 있습니다."<br>
                                    		" * 회원 탈퇴 시 동일 이메일로 재가입이 불가합니다."
                                    	</dd>
                                    </dl>
                                    <dl class="frm">
                                    	<dt>탈퇴 하시려는 사유를 작성해주세요. 꽃물주 서비스 운영에 많은 도움이 됩니다.</dt>
                                    	<dd>
                                    		<label>
                                    			<textarea class = 'frmbox wfull h100' placeholder = '탈퇴 사유를 작성해주세요.'></textarea>
                                    		</label>
                                    	</dd>
                                    </dl>
                                    <div class = 'tc'>
                                    	<a href="#">서비스 계속 이용하기</a>
                                    	<button type = "submit">탈퇴하기</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <!-- Main Content Area End Here -->

        <!-- Begin Footer Area -->
        <div class="footer-area" data-bg-image="/flower/resources/assets/images/footer/bg/1-1920x465.jpg">
            <div class="footer-top section-space-top-100 pb-60">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3">
                            <div class="footer-widget-item">
                                <div class="footer-widget-logo">
                                    <a href="index.html">
                                        <img src="/flower/resources/assets/images/logo/dark.png" alt="Logo">
                                    </a>
                                </div>
                                <p class="footer-widget-desc">Lorem ipsum dolor sit amet, consec adipisl elit, sed do eiusmod
                                    tempor
                                    <br>
                            incidio ut labore et dolore magna.
                                </p>
                                <div class="social-link with-border">
                                    <ul>
                                        <li>
                                            <a href="#" data-tippy="Facebook" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                <i class="fa fa-facebook"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" data-tippy="Twitter" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                <i class="fa fa-twitter"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" data-tippy="Pinterest" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                <i class="fa fa-pinterest"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" data-tippy="Dribbble" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                <i class="fa fa-dribbble"></i>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-4 pt-40">
                            <div class="footer-widget-item">
                                <h3 class="footer-widget-title">Useful Links</h3>
                                <ul class="footer-widget-list-item">
                                    <li>
                                        <a href="#">About Pronia</a>
                                    </li>
                                    <li>
                                        <a href="#">How to shop</a>
                                    </li>
                                    <li>
                                        <a href="#">FAQ</a>
                                    </li>
                                    <li>
                                        <a href="#">Contact us</a>
                                    </li>
                                    <li>
                                        <a href="#">Log in</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-4 pt-40">
                            <div class="footer-widget-item">
                                <h3 class="footer-widget-title">My Account</h3>
                                <ul class="footer-widget-list-item">
                                    <li>
                                        <a href="#">Sign In</a>
                                    </li>
                                    <li>
                                        <a href="#">View Cart</a>
                                    </li>
                                    <li>
                                        <a href="#">My Wishlist</a>
                                    </li>
                                    <li>
                                        <a href="#">Track My Order</a>
                                    </li>
                                    <li>
                                        <a href="#">Help</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-4 pt-40">
                            <div class="footer-widget-item">
                                <h3 class="footer-widget-title">Our Service</h3>
                                <ul class="footer-widget-list-item">
                                    <li>
                                        <a href="#">Payment Methods</a>
                                    </li>
                                    <li>
                                        <a href="#">Money Guarantee!</a>
                                    </li>
                                    <li>
                                        <a href="#">Returns</a>
                                    </li>
                                    <li>
                                        <a href="#">Shipping</a>
                                    </li>
                                    <li>
                                        <a href="#">Privacy Policy</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-3 pt-40">
                            <div class="footer-contact-info">
                                <h3 class="footer-widget-title">Got Question? Call Us</h3>
                                <a class="number" href="tel://123-456-789">123 456 789</a>
                                <div class="address">
                                    <ul>
                                        <li>
                                            Your Address Goes Here
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="payment-method">
                                <a href="#">
                                    <img src="/flower/resources/assets/images/payment/1.png" alt="Payment Method">
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer-bottom">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="copyright">
                                <span class="copyright-text">© 2021 Pronia Made with <i class="fa fa-heart text-danger"></i> by
                            <a href="https://hasthemes.com/" rel="noopener" target="_blank">HasThemes</a> </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer Area End Here -->

        <!-- Begin Scroll To Top -->
        <a class="scroll-to-top" href="">
            <i class="fa fa-angle-double-up"></i>
        </a>
        <!-- Scroll To Top End Here -->

    </div>

    <!-- Global Vendor, plugins JS -->

    <!-- JS Files
    ============================================ -->

    <script src="/flower/resources/assets/js/vendor/bootstrap.bundle.min.js"></script>
    <script src="/flower/resources/assets/js/vendor/jquery-3.6.0.min.js"></script>
    <script src="/flower/resources/assets/js/vendor/jquery-migrate-3.3.2.min.js"></script>
    <script src="/flower/resources/assets/js/vendor/jquery.waypoints.js"></script>
    <script src="/flower/resources/assets/js/vendor/modernizr-3.11.2.min.js"></script>
    <script src="/flower/resources/assets/js/plugins/wow.min.js"></script>
    <script src="/flower/resources/assets/js/plugins/swiper-bundle.min.js"></script>
    <script src="/flower/resources/assets/js/plugins/jquery.nice-select.js"></script>
    <script src="/flower/resources/assets/js/plugins/parallax.min.js"></script>
    <script src="/flower/resources/assets/js/plugins/jquery.magnific-popup.min.js"></script>
    <script src="/flower/resources/assets/js/plugins/tippy.min.js"></script>
    <script src="/flower/resources/assets/js/plugins/ion.rangeSlider.min.js"></script>
    <script src="/flower/resources/assets/js/plugins/mailchimp-ajax.js"></script>
    <script src="/flower/resources/assets/js/plugins/jquery.counterup.js"></script>

    <!--Main JS (Common Activation Codes)-->
    <script src="/flower/resources/assets/js/main.js"></script>

</body>

</html>