<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%String pjName = "/flower"; %>
    
<!DOCTYPE html>
<html lang="zxx">

<head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Pronia - Checkout</title>
    <meta name="robots" content="index, follow" />
    <meta name="description" content="Pronia plant store bootstrap 5 template is an awesome website template for any home plant shop.">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="/flower/resources/assets/images/favicon.ico" />

    <!-- CSS
    ============================================ -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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
    
     <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
     <script src="https://cdn.iamport.kr/v1/iamport.js"></script>

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
                                <h2 class="breadcrumb-heading">Checkout Page</h2>
                                <ul>
                                    <li>
                                        <a href="index.html">Home</a>
                                    </li>
                                    <li>Checkout</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="checkout-area section-space-y-axis-100">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 col-12">
                            <form action="javascript:void(0)">
                                <div class="checkbox-form">
                                	<h3>주문 상품 정보</h3>
                                	<div class = 'cart_list'>
                                	<ul class = 'cart_contents'>
                                	<c:forEach items = '${cartList}' var = 'product'>
                                		<li class = cart_goods>
                                			<div class = 'block block1'>
                                				<ul>
                                					<li class = 'img_area'>
                                						<a href = '#'>
                                							<img  class = 'goods_thumb' src = '/flower/resources/product/imgs/list/${product.product_image_file_name}' class = 'goods_thumb'>
                                						</a>
                                					</li>
                                					<li class = 'option_area'>
                                						<div class = 'goods_name'>
                                							<a href = '#'>${product.product_name}</a>
                                						</div>
                                						<div>
                                							<span>
                                								수량
                                							</span>
                                							${product.shopping_cart_product_quantity} 개
                                							<span>
                                								${product.shopping_cart_product_quantity * product.product_price}
                                							</span>
                                							원
                                						</div>
                                					</li>
                                				</ul>
                                			</div>
                                		</li>
                                	</c:forEach>
                                	</ul>
                                	</div>
                                    <h3>주문자</h3>
                                    <ul class = 'orderer'>
                                      	<li>
                                      	 	<ul class = 'list_02'>
                                      	 		<li>
                                      	 			<span class = 'label'><span>주문자명</span></span>
                                      	 			<input type = 'text' style = 'width : 170px;' placeholder = '주문자 이름' required>
                                      	 		</li>
                                      	 		<li>
                                      	 			<span class = 'label'><span>휴대폰번호</span></span>
                                      	 			<input type = 'text' style = 'width : 170px;' placeholder = '-포함' required>
                                      	 		</li>
                                      	 		<li>
                                      	 			<span class = 'label'><span>이메일</span></span>
                                      	 			${member.member_email}
                                      	 		</li>
                                      	 	</ul>
                                      	</li>
                                    </ul>
                                    <h3>배송지</h3>
                                     <c:forEach items = '${addressList}' var = 'address'>
                                    <c:if test = '${address.default_delivery_address eq 1}'>
                                    <ul id = 'defaultaddress'>
                                    </c:if>
                                     <c:if test = '${address.default_delivery_address ne 1}'>
                                    <ul id = 'defaultaddress' style = "display : none;">
                                    </c:if>
                                      	<li>
                                      	 	<ul class = 'list_02'>
                                      	 		<li>
                                      	 			<span class = 'label'><span>이름</span></span>
                                      	 			<label>${address.recipient_name}</label>
                                      	 			<button type = 'button' class = 'btn_resp chooseaddress'>다른배송지 선택</button>
                                      	 			<button type = 'button' class = 'btn_resp modifyaddress'>수정</button>
                                      	 		</li>
                                      	 		<li>
                                      	 			<span class = 'label'><span>주소</span></span>
                                      	 			<label><span>(${address.postal_code})</span> <span>${address.recipient_address}</span> <span>${address.recipient_detailaddress}</span></label>
                                      	 		</li>
                                      	 		<li>
                                      	 			<span class = 'label'><span>휴대폰번호</span></span>
                                      	 			<label>${address.recipient_tel}</label>
                                      	 		</li>
                                      	 	</ul>
                                      	</li>
                                    </ul>
                                    </c:forEach>
                                    <c:forEach items = '${addressList}' var = 'address' end = '0'>
                                   	 <c:if test = '${address.default_delivery_address ne 1}'>
                                    	<ul class = 'nav nav-tabs' role = 'tablist' id = 'myaddressTab'>
                                  	  </c:if>
                                  	  <c:if test = '${address.default_delivery_address eq 1}'>
                                    	<ul class = 'nav nav-tabs' role = 'tablist' id = 'myaddressTab' style = "display : none;">
                                  	  </c:if>
                                    </c:forEach>
                                  	  <li>
                                   		<button id = 'selectaddress-tab' type = 'button' class = 'btn btn-primary nav-link ' data-bs-toggle="tab" data-bs-target="#selectaddress"  role="tab" aria-controls="selectaddress" aria-selected="false">주소 선택하기</button>
                                   	 </li>
                                   	 <li>
                                   	 	<button id = 'newaddress-tab' type = 'button' class = 'btn btn-secondary nav-link active' data-bs-toggle="tab" data-bs-target="#newaddress" role="tab" aria-controls="newaddress" aria-selected="ture">신규/수정</button>
                                   	 </li>
                                    </ul>
                                     <c:forEach items = '${addressList}' var = 'address' end = '0'>
                                   	 <c:if test = '${address.default_delivery_address ne 1}'>
                                    	<div class = "tab-content" id = 'myaddressTabContent'>
                                  	  </c:if>
                                  	  <c:if test = '${address.default_delivery_address eq 1}'>
                                    	<div class = "tab-content" id = 'myaddressTabContent' style = "display : none;">
                                  	  </c:if>
                                    </c:forEach>
                                   		<div class="row tab-pane fade" id = 'selectaddress' role = 'tabpanel' aria-labelledby ='selectaddress-tab'>
                                      	 	<c:forEach items = '${addressList}' var = 'address'>
                                      	 	<ul class = 'ul_delivery real'>
                                      	 		<li>
                                      	 			<ul class = 'list'>
                                      	 				<li>
                                      	 					<span class = 'label'>이름</span>
                                      	 					<label>${address.recipient_name}</label>
                                      	 				</li>
                                      	 				<li>
                                      	 					<span class = 'label'>주소</span>
                                      	 					<label><span>(${address.postal_code})</span> <span>${address.recipient_address}</span> <span>${address.recipient_detailaddress}</span></label>
                                      	 				</li>
                                      	 				<li>
                                      	 					<span class = 'label'>휴대폰번호</span>
                                      	 					<label>${address.recipient_tel}</label>
                                      	 				</li>
                                      	 			</ul>
                                      	 		</li>
                                      	 	</ul>
                                      	 	</c:forEach>
                                    	</div>
                                    	<div class="row tab-pane fade  show active" id = 'newaddress' role = 'tabpanel' aria-labelledby ='newaddress-tab'>
                                      	 	<ul class = 'list_01'>
                                      	 		<li>
                                      	 			<span class = 'label'>
                                      	 				<span>받는분</span>
                                      	 			</span>
                                      	 			<input type= 'text' style='width:113px;' id = 'modifyname' required placeholder = '받는분'>
                                      	 		</li>
                                      	 		<li class = 'addressli' style = 'display: list-item;'>
                                      	 			<span class = 'label'>
                                      	 				<span>주소</span>
                                      	 			</span>
                                      	 			<input type= 'text' style='width:113px;' required placeholder = '우편번호' id = 'modifypostcode'>
                                      	 			<button type = 'button' id = 'searchaddress'>검색</button>
                                      	 			<input type= 'text' style = 'width : 100%;' required placeholder = '주소' id = 'modifyaddress'>
                                      	 			<input type= 'text' style = 'width : 100%;' required placeholder = '상세주소' id = 'modifydetailaddress'>
                                      	 		</li>
                                      	 		<li>
                                      	 			<span class = 'label'>
                                      	 				<span>휴대폰번호</span>
                                      	 			</span>
                                      	 			<input type= 'text' required placeholder = '휴대폰번호' id = 'modifytel'>
                                      	 		</li>
                                      	 		<li>
                                      	 			<span class = 'label'>
                                      	 				<span>배송저장</span>
                                      	 			</span>
                                      	 			<div>
                                      	 				<label>
                                      	 					<input type = 'checkbox' value = '1' id = 'modifydefault'>
                                      	 					<span>배송주소록에 저장</span>
                                      	 				</label>
                                      	 			</div>
                                      	 		</li>
                                      	 	</ul>
                                    	</div>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="col-lg-6 col-12">
                            <div class="your-order">
                                <h3>주문 내역</h3>
                                <div class="your-order-table table-responsive">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th class="cart-product-name">상품이름</th>
                                                <th class="cart-product-total">금액</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        	<c:forEach items = '${cartList}' var = 'product'>
                                            <tr class="cart_item">
                                                <td class="cart-product-name">${product.product_name}<strong
                                                class="product-quantity">
                                                x ${product.shopping_cart_product_quantity}</strong></td>
                                                <td class="cart-product-total"><span class="amount">${product.shopping_cart_product_quantity * product.product_price}원</span></td>
                                            </tr>
                                            </c:forEach>
                                        </tbody>
                                        <tfoot>
                                            <tr class="order-total">
                                                <th>Order Total</th>
                                                <td><strong><span class="amount">${product.total_cart}원</span></strong></td>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>
                                <div class="payment-method">
                                    <div class="payment-accordion">
                                        <div id="accordion">
                                            <div class="card">
                                                <div class="card-header" id="#payment-1">
                                                    <h5 class="panel-title">
                                                        <a href="#" class="" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true">
                                                            Direct Bank Transfer.
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseOne" class="collapse show" data-bs-parent="#accordion">
                                                    <div class="card-body">
                                                        <p>Make your payment directly into our bank account. Please use your
                                                            Order
                                                            ID as the payment
                                                            reference. Your order won’t be shipped until the funds have cleared
                                                            in
                                                            our account.</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card">
                                                <div class="card-header" id="#payment-2">
                                                    <h5 class="panel-title">
                                                        <a href="#" class="collapsed" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false">
                                                            Cheque Payment
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseTwo" class="collapse" data-bs-parent="#accordion">
                                                    <div class="card-body">
                                                        <p>Make your payment directly into our bank account. Please use your
                                                            Order
                                                            ID as the payment
                                                            reference. Your order won’t be shipped until the funds have cleared
                                                            in
                                                            our account.</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card">
                                                <div class="card-header" id="#payment-3">
                                                    <h5 class="panel-title">
                                                        <a href="#" class="collapsed" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false">
                                                            PayPal
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseThree" class="collapse" data-bs-parent="#accordion">
                                                    <div class="card-body">
                                                        <p>Make your payment directly into our bank account. Please use your
                                                            Order
                                                            ID as the payment
                                                            reference. Your order won’t be shipped until the funds have cleared
                                                            in
                                                            our account.</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="order-button-payment">
                                            <input value="Place order" type="button" id = 'payment'>
                                        </div>
                                    </div>
                                </div>
                            </div>
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

    </div>
    
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script src="/flower/resources/assets/js/order/order.js"></script>
    
    <%@include file="/flower_footer.jsp" %>