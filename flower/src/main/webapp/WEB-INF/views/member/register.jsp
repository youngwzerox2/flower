<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% String pjName = "/flower"; %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>꽃을 내 곁에, 꽃사수</title>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="robots" content="index, follow" />
<meta name="description"
	content="Pronia plant store bootstrap 5 template is an awesome website template for any home plant shop.">
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
								<h2 class="breadcrumb-heading">회원가입 페이지</h2>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="login-area section-space-y-axis-100">
				<div class="container">
					<div class="row">

						<div class="col-lg-6 pt-5 pt-lg-0">
							<form action="register" method="post" id="regForm" name="regForm">
								<div class="login-form">
								<!-- 팝업 창 -->

								
									<h4 class="login-title">회원가입</h4>
									<div class="row">
										<div class="col-md-6 col-12">
											<label>회원명</label> <input id="member_name" name="member_name"
												type="text" placeholder="회원명" pattern="[A-Za-z가-힣]*"
												maxlength="19">
										</div>
										<div class="col-md-12">
											<label>이메일주소*</label> <input id="member_email"
												name="member_email" type="email" placeholder="이메일주소">
											<button id="idChk" class="btn btn-custom-size lg-size btn-pronia-primary" type="button" value="N">중복확인</button>
											<br/>
											<br/>
											<div id="emailCheckResult"></div>
											<br/>
										</div>
										
										<div class="col-md-6">
											<label>비밀번호</label> <input id="member_password"
												name="member_password" type="password" placeholder="비밀번호">
											<br/>
											<br/>
										</div>
										<!-- 약관 동의 내용 -->
										<br/>
										<div class="agreeservice">
									    <!-- 서비스 이용 약관 동의 -->
									    <div>
									    	<label>꽃물주 서비스 이용 약관 동의</label>
									    	<div class="agreement-content">
									           <p>${companyPolicy.terms_Of_Service}</p>
									        </div>
									        <br/>
									        <label for="termsOfService">
									        	<input type="checkbox" id="termsOfService" name="termsOfService"> 동의함 (필수)
									        </label>
									    </div>
									    <br/>
									    
									    <!-- 개인정보 처리방침 동의 -->
									   <div>
										    <label>개인정보 처리방침 동의</label>
										    <div class="agreement-content">
										      <p>${companyPolicy.privacy_Policy}</p>
										    </div>
										    <br/>
										    <label for="privacyPolicy">
										        <input type="checkbox" id="privacyPolicy" name="privacyPolicy"> 동의함 (필수)
										    </label>
										</div>
										<br/>
									    
									    <!-- 개인정보 처리 위탁 동의 -->
									   <div>
										    <label>개인정보 처리 위탁 동의</label>
										    <div class="agreement-content">
										       <p>${companyPolicy.data_Processing_Agreement}</p>
										    </div>
										    <br/>
										    <label for="dataProcessingAgreement">
										        <input type="checkbox" id="dataProcessingAgreement" name="dataProcessingAgreement"> 동의함 (필수)
										    </label>
										</div>
									    
									    <!-- 모두 동의 체크박스 -->
									    <div>
									        <label for="allAgreements">
									        	 <input type="checkbox" id="allAgreements" name="allAgreements"> 모두 동의
									        </label>
									    </div>
									</div>
										
										<!-- 회원가입 버튼 -->
										<div class="col-12">
											<br /> <br />
											<button id="join"
												class="btn btn-custom-size lg-size btn-pronia-primary"
												type="button">회원가입하기</button>
											<button type="button" id="cancel"
												class="btn btn-custom-size lg-size btn-pronia-primary">취소</button>
										</div>
										
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

	<!--Main JS (Common Activation Codes)-->
	<script src="/flower/resources/assets/js/member/register.js"></script>
	<%@include file="/flower_footer.jsp" %>