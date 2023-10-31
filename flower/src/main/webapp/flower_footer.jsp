<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />


        <!-- Begin Footer Area -->
        <div class="footer-area" data-bg-image="<%=pjName %>/resources/assets/images/footer/bg/1-1920x465.jpg">
            <div class="footer-top section-space-top-100 pb-60">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3">
                            <div class="footer-widget-item">
                                <div class="footer-widget-logo">
                                    <a href="index.html">
                                        <img src="<%=pjName %>/resources/assets/images/logo/dark.png" alt="Logo">
                                    </a>
									<!-- flower: 관리자 로그인버튼(추후 위치 이동 요망. h3 옆으로?) -->
									<a href="">
										<img src="<%=pjName %>/resources/assets/images/logo/tulips.png" alt="admin">
									</a>
                                </div>
                                <p class="footer-widget-desc">통신판매업자 필수정보 표기
								<br />
                                </p>
								
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-4 pt-40">
                            <div class="footer-widget-item">
                                <h3 class="footer-widget-title"><a href="">개인정보처리방침</a></h3>
                                
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-4 pt-40">
                            <div class="footer-widget-item">
                                <h3 class="footer-widget-title"><a href="">서비스이용약관</a></h3>
								
                            </div>
                        </div>
						<!-- footer: 고객센터 → 추후 로고 이미지 이동 요망-->
                        <!--
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
                                    <img src="assets/images/payment/1.png" alt="Payment Method">
                                </a>
                            </div>
                        </div>
						-->
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

    <!-- Global Vendor, plugins JS -->

    <!-- JS Files
    ============================================ -->

    <script src="<%=pjName %>/resources/assets/js/vendor/bootstrap.bundle.min.js"></script>
    <script src="<%=pjName %>/resources/assets/js/vendor/jquery-3.6.0.min.js"></script>
    <script src="<%=pjName %>/resources/assets/js/vendor/jquery-migrate-3.3.2.min.js"></script>
    <script src="<%=pjName %>/resources/assets/js/vendor/jquery.waypoints.js"></script>
    <script src="<%=pjName %>/resources/assets/js/vendor/modernizr-3.11.2.min.js"></script>
    <script src="<%=pjName %>/resources/assets/js/plugins/wow.min.js"></script>
    <script src="<%=pjName %>/resources/assets/js/plugins/swiper-bundle.min.js"></script>
    <script src="<%=pjName %>/resources/assets/js/plugins/jquery.nice-select.js"></script>
    <script src="<%=pjName %>/resources/assets/js/plugins/parallax.min.js"></script>
    <script src="<%=pjName %>/resources/assets/js/plugins/jquery.magnific-popup.min.js"></script>
    <script src="<%=pjName %>/resources/assets/js/plugins/tippy.min.js"></script>
    <script src="<%=pjName %>/resources/assets/js/plugins/ion.rangeSlider.min.js"></script>
    <script src="<%=pjName %>/resources/assets/js/plugins/mailchimp-ajax.js"></script>
    <script src="<%=pjName %>/resources/assets/js/plugins/jquery.counterup.js"></script>

    <!--Main JS (Common Activation Codes)-->
    <script src="<%=pjName %>/resources/assets/js/main.js"></script>

</body>

</html>