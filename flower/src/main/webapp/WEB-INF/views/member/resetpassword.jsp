<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% String pjName = "/flower"; %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>꽃물주</title>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>꽃물주 - 비밀번호 초기화</title>
<meta name="robots" content="index, follow" />
<meta name="description"
	content="Pronia plant store bootstrap 5 template is an awesome website template for any home plant shop.">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon"
	href="../resources/assets/images/favicon.ico" />

<!-- CSS
    ============================================ -->

<link rel="stylesheet" href="../resources/assets/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="../resources/assets/css/font-awesome.min.css" />
<link rel="stylesheet"
	href="../resources/assets/css/Pe-icon-7-stroke.css" />
<link rel="stylesheet" href="../resources/assets/css/animate.min.css">
<link rel="stylesheet"
	href="../resources/assets/css/swiper-bundle.min.css">
<link rel="stylesheet" href="../resources/assets/css/nice-select.css">
<link rel="stylesheet"
	href="../resources/assets/css/magnific-popup.min.css" />
<link rel="stylesheet"
	href="../resources/assets/css/ion.rangeSlider.min.css" />

<!-- Style CSS -->
<link rel="stylesheet" href="../resources/assets/css/style.css">
</head>
<body>
<body>
	<div class="preloader-activate preloader-active open_tm_preloader">
		<div class="preloader-area-wrap">
			<div
				class="spinner d-flex justify-content-center align-items-center h-100">
				<div class="bounce1"></div>
				<div class="bounce2"></div>
				<div class="bounce3"></div>
			</div>
		</div>
	</div>
	<div class="main-wrapper">
	<%@ include file="/flower_header.jsp" %>
	
		<!-- Begin Main Header Area -->
		
		<!-- Main Header Area End Here -->

		<!-- Begin Main Content Area -->
		<main class="main-content">
			<div class="breadcrumb-area breadcrumb-height"
				data-bg-image="../resources/assets/images/breadcrumb/bg/1-1-1919x388.jpg">
				<div class="container h-100">
					<div class="row h-100">
						<div class="col-lg-12">
							<div class="breadcrumb-item">
								<h2 class="breadcrumb-heading">비밀번호 초기화(변경) 페이지</h2>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="login-area section-space-y-axis-100">

				<div class="col-lg-6">
					<form action="changepassword" id="resetpassword" method="post">
						<div class="customerservice-form">
							<h4 class="customerservice-title">변경하실 비밀번호를 입력해 주세요</h4>
							<div class="row">
								<div class="col-lg-12">
									<label>비밀번호는 암호화 되어 저장되기 때문에 비밀번호를 잊으셨을 경우, 새로운 비밀번호로 재설정 해드립니다.</label>
									<br/>
									<br/>
									<label style="margin-left: 35px;">새 비밀번호</label>
									<input id="member_password" type="password" name="member_password" placeholder="영문, 숫자, 특수문자가 조합된 8~20자" required style="width: 300px;">
									<br/>
									<br/>
									<label>새 비밀번호 확인</label>
									<input id="member_passwordcheck" type="password" name="member_passwordcheck" required style="width: 300px;">
									<br/>
									<br/>
									<button id="resetPassword" class="btn btn-custom-size lg-size btn-pronia-primary" type="button" name="resetPassword" value="N">비밀번호 변경하기</button>
									<button id="cancel" class="btn btn-custom-size lg-size btn-pronia-primary" type="button" name="cancel">취소</button>
									<br/>
									<br/>
								</div>
								<br/>
								<br/>
								<div class="col-lg-12" id="resultMessage">
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
	</div>
	</main>
	<!-- Main Content Area End Here -->

	<!-- Begin Footer Area -->
	<div class="footer-area"
		data-bg-image="../resources/assets/images/footer/bg/1-1920x465.jpg">
		<div class="footer-top section-space-top-100 pb-60">
			<div class="container">
				<div class="row">
					<div class="col-lg-3">
						<div class="footer-widget-item">
							<div class="footer-widget-logo">
								<a href="index.html"> <img
									src="../resources/assets/images/logo/dark.png" alt="Logo">
								</a>
							</div>
							<p class="footer-widget-desc">
								Lorem ipsum dolor sit amet, consec adipisl elit, sed do eiusmod
								tempor <br> incidio ut labore et dolore magna.
							</p>
							<div class="social-link with-border">
								<ul>
									<li><a href="#" data-tippy="Facebook"
										data-tippy-inertia="true" data-tippy-animation="shift-away"
										data-tippy-delay="50" data-tippy-arrow="true"
										data-tippy-theme="sharpborder"> <i class="fa fa-facebook"></i>
									</a></li>
									<li><a href="#" data-tippy="Twitter"
										data-tippy-inertia="true" data-tippy-animation="shift-away"
										data-tippy-delay="50" data-tippy-arrow="true"
										data-tippy-theme="sharpborder"> <i class="fa fa-twitter"></i>
									</a></li>
									<li><a href="#" data-tippy="Pinterest"
										data-tippy-inertia="true" data-tippy-animation="shift-away"
										data-tippy-delay="50" data-tippy-arrow="true"
										data-tippy-theme="sharpborder"> <i class="fa fa-pinterest"></i>
									</a></li>
									<li><a href="#" data-tippy="Dribbble"
										data-tippy-inertia="true" data-tippy-animation="shift-away"
										data-tippy-delay="50" data-tippy-arrow="true"
										data-tippy-theme="sharpborder"> <i class="fa fa-dribbble"></i>
									</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-lg-2 col-md-4 pt-40">
						<div class="footer-widget-item">
							<h3 class="footer-widget-title">Useful Links</h3>
							<ul class="footer-widget-list-item">
								<li><a href="#">About Pronia</a></li>
								<li><a href="#">How to shop</a></li>
								<li><a href="#">FAQ</a></li>
								<li><a href="#">Contact us</a></li>
								<li><a href="#">Log in</a></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-2 col-md-4 pt-40">
						<div class="footer-widget-item">
							<h3 class="footer-widget-title">My Account</h3>
							<ul class="footer-widget-list-item">
								<li><a href="#">Sign In</a></li>
								<li><a href="#">View Cart</a></li>
								<li><a href="#">My Wishlist</a></li>
								<li><a href="#">Track My Order</a></li>
								<li><a href="#">Help</a></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-2 col-md-4 pt-40">
						<div class="footer-widget-item">
							<h3 class="footer-widget-title">Our Service</h3>
							<ul class="footer-widget-list-item">
								<li><a href="#">Payment Methods</a></li>
								<li><a href="#">Money Guarantee!</a></li>
								<li><a href="#">Returns</a></li>
								<li><a href="#">Shipping</a></li>
								<li><a href="#">Privacy Policy</a></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-3 pt-40">
						<div class="footer-contact-info">
							<h3 class="footer-widget-title">Got Question? Call Us</h3>
							<a class="number" href="tel://123-456-789">123 456 789</a>
							<div class="address">
								<ul>
									<li>Your Address Goes Here</li>
								</ul>
							</div>
						</div>
						<div class="payment-method">
							<a href="#"> <img
								src="../resources/assets/images/payment/1.png"
								alt="Payment Method">
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
							<span class="copyright-text">© 2021 Pronia Made with <i
								class="fa fa-heart text-danger"></i> by <a
								href="https://hasthemes.com/" rel="noopener" target="_blank">HasThemes</a>
							</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Footer Area End Here -->

	<!-- Begin Scroll To Top -->
	<a class="scroll-to-top" href=""> <i class="fa fa-angle-double-up"></i>
	</a>
	<!-- Scroll To Top End Here -->

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
	<script
		src="../resources/assets/js/plugins/jquery.magnific-popup.min.js"></script>
	<script src="../resources/assets/js/plugins/tippy.min.js"></script>
	<script src="../resources/assets/js/plugins/ion.rangeSlider.min.js"></script>
	<script src="../resources/assets/js/plugins/mailchimp-ajax.js"></script>
	<script src="../resources/assets/js/plugins/jquery.counterup.js"></script>

	<!--Main JS (Common Activation Codes)-->
	<script src="../resources/assets/js/main.js"></script>
	<script src="../resources/assets/js/member/resetpassword.js"></script>

</body>
</html>