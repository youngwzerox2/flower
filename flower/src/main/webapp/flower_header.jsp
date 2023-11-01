<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>FlowerOwner(Home Two)</title>
    <meta name="robots" content="index, follow" />
    <meta name="description" content="Pronia plant store bootstrap 5 template is an awesome website template for any home plant shop.">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="./resources/assets/images/favicon.ico" />

    <!-- CSS
    ============================================ -->

    <link rel="stylesheet" href="./resources/assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="./resources/assets/css/font-awesome.min.css" />
    <link rel="stylesheet" href="./resources/assets/css/Pe-icon-7-stroke.css" />
    <link rel="stylesheet" href="./resources/assets/css/animate.min.css">
    <link rel="stylesheet" href="./resources/assets/css/swiper-bundle.min.css">
    <link rel="stylesheet" href="./resources/assets/css/nice-select.css">
    <link rel="stylesheet" href="./resources/assets/css/magnific-popup.min.css" />
    <link rel="stylesheet" href="./resources/assets/css/ion.rangeSlider.min.css" />

    <!-- Style CSS -->
    <link rel="stylesheet" href="./resources/assets/css/style.css">

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

        <!-- Begin Main Header Area -->
        <header class="main-header-area">
			
            <div class="header-middle py-30">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-12">
                            <div class="header-middle-wrap position-relative">
								
								<!-- header: 로고 → 이미지 변경요망 -->
                                <a href="index.html" class="header-logo">
                                    <img src="./resources/assets/images/logo/dark.png" alt="Header Logo">
                                </a>

                                <div class="header-right">
                                    <ul>
										<!-- header: 검색버튼 -->
                                        <li>
                                            <a href="#exampleModal" class="search-btn bt" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                                <i class="pe-7s-search"></i>
                                            </a>
                                        </li>
										<!-- header: 계정 버튼 - 마이페이지, 로그인 드롭다운 -->
                                        <li class="dropdown d-none d-lg-block">
                                            <button class="btn btn-link dropdown-toggle ht-btn p-0" type="button" id="settingButton" data-bs-toggle="dropdown" aria-label="setting" aria-expanded="false">
                                                <i class="pe-7s-users"></i>
                                            </button>
											<!-- 계정버튼 드롭다운: 마이페이지, 로그인 -->
                                            <ul class="dropdown-menu" aria-labelledby="settingButton">
												<!-- 마이페이지 -->
                                                <li><a class="dropdown-item" href="my-account.html">My account</a></li>
												<!-- 로그인 -->
                                                <li><a class="dropdown-item" href="member/login">로그인</a></li>
                                                <!-- 회원가입 -->
                                                <li><a class="dropdown-item" href="member/register">회원가입</a></li>
                                            </ul>
                                        </li>
										<!-- header: 좋아요(찜) 버튼 → 숨길까? -->
                                        <li class="d-none d-lg-block">
                                            <a href="wishlist.html">
                                                <i class="pe-7s-like"></i>
                                            </a>
                                        </li>
										<!-- header: 장바구니 -->
                                        <li class="minicart-wrap me-3 me-lg-0">
                                            <a href="#miniCart" class="minicart-btn toolbar-btn">
                                                <i class="pe-7s-shopbag"></i>
                                                <span class="quantity">3</span>
                                            </a>
                                        </li>
                                        <li class="mobile-menu_wrap d-block d-lg-none">
                                            <a href="#mobileMenu" class="mobile-menu_btn toolbar-btn pl-0">
                                                <i class="pe-7s-menu"></i>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div> <!-- flower header end -->
			
		
        

        <!-- Begin Scroll To Top -->
        <a class="scroll-to-top" href="">
            <i class="fa fa-angle-double-up"></i>
        </a>
        <!-- Scroll To Top End Here -->

    </div><!-- main-wrapper end -->