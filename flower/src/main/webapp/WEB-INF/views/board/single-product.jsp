<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품상세목록</title>

<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Pronia - Single Product</title>
    <meta name="robots" content="index, follow" />
    <meta name="description" content="Pronia plant store bootstrap 5 template is an awesome website template for any home plant shop.">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="resources/assets/images/favicon.ico" />

    <!-- CSS
    ============================================ -->

    <link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/assets/css/font-awesome.min.css" />
    <link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/assets/css/Pe-icon-7-stroke.css" />
    <link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/assets/css/animate.min.css">
    <link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/assets/css/swiper-bundle.min.css">
    <link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/assets/css/nice-select.css">
    <link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/assets/css/magnific-popup.min.css" />
    <link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/assets/css/ion.rangeSlider.min.css" />

    <!-- Style CSS -->
    <link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/assets/css/style.css">
    
    <!-- board -->
    <link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/assets/css/board.css">

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
            <div class="header-top bg-pronia-primary d-none d-lg-block">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-6">
                            <div class="header-top-left">
                                <span class="pronia-offer">HELLO EVERYONE! 25% Off All Products</span>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="header-top-right">
                                <ul class="dropdown-wrap">
                                    <li class="dropdown">
                                        <button class="btn btn-link dropdown-toggle ht-btn" type="button" id="currencyButton" data-bs-toggle="dropdown" aria-label="currency" aria-expanded="false">
                                            USD
                                        </button>
                                        <ul class="dropdown-menu" aria-labelledby="currencyButton">
                                            <li><a class="dropdown-item" href="#">GBP</a></li>
                                            <li><a class="dropdown-item" href="#">ISO</a></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown">
                                        <button class="btn btn-link dropdown-toggle ht-btn" type="button" id="languageButton" data-bs-toggle="dropdown" aria-label="language" aria-expanded="false">
                                            English
                                        </button>
                                        <ul class="dropdown-menu" aria-labelledby="languageButton">
                                            <li><a class="dropdown-item" href="#">French</a></li>
                                            <li><a class="dropdown-item" href="#">Italian</a></li>
                                            <li><a class="dropdown-item" href="#">Spanish</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="header-middle py-30">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-12">
                            <div class="header-middle-wrap position-relative">
                                <div class="header-contact d-none d-lg-flex">
                                    <i class="pe-7s-call"></i>
                                    <a href="tel://+00-123-456-789">+00 123 456 789</a>
                                </div>

                                <a href="index.html" class="header-logo">
                                    <img src="${ pageContext.request.contextPath }/resources/assets/images/logo/dark.png" alt="Header Logo">
                                </a>

                                <div class="header-right">
                                    <ul>
                                        <li>
                                            <a href="#exampleModal" class="search-btn bt" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                                <i class="pe-7s-search"></i>
                                            </a>
                                        </li>
                                        <li class="dropdown d-none d-lg-block">
                                            <button class="btn btn-link dropdown-toggle ht-btn p-0" type="button" id="settingButton" data-bs-toggle="dropdown" aria-label="setting" aria-expanded="false">
                                                <i class="pe-7s-users"></i>
                                            </button>
                                            <ul class="dropdown-menu" aria-labelledby="settingButton">
                                                <li><a class="dropdown-item" href="my-account.html">My account</a></li>
                                                <li><a class="dropdown-item" href="">Login | Register</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="d-none d-lg-block">
                                            <a href="wishlist.html">
                                                <i class="pe-7s-like"></i>
                                            </a>
                                        </li>
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
            </div>
            <div class="header-bottom d-none d-lg-block">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="main-menu position-relative">
                                <nav class="main-nav">
                                    <ul>
                                        <li class="drop-holder">
                                            <a href="index.html">Home</a>
                                            <ul class="drop-menu">
                                                <li>
                                                    <a href="index.html">Home One</a>
                                                </li>
                                                <li>
                                                    <a href="index-2.html">Home Two</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="megamenu-holder">
                                            <a href="shop.html">Shop</a>
                                            <ul class="drop-menu megamenu">
                                                <li>
                                                    <span class="title">Shop Layout</span>
                                                    <ul>
                                                        <li>
                                                            <a href="shop.html">Shop Default</a>
                                                        </li>
                                                        <li>
                                                            <a href="shop-grid-fullwidth.html">Shop Grid Fullwidth</a>
                                                        </li>
                                                        <li>
                                                            <a href="shop-right-sidebar.html">Shop Right Sidebar</a>
                                                        </li>
                                                        <li>
                                                            <a href="shop-list-fullwidth.html">Shop List Fullwidth</a>
                                                        </li>
                                                        <li>
                                                            <a href="shop-list-left-sidebar.html">Shop List Left Sidebar</a>
                                                        </li>
                                                        <li>
                                                            <a href="shop-list-right-sidebar.html">Shop List Right Sidebar</a>
                                                        </li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <span class="title">Product Style</span>
                                                    <ul>
                                                        <li>
                                                            <a href="single-product-variable.html">Single Product Variable</a>
                                                        </li>
                                                        <li>
                                                            <a href="single-product-group.html">Single Product Group</a>
                                                        </li>
                                                        <li>
                                                            <a href="single-product.html">Single Product Default</a>
                                                        </li>
                                                        <li>
                                                            <a href="single-product-affiliate.html">Single Product Affiliate</a>
                                                        </li>
                                                        <li>
                                                            <a href="single-product-sale.html">Single Product Sale</a>
                                                        </li>
                                                        <li>
                                                            <a href="single-product-sticky.html">Single Product Sticky</a>
                                                        </li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <span class="title">Product Related</span>
                                                    <ul>
                                                        <li>
                                                            <a href="my-account.html">My Account</a>
                                                        </li>
                                                        <li>
                                                            <a href="login-register.html">Login | Register</a>
                                                        </li>
                                                        <li>
                                                            <a href="cart.html">Shopping Cart</a>
                                                        </li>
                                                        <li>
                                                            <a href="wishlist.html">Wishlist</a>
                                                        </li>
                                                        <li>
                                                            <a href="compare.html">Compare</a>
                                                        </li>
                                                        <li>
                                                            <a href="checkout.html">Checkout</a>
                                                        </li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="drop-holder">
                                            <a href="blog.html">Blog</a>
                                            <ul class="drop-menu">
                                                <li>
                                                    <a href="blog-listview.html">Blog List View</a>
                                                </li>
                                                <li>
                                                    <a href="blog-detail.html">Blog Detail</a>
                                                </li>
                                                <li class="drop-holder">
                                                    <a href="#">Multi level dropdown</a>
                                                    <ul class="drop-menu">
                                                        <li class="drop-holder">
                                                            <a href="#">Level 02</a>
                                                            <ul class="drop-menu">
                                                                <li class="drop-holder">
                                                                    <a href="#">Level 03</a>
                                                                    <ul class="drop-menu">
                                                                        <li>
                                                                            <a href="#">Level 04</a>
                                                                        </li>
                                                                    </ul>
                                                                </li>
                                                            </ul>
                                                        </li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="about.html">About Us</a>
                                        </li>
                                        <li class="drop-holder">
                                            <a href="#">Pages</a>
                                            <ul class="drop-menu">
                                                <li>
                                                    <a href="faq.html">FAQ</a>
                                                </li>
                                                <li>
                                                    <a href="404.html">Error 404</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="contact.html">Contact Us</a>
                                        </li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="header-sticky py-4 py-lg-0">
                <div class="container">
                    <div class="header-nav position-relative">
                        <div class="row align-items-center">
                            <div class="col-lg-3 col-6">

                                <a href="index.html" class="header-logo">
                                    <img src="${ pageContext.request.contextPath }/resources/assets/images/logo/dark.png" alt="Header Logo">
                                </a>

                            </div>
                            <div class="col-lg-6 d-none d-lg-block">
                                <div class="main-menu">
                                    <nav class="main-nav">
                                        <ul>
                                            <li class="drop-holder">
                                                <a href="index.html">Home</a>
                                                <ul class="drop-menu">
                                                    <li>
                                                        <a href="index.html">Home One</a>
                                                    </li>
                                                    <li>
                                                        <a href="index-2.html">Home Two</a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li class="megamenu-holder">
                                                <a href="shop.html">Shop</a>
                                                <ul class="drop-menu megamenu">
                                                    <li>
                                                        <span class="title">Shop Layout</span>
                                                        <ul>
                                                            <li>
                                                                <a href="shop.html">Shop Default</a>
                                                            </li>
                                                            <li>
                                                                <a href="shop-grid-fullwidth.html">Shop Grid Fullwidth</a>
                                                            </li>
                                                            <li>
                                                                <a href="shop-right-sidebar.html">Shop Right Sidebar</a>
                                                            </li>
                                                            <li>
                                                                <a href="shop-list-fullwidth.html">Shop List Fullwidth</a>
                                                            </li>
                                                            <li>
                                                                <a href="shop-list-left-sidebar.html">Shop List Left Sidebar</a>
                                                            </li>
                                                            <li>
                                                                <a href="shop-list-right-sidebar.html">Shop List Right
                                                                    Sidebar</a>
                                                            </li>
                                                        </ul>
                                                    </li>
                                                    <li>
                                                        <span class="title">Product Style</span>
                                                        <ul>
                                                            <li>
                                                                <a href="single-product-variable.html">Single Product
                                                                    Variable</a>
                                                            </li>
                                                            <li>
                                                                <a href="single-product-group.html">Single Product Group</a>
                                                            </li>
                                                            <li>
                                                                <a href="single-product.html">Single Product Default</a>
                                                            </li>
                                                            <li>
                                                                <a href="single-product-affiliate.html">Single Product
                                                                    Affiliate</a>
                                                            </li>
                                                            <li>
                                                                <a href="single-product-sale.html">Single Product Sale</a>
                                                            </li>
                                                            <li>
                                                                <a href="single-product-sticky.html">Single Product Sticky</a>
                                                            </li>
                                                        </ul>
                                                    </li>
                                                    <li>
                                                        <span class="title">Product Related</span>
                                                        <ul>
                                                            <li>
                                                                <a href="my-account.html">My Account</a>
                                                            </li>
                                                            <li>
                                                                <a href="login-register.html">Login | Register</a>
                                                            </li>
                                                            <li>
                                                                <a href="cart.html">Shopping Cart</a>
                                                            </li>
                                                            <li>
                                                                <a href="wishlist.html">Wishlist</a>
                                                            </li>
                                                            <li>
                                                                <a href="compare.html">Compare</a>
                                                            </li>
                                                            <li>
                                                                <a href="checkout.html">Checkout</a>
                                                            </li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li class="drop-holder">
                                                <a href="blog.html">Blog</a>
                                                <ul class="drop-menu">
                                                    <li>
                                                        <a href="blog-listview.html">Blog List View</a>
                                                    </li>
                                                    <li>
                                                        <a href="blog-detail.html">Blog Detail</a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li>
                                                <a href="about.html">About Us</a>
                                            </li>
                                            <li class="drop-holder">
                                                <a href="#">Pages</a>
                                                <ul class="drop-menu">
                                                    <li>
                                                        <a href="faq.html">FAQ</a>
                                                    </li>
                                                    <li>
                                                        <a href="404.html">Error 404</a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li>
                                                <a href="contact.html">Contact Us</a>
                                            </li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                            <div class="col-lg-3 col-6">
                                <div class="header-right">
                                    <ul>
                                        <li>
                                            <a href="#exampleModal" class="search-btn bt" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                                <i class="pe-7s-search"></i>
                                            </a>
                                        </li>
                                        <li class="dropdown d-none d-lg-block">
                                            <button class="btn btn-link dropdown-toggle ht-btn p-0" type="button" id="stickysettingButton" data-bs-toggle="dropdown" aria-label="setting" aria-expanded="false">
                                                <i class="pe-7s-users"></i>
                                            </button>
                                            <ul class="dropdown-menu" aria-labelledby="stickysettingButton">
                                                <li><a class="dropdown-item" href="my-account.html">My account</a></li>
                                                <li><a class="dropdown-item" href="login-register.html">Login | Register</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="d-none d-lg-block">
                                            <a href="wishlist.html">
                                                <i class="pe-7s-like"></i>
                                            </a>
                                        </li>
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
            </div>
            <div class="mobile-menu_wrapper" id="mobileMenu">
                <div class="offcanvas-body">
                    <div class="inner-body">
                        <div class="offcanvas-top">
                            <a href="#" class="button-close"><i class="pe-7s-close"></i></a>
                        </div>
                        <div class="header-contact offcanvas-contact">
                            <i class="pe-7s-call"></i>
                            <a href="tel://+00-123-456-789">+00 123 456 789</a>
                        </div>
                        <div class="offcanvas-user-info">
                            <ul class="dropdown-wrap">
                                <li class="dropdown dropdown-left">
                                    <button class="btn btn-link dropdown-toggle ht-btn" type="button" id="languageButtonTwo" data-bs-toggle="dropdown" aria-expanded="false">
                                        English
                                    </button>
                                    <ul class="dropdown-menu" aria-labelledby="languageButtonTwo">
                                        <li><a class="dropdown-item" href="#">French</a></li>
                                        <li><a class="dropdown-item" href="#">Italian</a></li>
                                        <li><a class="dropdown-item" href="#">Spanish</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown">
                                    <button class="btn btn-link dropdown-toggle ht-btn usd-dropdown" type="button" id="currencyButtonTwo" data-bs-toggle="dropdown" aria-expanded="false">
                                        USD
                                    </button>
                                    <ul class="dropdown-menu" aria-labelledby="currencyButtonTwo">
                                        <li><a class="dropdown-item" href="#">GBP</a></li>
                                        <li><a class="dropdown-item" href="#">ISO</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown">
                                    <button class="btn btn-link dropdown-toggle ht-btn p-0" type="button" id="settingButtonTwo" data-bs-toggle="dropdown" aria-expanded="false">
                                        <i class="pe-7s-users"></i>
                                    </button>
                                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="settingButtonTwo">
                                        <li><a class="dropdown-item" href="my-account.html">My account</a></li>
                                        <li><a class="dropdown-item" href="login-register.html">Login | Register</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="wishlist.html">
                                        <i class="pe-7s-like"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="offcanvas-menu_area">
                            <nav class="offcanvas-navigation">
                                <ul class="mobile-menu">
                                    <li class="menu-item-has-children">
                                        <a href="#">
                                            <span class="mm-text">Home
                                        <i class="pe-7s-angle-down"></i>
                                    </span>
                                        </a>
                                        <ul class="sub-menu">
                                            <li>
                                                <a href="index.html">
                                                    <span class="mm-text">Home One</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="index-2.html">
                                                    <span class="mm-text">Home Two</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="menu-item-has-children">
                                        <a href="#">
                                            <span class="mm-text">Shop
                                        <i class="pe-7s-angle-down"></i>
                                    </span>
                                        </a>
                                        <ul class="sub-menu">
                                            <li class="menu-item-has-children">
                                                <a href="#">
                                                    <span class="mm-text">Shop Layout
                                                <i class="pe-7s-angle-down"></i>
                                            </span>
                                                </a>
                                                <ul class="sub-menu">
                                                    <li>
                                                        <a href="shop.html">
                                                            <span class="mm-text">Shop Default</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="shop-grid-fullwidth.html">
                                                            <span class="mm-text">Shop Grid Fullwidth</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="shop-right-sidebar.html">
                                                            <span class="mm-text">Shop Right Sidebar</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="shop-list-fullwidth.html">
                                                            <span class="mm-text">Shop List Fullwidth</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="shop-list-left-sidebar.html">
                                                            <span class="mm-text">Shop List Left Sidebar</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="shop-list-right-sidebar.html">
                                                            <span class="mm-text">Shop List Right Sidebar</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li class="menu-item-has-children">
                                                <a href="#">
                                                    <span class="mm-text">Product Style
                                                <i class="pe-7s-angle-down"></i>
                                            </span>
                                                </a>
                                                <ul class="sub-menu">
                                                    <li>
                                                        <a href="single-product.html">
                                                            <span class="mm-text">Single Product Default</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="single-product-group.html">
                                                            <span class="mm-text">Single Product Group</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="single-product-variable.html">
                                                            <span class="mm-text">Single Product Variable</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="single-product-sale.html">
                                                            <span class="mm-text">Single Product Sale</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="single-product-sticky.html">
                                                            <span class="mm-text">Single Product Sticky</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="single-product-affiliate.html">
                                                            <span class="mm-text">Single Product Affiliate</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li class="menu-item-has-children">
                                                <a href="#">
                                                    <span class="mm-text">Product Related
                                                <i class="pe-7s-angle-down"></i>
                                            </span>
                                                </a>
                                                <ul class="sub-menu">
                                                    <li>
                                                        <a href="my-account.html">
                                                            <span class="mm-text">My Account</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="login-register.html">
                                                            <span class="mm-text">Login | Register</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="cart.html">
                                                            <span class="mm-text">Shopping Cart</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="wishlist.html">
                                                            <span class="mm-text">Wishlist</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="compare.html">
                                                            <span class="mm-text">Compare</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="checkout.html">
                                                            <span class="mm-text">Checkout</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="menu-item-has-children">
                                        <a href="#">
                                            <span class="mm-text">Blog
                                        <i class="pe-7s-angle-down"></i>
                                    </span>
                                        </a>
                                        <ul class="sub-menu">
                                            <li class="menu-item-has-children">
                                                <a href="#">
                                                    <span class="mm-text">Blog Holder
                                                <i class="pe-7s-angle-down"></i>
                                            </span>
                                                </a>
                                                <ul class="sub-menu">
                                                    <li>
                                                        <a href="blog.html">
                                                            <span class="mm-text">Blog Default</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="blog-listview.html">Blog List View</a>
                                                    </li>
                                                    <li>
                                                        <a href="blog-detail.html">Blog Detail</a>
                                                    </li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="about.html">
                                            <span class="mm-text">About Us</span>
                                        </a>
                                    </li>
                                    <li class="menu-item-has-children">
                                        <a href="#">
                                            <span class="mm-text">Pages
                                        <i class="pe-7s-angle-down"></i>
                                    </span>
                                        </a>
                                        <ul class="sub-menu">
                                            <li>
                                                <a href="faq.html">
                                                    <span class="mm-text">Frequently Questions</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="404.html">
                                                    <span class="mm-text">Error 404</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="contact.html">
                                            <span class="mm-text">Contact</span>
                                        </a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModal" aria-hidden="true">
                <div class="modal-dialog modal-fullscreen">
                    <div class="modal-content modal-bg-dark">
                        <div class="modal-header">
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" data-tippy="Close" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="modal-search">
                                <span class="searchbox-info">Start typing and press Enter to search or ESC to close</span>
                                <form action="#" class="hm-searchbox">
                                    <input type="text" name="Search..." value="Search..." onblur="if(this.value==''){this.value='Search...'}" onfocus="if(this.value=='Search...'){this.value=''}" autocomplete="off">
                                    <button class="search-btn" type="submit" aria-label="searchbtn">
                                        <i class="pe-7s-search"></i>
                                    </button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="offcanvas-minicart_wrapper" id="miniCart">
                <div class="offcanvas-body">
                    <div class="minicart-content">
                        <div class="minicart-heading">
                            <h4 class="mb-0">Shopping Cart</h4>
                            <a href="#" class="button-close"><i class="pe-7s-close" data-tippy="Close" data-tippy-inertia="true"
                            data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true"
                            data-tippy-theme="sharpborder"></i></a>
                        </div>
                        <ul class="minicart-list">
                            <li class="minicart-product">
                                <a class="product-item_remove" href="#"><i class="pe-7s-close" data-tippy="Remove"
                                data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50"
                                data-tippy-arrow="true" data-tippy-theme="sharpborder"></i></a>
                                <a href="single-product-variable.html" class="product-item_img">
                                    <img class="img-full" src="${ pageContext.request.contextPath }/resources/assets/images/product/small-size/2-1-70x78.png" alt="Product Image">
                                </a>
                                <div class="product-item_content">
                                    <a class="product-item_title" href="single-product-variable.html">American Marigold</a>
                                    <span class="product-item_quantity">1 x $23.45</span>
                                </div>
                            </li>
                            <li class="minicart-product">
                                <a class="product-item_remove" href="#"><i class="pe-7s-close" data-tippy="Remove"
                                data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50"
                                data-tippy-arrow="true" data-tippy-theme="sharpborder"></i></a>
                                <a href="single-product-variable.html" class="product-item_img">
                                    <img class="img-full" src="${ pageContext.request.contextPath }/resources/assets/images/product/small-size/2-2-70x78.png" alt="Product Image">
                                </a>
                                <div class="product-item_content">
                                    <a class="product-item_title" href="single-product-variable.html">Black Eyed Susan</a>
                                    <span class="product-item_quantity">1 x $25.45</span>
                                </div>
                            </li>
                            <li class="minicart-product">
                                <a class="product-item_remove" href="#">
                                    <i class="pe-7s-close" data-tippy="Remove" data-tippy-inertia="true"
                                data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true"
                                data-tippy-theme="sharpborder"></i>
                                </a>
                                <a href="single-product-variable.html" class="product-item_img">
                                    <img class="img-full" src="${ pageContext.request.contextPath }/resources/assets/images/product/small-size/2-3-70x78.png" alt="Product Image">
                                </a>
                                <div class="product-item_content">
                                    <a class="product-item_title" href="single-product-variable.html">Bleeding Heart</a>
                                    <span class="product-item_quantity">1 x $30.45</span>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="minicart-item_total">
                        <span>Subtotal</span>
                        <span class="ammount">$79.35</span>
                    </div>
                    <div class="group-btn_wrap d-grid gap-2">
                        <a href="cart.html" class="btn btn-dark">View Cart</a>
                        <a href="checkout.html" class="btn btn-dark">Checkout</a>
                    </div>
                </div>
            </div>
            <div class="global-overlay"></div>
        </header>
        <!-- Main Header Area End Here -->

        <!-- Begin Main Content Area  -->
        <main class="main-content">
            <div class="breadcrumb-area breadcrumb-height" data-bg-image="${ pageContext.request.contextPath }/resources/assets/images/breadcrumb/bg/1-1-1919x388.jpg">
                <div class="container h-100">
                    <div class="row h-100">
                        <div class="col-lg-12">
                            <div class="breadcrumb-item">
                                <h2 class="breadcrumb-heading">Single Product</h2>
                                <ul>
                                    <li>
                                        <a href="index.html">Home</a>
                                    </li>
                                    <li>Single Product</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="single-product-area section-space-top-100">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="single-product-img">
                                <div class="swiper-container single-product-slider">
                                    <div class="swiper-wrapper">
                                        <div class="swiper-slide">
                                            <a href="${ pageContext.request.contextPath }/resources/assets/images/product/large-size/1-1-570x633.jpg" class="single-img gallery-popup">
                                                <img class="img-full" src="assets/images/product/large-size/1-1-570x633.jpg" alt="Product Image">
                                            </a>
                                        </div>
                                        <div class="swiper-slide">
                                            <a href="${ pageContext.request.contextPath }/resources/assets/images/product/large-size/1-2-570x633.jpg" class="single-img gallery-popup">
                                                <img class="img-full" src="assets/images/product/large-size/1-2-570x633.jpg" alt="Product Image">
                                            </a>
                                        </div>
                                        <div class="swiper-slide">
                                            <a href="${ pageContext.request.contextPath }/resources/assets/images/product/large-size/1-3-570x633.jpg" class="single-img gallery-popup">
                                                <img class="img-full" src="assets/images/product/large-size/1-3-570x633.jpg" alt="Product Image">
                                            </a>
                                        </div>
                                        <div class="swiper-slide">
                                            <a href="${ pageContext.request.contextPath }/resources/assets/images/product/large-size/1-4-570x633.jpg" class="single-img gallery-popup">
                                                <img class="img-full" src="${ pageContext.request.contextPath }/resources/assets/images/product/large-size/1-4-570x633.jpg" alt="Product Image">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="thumbs-arrow-holder">
                                    <div class="swiper-container single-product-thumbs">
                                        <div class="swiper-wrapper">
                                            <a href="javascript:void(0);" class="swiper-slide">
                                                <img class="img-full" src="${ pageContext.request.contextPath }/resources/assets/images/product/large-size/1-1-570x633.jpg" alt="Product Thumnail">
                                            </a>
                                            <a href="javascript:void(0);" class="swiper-slide">
                                                <img class="img-full" src="${ pageContext.request.contextPath }/resources/assets/images/product/large-size/1-2-570x633.jpg" alt="Product Thumnail">
                                            </a>
                                            <a href="javascript:void(0);" class="swiper-slide">
                                                <img class="img-full" src="${ pageContext.request.contextPath }/resources/assets/images/product/large-size/1-3-570x633.jpg" alt="Product Thumnail">
                                            </a>
                                            <a href="javascript:void(0);" class="swiper-slide">
                                                <img class="img-full" src="${ pageContext.request.contextPath }/resources/assets/images/product/large-size/1-4-570x633.jpg" alt="Product Thumnail">
                                            </a>
                                        </div>
                                        <!-- Add Arrows -->
                                        <div class=" thumbs-button-wrap d-none d-md-block">
                                            <div class="thumbs-button-prev">
                                                <i class="pe-7s-angle-left"></i>
                                            </div>
                                            <div class="thumbs-button-next">
                                                <i class="pe-7s-angle-right"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 pt-5 pt-lg-0">
                            <div class="single-product-content">
                                <h2 class="title">분홍낮달맞이꽃</h2>
                                <div class="price-box">
                                    <span class="new-price">62.000원</span>
                                </div>
                                
                                
                                <!-- 
                                <div class="rating-box-wrap pb-4">
                                    <div class="rating-box">
                                        <ul>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                    
                                    
                                    <div class="review-status">
                                        <a href="javascript:void(0);">( 1 Review )</a>
                                    </div>
                                </div>
                                 -->
                                 
                                <p class="short-desc">Lorem ipsum dolor sit amet, consectetur adipisic elit, sed do eiusmod
                                    tempo incid ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostru
                                    exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor
                                    in reprehenderit in voluptateLorem ipsum dolor sit amet, consectetur adipisic elit, sed do eiusmod
                                    tempo incid ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostru
                                    exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor
                                    in reprehenderit in voluptate</p>
                                <ul class="quantity-with-btn">
                                
                                	<li class="quantity">
                                        <div class="cart-plus-minus">
                                            <input class="cart-plus-minus-box" value="1" type="text">
                                        </div>
                                    </li>

                                    <li class="add-to-cart">
                           
                                    	<!-- 버튼추가 -->
                                    	<a class="btn btn-custom-size lg-size btn-pronia-primary" href="">바로구매</a>
                                    	
                                        <a class="btn btn-custom-size lg-size btn-pronia-primary" href="cart.html">카트</a>
                                        

                                    </li>
                                    <li class="wishlist-btn-wrap">
                                        <a class="custom-circle-btn" href="wishlist.html">
                                            <i class="pe-7s-like"></i>
                                        </a>
                                    </li>
                                    
                                    
                                    <!-- 
                                    <li class="compare-btn-wrap">
                                        <a class="custom-circle-btn" href="compare.html">
                                            <i class="pe-7s-refresh-2"></i>
                                        </a>
                                    </li>
                                     -->
                                </ul>
                                
                                <%-- 
                                <ul class="service-item-wrap">
                                    <li class="service-item">
                                        <div class="service-img">
                                            <img src="${ pageContext.request.contextPath }/resources/assets/images/shipping/icon/car.png" alt="Shipping Icon">
                                        </div>
                                        <div class="service-content">
                                            <span class="title">Free <br> Shipping</span>
                                        </div>
                                    </li>
                                    <li class="service-item">
                                        <div class="service-img">
                                            <img src="${ pageContext.request.contextPath }/resources/assets/images/shipping/icon/card.png" alt="Shipping Icon">
                                        </div>
                                        <div class="service-content">
                                            <span class="title">Safe <br> Payment</span>
                                        </div>
                                    </li>
                                    <li class="service-item">
                                        <div class="service-img">
                                            <img src="${ pageContext.request.contextPath }/resources/assets/images/shipping/icon/service.png" alt="Shipping Icon">
                                        </div>
                                        <div class="service-content">
                                            <span class="title">Safe <br> Payment</span>
                                        </div>
                                    </li>
                                </ul>
                                 --%>
                                
                                <!-- 
                                <div class="product-category">
                                    <span class="title">SKU:</span>
                                    <ul>
                                        <li>
                                            <a href="javascript:void(0);">Ch-256xl</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="product-category">
                                    <span class="title">Categories :</span>
                                    <ul>
                                        <li>
                                            <a href="javascript:void(0);">Office,</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0);">Home</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="product-category product-tags">
                                    <span class="title">Tags :</span>
                                    <ul>
                                        <li>
                                            <a href="javascript:void(0);">Furniture</a>
                                        </li>
                                    </ul>
                                </div>
                                 -->
                                <!--  
                                <div class="product-category social-link align-items-center pb-0">
                                    <span class="title pe-3">Share:</span>
                                    <ul>
                                        <li>
                                            <a href="javascript:void(0);" data-tippy="Pinterest" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                <i class="fa fa-pinterest-p"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0);" data-tippy="Twitter" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                <i class="fa fa-twitter"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0);" data-tippy="Tumblr" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                <i class="fa fa-tumblr"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0);" data-tippy="Dribbble" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                <i class="fa fa-dribbble"></i>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                                 -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="product-tab-area section-space-top-100">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                        
                            <ul class="nav product-tab-nav tab-style-2 pt-0" role="tablist">
                                <li class="nav-item" role="presentation">
                                    <a class="tab-btn" id="information-tab" data-bs-toggle="tab" href="#information" role="tab" aria-controls="information" aria-selected="false">
                                        상품정보
                                    </a>
                                </li>
                                
                                <li class="nav-item" role="presentation">
                                    <a class="tab-btn" id="reviews-tab" data-bs-toggle="tab" href="#reviews" role="tab" aria-controls="reviews" aria-selected="false">
                                        리뷰
                                    </a>
                                </li>

                                <li class="nav-item" role="presentation">
                                    <a class="tab-btn" id="inquiries-tab" data-bs-toggle="tab" href="#inquiries" role="tab" aria-controls="inquiries" aria-selected="false">
                                        문의
                                    </a>
                                </li>
                                
                                <li class="nav-item" role="presentation">
                                    <a class="active tab-btn" id="description-tab" data-bs-toggle="tab" href="#description" role="tab" aria-controls="description" aria-selected="true">
                                        배송/교환/환불/판매자정보
                                    </a>
                                </li>

                            </ul>
                            
                            <!-- 상품정보 -->
                            <div class="tab-content product-tab-content">
                                <div class="tab-pane fade" id="information" role="tabpanel" aria-labelledby="information-tab">
                                    <div class="product-information-body">
                                        <h4 class="title">Shipping</h4>
                                        <p class="short-desc mb-4">The item will be shipped from China. So it need 15-20 days to
                                            deliver. Our product is good with reasonable price and we believe you will worth it.
                                            So please wait for it patiently! Thanks.Any question please kindly to contact us and
                                            we promise to work hard to help you to solve the problem</p>
                                        <h4 class="title">About return request</h4>
                                        <p class="short-desc mb-4">If you don't need the item with worry, you can contact us
                                            then we will help you to solve the problem, so please close the return request!
                                            Thanks</p>
                                        <h4 class="title">Guarantee</h4>
                                        <p class="short-desc mb-0">If it is the quality question, we will resend or refund to
                                            you; If you receive damaged or wrong items, please contact us and attach some
                                            pictures about product, we will exchange a new correct item to you after the
                                            confirmation.</p>
                                    </div>
                                </div>
                                
                                <!-- 배송/교환/환불/판매자정보 -->
                                <div class="tab-pane fade show active" id="description" role="tabpanel" aria-labelledby="description-tab">
                                    <div class="product-description-body">
                                    	<h3>배송/교환/환불/판매자정보</h3>
                                    	Notice<br>
                                    	[구매 전 확인 부탁드립니다]
                                    	<hr>
                                    	상품정보<br>
                                    	배송정보<br>
                                    	교환/반품<br>
                                    	
                                    	<hr>
                                    	<h3>판매자 정보</h3>
                                        <p class="short-desc mb-0"></p>                                   
                                    </div>
                                </div>
                                
                            
                                
                                <div class="tab-pane fade" id="inquiries" role="tabpanel" aria-labelledby="reviews-tab">
                                    <div class="product-review-body">
                                    
                                    <!-- 문의게시판 -->	
                                    <div id="inquiries_content">                                
                                    	
                                    	<div id="i_dox">
                                    		<h2 id="inquiries">게시판</h2>
                                    		
                                    		<!-- 문의하기 -->
                                    		<div class="inquiries_writing">
                                    			<input class="i_btn_writing" type="button" value="문의하기" onclick="insert_form();">
                                    		</div>
                                    		
                                    		<div class="i_select_box">
                                    			<div class="i_select">
                                    				<select id="search">
                                    					<option class="all">전체</option>
                                    					<option class="type">종류</option>
                                    					<option class="title">제목</option>
                                    					<option class="content">내용</option>
                                    					<option class="title_content">제목+내용</option>
                                    					<option class="regdate">작성일자</option>
                                    				</select>
                                    					<input id="search_text" value="" placeholder="검색어를 입력하세요">
                                    					<input class="btn btn-primary btn-sm" type="button" value="검색">
                                    			</div>
                                    		</div>
                                    		
                                    		<div class="inquiries_info">
                                    			<table class="table">
                                    				<tr class="inquiries_table">
                                    					<th class="i_list">번호</th>
                                    					<th class="i_title">제목</th>
                                    					<th class="i_list">상태</th>
                                    					<th class="i_list">작성일자</th>
                                    				</tr>
                                    				
                                    				<!-- Data없는경우 -->
                                    				<c:if test="${ empty list }">
                                    					<tr>
                                    						<td colspan="5">
                                    							<div id="i_empty_message">게시물이 없습니다</div>
                                    						</td>
                                    					</tr>
                                    				</c:if>
                                    				
                                    				<!-- Data있는 경우 -->
                                    				<c:forEach var="vo" items="${ list }">
                                    					<tr>
                                    						<td class="i_list_on">${ vo.inquiries_id }</td>
                                    						<td class="i_list_on">${ vo.inquiries_title }</td>
                                    						<td class="i_list_on">${ vo.inquiries_answer_yn }</td>
                                    						<td class="i_list_on">${ fn:substring(vo.inquiries_register_date,0,16) }</td>
                                    					</tr>
                                    				</c:forEach>
                                    			</table>
                                    		</div>
                                    	</div>
                                    </div>
                                        <%-- 
                                        <div class="blog-comment mt-0">
                                            <h4 class="heading">Comments (01111)</h4>
                                            <div class="blog-comment-item">
                                                <div class="blog-comment-img">
                                                    <img src="${ pageContext.request.contextPath }/resources/assets/images/blog/avatar/1-1-120x120.png" alt="User Image">
                                                </div>
                                                <div class="blog-comment-content">
                                                    <div class="user-meta">
                                                        <h2 class="user-name">Donald Chavez</h2>
                                                        <span class="date">21 July 2021</span>
                                                    </div>
                                                    <p class="user-comment">Lorem ipsum dolor sit amet, consectetur adipisi
                                                        elit, sed
                                                        do eiusmod tempor incidid ut labore etl dolore magna aliqua. Ut enim ad
                                                        minim
                                                        veniam, quis nostrud exercitati ullamco laboris nisi ut aliquiex ea
                                                        commodo
                                                        consequat.
                                                    </p>
                                                    <a class="btn btn-custom-size comment-btn" href="javascript:void(0);">Reply</a>
                                                </div>
                                            </div>
                                            <div class="blog-comment-item relpy-item">
                                                <div class="blog-comment-img">
                                                    <img src="${ pageContext.request.contextPath }/resources/assets/images/blog/avatar/1-2-120x120.png" alt="User Image">
                                                </div>
                                                <div class="blog-comment-content">
                                                    <div class="user-meta">
                                                        <h2 class="user-name">Marissa Swan</h2>
                                                        <span class="date">21 July 2021</span>
                                                    </div>
                                                    <p class="user-comment">Lorem ipsum dolor sit amet, consectetur adipisi
                                                        elit, sed do
                                                        eiusmod tempr incidid ut labore etl dolore magna aliqua. Ut enim ad
                                                        minim veniam,
                                                        quisnos exercitati ullamco laboris nisi ut aliquiex.
                                                    </p>
                                                    <a class="btn btn-custom-size comment-btn style-2" href="javascript:void(0);">Reply</a>
                                                </div>
                                            </div>
                                            <div class="blog-comment-item">
                                                <div class="blog-comment-img">
                                                    <img src="${ pageContext.request.contextPath }/resources/assets/images/blog/avatar/1-3-120x120.png" alt="User Image">
                                                </div>
                                                <div class="blog-comment-content">
                                                    <div class="user-meta">
                                                        <h2 class="user-name">Donald Chavez</h2>
                                                        <span class="date">21 July 2021</span>
                                                    </div>
                                                    <p class="user-comment">Lorem ipsum dolor sit amet, consectetur adipisi
                                                        elit, sed
                                                        do eiusmod tempor incidid ut labore etl dolore magna aliqua. Ut enim ad
                                                        minim
                                                        veniam, quis nostrud exercitati ullamco laboris nisi ut aliquiex ea
                                                        commodo
                                                        consequat.
                                                    </p>
                                                    <a class="btn btn-custom-size comment-btn" href="javascript:void(0);">Reply</a>
                                                </div>
                                            </div>
                                        </div>
                                         --%>
                                         
                                        <!--
                                        <div class="feedback-area">
                                            <h2 class="heading">Leave a comment</h2>
                                            <form class="feedback-form" action="#">
                                                <div class="group-input">
                                                    <div class="form-field me-md-30 mb-30 mb-md-0">
                                                        <input type="text" name="name" placeholder="Your Name*" class="input-field">
                                                    </div>
                                                    <div class="form-field">
                                                        <input type="text" name="email" placeholder="Your Email*" class="input-field">
                                                    </div>
                                                </div>
                                                <div class="form-field mt-30">
                                                    <input type="text" name="subject" placeholder="Subject (Optinal)" class="input-field">
                                                </div>
                                                <div class="form-field mt-30">
                                                    <textarea name="message" placeholder="Message" class="textarea-field"></textarea>
                                                </div>
                                                <div class="button-wrap pt-5">
                                                    <button type="submit" value="submit" class="btn btn-custom-size xl-size btn-pronia-primary" name="submit">Post
                                                        Comment</button>
                                                </div>
                                            </form>
                                        </div>
                                         -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
			
			 
            <!-- Begin Product Area -->
            <div class="product-area section-space-y-axis-90">
                <div class="container">
                    <div class="row">
                        <div class="section-title-wrap without-tab">
                            <h2 class="section-title">관련 상품</h2>
                            <p class="section-desc">Contrary to popular belief, Lorem Ipsum is not simply random text. It has
                                roots in a piece of classical Latin literature
                            </p>
                        </div>
                        <div class="col-lg-12">
                            <div class="swiper-container product-slider">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide product-item">
                                        <div class="product-img">
                                            <a href="single-product-variable.html">
                                                <img class="primary-img" src="${ pageContext.request.contextPath }/resources/assets/images/product/medium-size/1-9-270x300.jpg" alt="Product Images">
                                                <img class="secondary-img" src="${ pageContext.request.contextPath }/resources/assets/images/product/medium-size/1-10-270x300.jpg" alt="Product Images">
                                            </a>
                                            <div class="product-add-action">
                                                <ul>
                                                    <li>
                                                        <a href="wishlist.html" data-tippy="Add to wishlist" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                            <i class="pe-7s-like"></i>
                                                        </a>
                                                    </li>
                                                    <li class="quuickview-btn" data-bs-toggle="modal" data-bs-target="#quickModal">
                                                        <a href="#" data-tippy="Quickview" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                            <i class="pe-7s-look"></i>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="cart.html" data-tippy="Add to cart" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                            <i class="pe-7s-cart"></i>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        
                                        <div class="product-content">
                                            <a class="product-name" href="single-product-variable.html">American Marigold</a>
                                            <div class="price-box pb-1">
                                                <span class="new-price">$23.45</span>
                                            </div>
                                            
                                            <div class="rating-box">
                                                <ul>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                </ul>
                                            </div>
                                            
                                        </div>
                                        
                                    </div>
                                    <div class="swiper-slide product-item">
                                        <div class="product-img">
                                            <a href="single-product-variable.html">
                                                <img class="primary-img" src="${ pageContext.request.contextPath }/resources/assets/images/product/medium-size/1-10-270x300.jpg" alt="Product Images">
                                                <img class="secondary-img" src="${ pageContext.request.contextPath }/resources/assets/images/product/medium-size/1-11-270x300.jpg" alt="Product Images">
                                            </a>
                                            <div class="product-add-action">
                                                <ul>
                                                    <li>
                                                        <a href="wishlist.html" data-tippy="Add to wishlist" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                            <i class="pe-7s-like"></i>
                                                        </a>
                                                    </li>
                                                    <li class="quuickview-btn" data-bs-toggle="modal" data-bs-target="#quickModal">
                                                        <a href="#" data-tippy="Quickview" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                            <i class="pe-7s-look"></i>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="cart.html" data-tippy="Add to cart" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                            <i class="pe-7s-cart"></i>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content">
                                            <a class="product-name" href="single-product-variable.html">Black Eyed Susan</a>
                                            <div class="price-box pb-1">
                                                <span class="new-price">$25.45</span>
                                            </div>
                                            <div class="rating-box">
                                                <ul>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="swiper-slide product-item">
                                        <div class="product-img">
                                            <a href="single-product-variable.html">
                                                <img class="primary-img" src="${ pageContext.request.contextPath }/resources/assets/images/product/medium-size/1-11-270x300.jpg" alt="Product Images">
                                                <img class="secondary-img" src="${ pageContext.request.contextPath }/resources/assets/images/product/medium-size/1-4-270x300.jpg" alt="Product Images">
                                            </a>
                                            <div class="product-add-action">
                                                <ul>
                                                    <li>
                                                        <a href="wishlist.html" data-tippy="Add to wishlist" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                            <i class="pe-7s-like"></i>
                                                        </a>
                                                    </li>
                                                    <li class="quuickview-btn" data-bs-toggle="modal" data-bs-target="#quickModal">
                                                        <a href="#" data-tippy="Quickview" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                            <i class="pe-7s-look"></i>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="cart.html" data-tippy="Add to cart" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                            <i class="pe-7s-cart"></i>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content">
                                            <a class="product-name" href="single-product-variable.html">Bleeding Heart</a>
                                            <div class="price-box pb-1">
                                                <span class="new-price">$30.45</span>
                                            </div>
                                            <div class="rating-box">
                                                <ul>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="swiper-slide product-item">
                                        <div class="product-img">
                                            <a href="single-product-variable.html">
                                                <img class="primary-img" src="${ pageContext.request.contextPath }/resources/assets/images/product/medium-size/1-7-270x300.jpg" alt="Product Images">
                                                <img class="secondary-img" src="${ pageContext.request.contextPath }/resources/assets/images/product/medium-size/1-8-270x300.jpg" alt="Product Images">
                                            </a>
                                            <div class="product-add-action">
                                                <ul>
                                                    <li>
                                                        <a href="wishlist.html" data-tippy="Add to wishlist" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                            <i class="pe-7s-like"></i>
                                                        </a>
                                                    </li>
                                                    <li class="quuickview-btn" data-bs-toggle="modal" data-bs-target="#quickModal">
                                                        <a href="#" data-tippy="Quickview" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                            <i class="pe-7s-look"></i>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="cart.html" data-tippy="Add to cart" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                            <i class="pe-7s-cart"></i>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content">
                                            <a class="product-name" href="single-product-variable.html">Bloody Cranesbill</a>
                                            <div class="price-box pb-1">
                                                <span class="new-price">$45.00</span>
                                            </div>
                                            <div class="rating-box">
                                                <ul>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Product Area End Here -->
			
        </main>
        <!-- Main Content Area End Here  -->

        <!-- Begin Footer Area -->
        <div class="footer-area" data-bg-image="${ pageContext.request.contextPath }/resources/assets/images/footer/bg/1-1920x465.jpg">
            <div class="footer-top section-space-top-100 pb-60">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3">
                            <div class="footer-widget-item">
                                <div class="footer-widget-logo">
                                    <a href="index.html">
                                        <img src="${ pageContext.request.contextPath }/resources/assets/images/logo/dark.png" alt="Logo">
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
                                    <img src="${ pageContext.request.contextPath }/resources/assets/images/payment/1.png" alt="Payment Method">
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

        <!-- Begin Modal Area -->
        <div class="modal quick-view-modal fade" id="quickModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="quickModal" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" data-tippy="Close" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="modal-wrap row">
                            <div class="col-lg-6">
                                <div class="modal-img">
                                    <div class="swiper-container modal-slider">
                                        <div class="swiper-wrapper">
                                            <div class="swiper-slide">
                                                <a href="#" class="single-img">
                                                    <img class="img-full" src="${ pageContext.request.contextPath }/resources/assets/images/product/large-size/1-1-570x633.jpg" alt="Product Image">
                                                </a>
                                            </div>
                                            <div class="swiper-slide">
                                                <a href="#" class="single-img">
                                                    <img class="img-full" src="${ pageContext.request.contextPath }/resources/assets/images/product/large-size/1-2-570x633.jpg" alt="Product Image">
                                                </a>
                                            </div>
                                            <div class="swiper-slide">
                                                <a href="#" class="single-img">
                                                    <img class="img-full" src="${ pageContext.request.contextPath }/resources/assets/images/product/large-size/1-3-570x633.jpg" alt="Product Image">
                                                </a>
                                            </div>
                                            <div class="swiper-slide">
                                                <a href="#" class="single-img">
                                                    <img class="img-full" src="${ pageContext.request.contextPath }/resources/assets/images/product/large-size/1-4-570x633.jpg" alt="Product Image">
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 pt-5 pt-lg-0">
                                <div class="single-product-content">
                                    <h2 class="title">American Marigold</h2>
                                    <div class="price-box">
                                        <span class="new-price">$23.45</span>
                                    </div>
                                    <div class="rating-box-wrap">
                                        <div class="rating-box">
                                            <ul>
                                                <li><i class="fa fa-star"></i></li>
                                                <li><i class="fa fa-star"></i></li>
                                                <li><i class="fa fa-star"></i></li>
                                                <li><i class="fa fa-star"></i></li>
                                                <li><i class="fa fa-star"></i></li>
                                            </ul>
                                        </div>
                                        <div class="review-status">
                                            <a href="#">( 1 Review )</a>
                                        </div>
                                    </div>
                                    <div class="selector-wrap color-option">
                                        <span class="selector-title border-bottom-0">Color</span>
                                        <select class="nice-select wide border-bottom-0 rounded-0">
                                            <option value="default">Black & White</option>
                                            <option value="blue">Blue</option>
                                            <option value="green">Green</option>
                                            <option value="red">Red</option>
                                        </select>
                                    </div>
                                    <div class="selector-wrap size-option">
                                        <span class="selector-title">Size</span>
                                        <select class="nice-select wide rounded-0">
                                            <option value="medium">Medium Size & Poot</option>
                                            <option value="large">Large Size With Poot</option>
                                            <option value="small">Small Size With Poot</option>
                                        </select>
                                    </div>
                                    <p class="short-desc">Lorem ipsum dolor sit amet, consectetur adipisic elit, sed do eiusmod
                                        tempo incid ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostru
                                        exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure
                                        dolor
                                        in reprehenderit in voluptate</p>
                                    <ul class="quantity-with-btn">
                                        <li class="quantity">
                                            <div class="cart-plus-minus">
                                                <input class="cart-plus-minus-box" value="1" type="text">
                                            </div>
                                        </li>
                                        <li class="add-to-cart">
                                            <a class="btn btn-custom-size lg-size btn-pronia-primary" href="cart.html">Add to
                                                cart</a>
                                        </li>
                                        <li class="wishlist-btn-wrap">
                                            <a class="custom-circle-btn" href="wishlist.html">
                                                <i class="pe-7s-like"></i>
                                            </a>
                                        </li>
                                        <li class="compare-btn-wrap">
                                            <a class="custom-circle-btn" href="compare.html">
                                                <i class="pe-7s-refresh-2"></i>
                                            </a>
                                        </li>
                                    </ul>
                                    <ul class="service-item-wrap pb-0">
                                        <li class="service-item">
                                            <div class="service-img">
                                                <img src="${ pageContext.request.contextPath }/resources/assets/images/shipping/icon/car.png" alt="Shipping Icon">
                                            </div>
                                            <div class="service-content">
                                                <span class="title">Free <br> Shipping</span>
                                            </div>
                                        </li>
                                        <li class="service-item">
                                            <div class="service-img">
                                                <img src="${ pageContext.request.contextPath }/resources/assets/images/shipping/icon/card.png" alt="Shipping Icon">
                                            </div>
                                            <div class="service-content">
                                                <span class="title">Safe <br> Payment</span>
                                            </div>
                                        </li>
                                        <li class="service-item">
                                            <div class="service-img">
                                                <img src="${ pageContext.request.contextPath }/resources/assets/images/shipping/icon/service.png" alt="Shipping Icon">
                                            </div>
                                            <div class="service-content">
                                                <span class="title">Safe <br> Payment</span>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal Area End Here -->

        <!-- Begin Scroll To Top -->
        <a class="scroll-to-top" href="">
            <i class="fa fa-angle-double-up"></i>
        </a>
        <!-- Scroll To Top End Here -->

    </div>

    <!-- Global Vendor, plugins JS -->

    <!-- JS Files
    ============================================ -->

    <script src="${ pageContext.request.contextPath }/resources/assets/js/vendor/bootstrap.bundle.min.js"></script>
    <script src="${ pageContext.request.contextPath }/resources/assets/js/vendor/jquery-3.6.0.min.js"></script>
    <script src="${ pageContext.request.contextPath }/resources/assets/js/vendor/jquery-migrate-3.3.2.min.js"></script>
    <script src="${ pageContext.request.contextPath }/resources/assets/js/vendor/jquery.waypoints.js"></script>
    <script src="${ pageContext.request.contextPath }/resources/assets/js/vendor/modernizr-3.11.2.min.js"></script>
    <script src="${ pageContext.request.contextPath }/resources/assets/js/plugins/wow.min.js"></script>
    <script src="${ pageContext.request.contextPath }/resources/assets/js/plugins/swiper-bundle.min.js"></script>
    <script src="${ pageContext.request.contextPath }/resources/assets/js/plugins/jquery.nice-select.js"></script>
    <script src="${ pageContext.request.contextPath }/resources/assets/js/plugins/parallax.min.js"></script>
    <script src="${ pageContext.request.contextPath }/resources/assets/js/plugins/jquery.magnific-popup.min.js"></script>
    <script src="${ pageContext.request.contextPath }/resources/assets/js/plugins/tippy.min.js"></script>
    <script src="${ pageContext.request.contextPath }/resources/assets/js/plugins/ion.rangeSlider.min.js"></script>
    <script src="${ pageContext.request.contextPath }/resources/assets/js/plugins/mailchimp-ajax.js"></script>
    <script src="${ pageContext.request.contextPath }/resources/assets/js/plugins/jquery.counterup.js"></script>

    <!--Main JS (Common Activation Codes)-->
    <script src="${ pageContext.request.contextPath }/resources/assets/js/main.js"></script>
    <script src="${ pageContext.request.contextPath }/resources/assets/js/board/board.js"></script>
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</body>
</html>