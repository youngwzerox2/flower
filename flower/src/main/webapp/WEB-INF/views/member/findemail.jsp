<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<% String pjName = "/flower"; %>
	
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>꽃물주 - 이메일찾기</title>
<meta name="robots" content="index, follow" />
<meta name="description"
	content="Pronia plant store bootstrap 5 template is an awesome websitㄴe template for any home plant shop.">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon" href="<%=pjName %>/resources/assets/images/logo/tulips.png" />

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
<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>

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
								<h2 class="breadcrumb-heading">이메일 찾기 페이지</h2>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="login-area section-space-y-axis-100">

				<div class="col-lg-6">
					<form action="findemail" method="post">
						<div class="customerservice-form">
							<h4 class="customerservice-title">이메일 찾기</h4>
							<div class="row">
								<div class="col-lg-12">
									<label>중복검사로 가입하신 이메일을 찾아드립니다.</label>
									<br/>
									<label>중복된 이메일이 없을 경우, 신규회원으로 가입해주시기 바랍니다.</label>
									<br/>
									<br/>
									<input id="member_email" type="email" name="member_email" placeholder="중복 검사할 이메일 입력" required>
									<button id="findEmailChk" class="btn btn-custom-size lg-size btn-pronia-primary" type="button" name="findEmailChk" value="N">검사시작</button>
									<br/>
									<br/>
									<div id="resultMessage" name="resultMessage"></div>
								</div>
								<br/>
								<br/>
									<!-- 팝업창 -->
										<div id="myModal" class="mymodal modal">
										  <div class="modal-content">
										    <span class="close">&times;</span>
										    <p id="modalMessage"></p>
										  </div>
										</div>
							</div>
						</div>
					</form>
				</div>
			</div>
	</div>
	</div>
	</main>
	<!-- Main Content Area End Here -->

	<!-- Begin Footer Area -->
	<!-- <div class="footer-area"
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
	</div> -->
	<!-- Footer Area End Here -->

	<!-- Begin Scroll To Top -->
	<a class="scroll-to-top" href=""> <i class="fa fa-angle-double-up"></i>
	</a>
	<!-- Scroll To Top End Here -->

	</div>

	<script src="../resources/assets/js/member/findemail.js"></script>

	<%@include file="/flower_footer.jsp" %>