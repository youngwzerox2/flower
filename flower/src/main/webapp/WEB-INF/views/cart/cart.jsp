<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% String pjName = "/flower"; %>
<% String resource = "/resources/product/imgs/list/"; %>

<!DOCTYPE html>
<html lang="ko">

<head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Pronia - Cart</title>
    <meta name="robots" content="index, follow" />
    <meta name="description" content="Pronia plant store bootstrap 5 template is an awesome website template for any home plant shop.">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="<%=pjName %>/resources/assets/images/favicon.ico" />

    <!-- CSS
    ============================================ -->

    <link rel="stylesheet" href="<%=pjName %>/resources/assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="<%=pjName %>/resources/assets/css/font-awesome.min.css" />
    <link rel="stylesheet" href="<%=pjName %>/resources/assets/css/Pe-icon-7-stroke.css" />
    <link rel="stylesheet" href="<%=pjName %>/resources/assets/css/animate.min.css">
    <link rel="stylesheet" href="<%=pjName %>/resources/assets/css/swiper-bundle.min.css">
    <link rel="stylesheet" href="<%=pjName %>/resources/assets/css/nice-select.css">
    <link rel="stylesheet" href="<%=pjName %>/resources/assets/css/magnific-popup.min.css" />
    <link rel="stylesheet" href="<%=pjName %>/resources/assets/css/ion.rangeSlider.min.css" />

    <!-- Style CSS -->
    <link rel="stylesheet" href="<%=pjName %>/resources/assets/css/style.css">

</head>

<body>
    
    <div class="main-wrapper">
	<%@ include file="../../../flower_header.jsp" %>

        <!-- Begin Main Content Area -->
        <main class="main-content">
            <div class="breadcrumb-area breadcrumb-height" data-bg-image="<%=pjName %>/resources/assets/images/breadcrumb/bg/1-1-1919x388.jpg">
                <div class="container h-100">
                    <div class="row h-100">
                        <div class="col-lg-12">
                            <div class="breadcrumb-item">
                                <h2 class="breadcrumb-heading">장바구니</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="cart-area section-space-y-axis-100">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                        	<!-- flower: 결제하기 연결 -->
                            <form action="">
                                <div class="row">
                					<div class="col-12">
                						<div class="coupon-all">
                							<div class="coupon">
                								<input class="button mt-xxs-30" id="selectAll" name="selectAll" value="selectAll" type="button">
                                			</div>
                                			<div class="coupon2">
                                				<input class="button" id="updateCart" name="update_cart" value="Update cart" type="button">
                                			</div>
                            			</div>
                        			</div>
                    			</div> <!-- <div class="row"> end -->
                                <div class="table-content table-responsive">
                                	<!-- flower: c:if, c:foreach -->
                                	<c:if test="${not empty cartList}">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th class="product_remove">선택하기</th>
                                                <th class="product-thumbnail">상품사진</th>
                                                <th class="cart-product-name">상품명</th>
                                                <th class="product-price">상품가격[A]</th>
                                                <th class="product-quantity">상품수량[B]</th>
                                                <th class="product-subtotal">상품총액[A×B]</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                          <c:forEach items="${cartList}" var="cart">                                        
                                            <tr>
                                                <td class="product_selSubSet">
                                                	<input type="checkbox" id="product_subset" name="product_subset">
                                                	
                                                </td>
                                                <td class="product-thumbnail">
                                                    <a href="">
                                                        <img src="<%=pjName %><%=resource%>${cart.product_image_file_name}" alt="${cart.product_name}">
                                                    </a>
                                                </td>
                                                <td class="product-name">
                                                	<a href="">${cart.product_name}</a>
                                                    <a id="remove_item">
                                                        <i class="pe-7s-close" data-tippy="Remove" data-tippy-inertia="true"
                                                    data-tippy-animation="shift-away" data-tippy-delay="50"
                                                    data-tippy-arrow="true" data-tippy-theme="sharpborder"></i>
                                                    </a>
                                                     
                                                </td>
                                                <td class="product-price"><span class="amount">${cart.product_price}</span></td>
                                                <td class="quantity">
                                                    <div class="cart-plus-minus">
                                                        <input class="cart-plus-minus-box" value="${cart.shopping_cart_product_quantity}" type="text">
                                                        <div class="dec qtybutton">
                                                            <i class="fa fa-minus"></i>
                                                        </div>
                                                        <div class="inc qtybutton">
                                                            <i class="fa fa-plus"></i>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="product-subtotal"><span class="amount">${cart.product_price * cart.shopping_cart_product_quantity}</span></td>
                                            </tr>
                                          </c:forEach>  
                                        </tbody>
                                    </table>
                                    </c:if>
                                    <c:if test="${empty cartList}">
                                    	<h1>장바구니에 담으신 상품이 없습니다.</h1>
                                    </c:if>
                                </div> <!-- <div class="table-content table-responsive"> end -->

                                
                                <div class="row">
                                	<!-- col-md-5 ml-auto -->
                                    <div class="col-12">
                                        <div class="cart-total">
                                        	<div class="cart-total left">
                                        		<h1>Cart totals</h1>
                                        	</div>
                                            <div class="cart-total right">
                                            	<table>
                                                	<tr>
                                                		<td><span>선택 항목 합계</span></td>
                                                		<td><span id="sum_subset"></span></td>
                                                		<td><a href=""><input class="button" type="button" name="" id="" value="선택 항목 결제하기"></a></td>
                                                	</tr>
                                                	<tr>
                                                		<td><span>전체 항목 합계</span></td>
                                                		<td>${cartTotal}</td>
                                                		<td><a href="/flower/order/orderInfo"><input class="button" type="button" name="" id="" value="전체 항목 결제하기"></a></td>
                                            	</table>
                                            </div><!-- <div class="cart-total right"> end -->
                                        </div> <!--  <div class="cart-page-total"> end -->
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <!-- Main Content Area End Here -->


        <!-- Begin Scroll To Top -->
        <a class="scroll-to-top" href="">
            <i class="fa fa-angle-double-up"></i>
        </a>
        <!-- Scroll To Top End Here -->

    </div> <!-- <div class="main-wrapper"> end -->

	<%@include file="../../../flower_footer.jsp" %>