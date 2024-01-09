    <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- SPRING FORM -->
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    <!-- footer -->
    <footer>
        <div class="container">
            <div class="title-footer">
                D<span>un</span>g 0<span>1</span>0<span>4</span>
            </div>
            <div class="list-footer">
                <div class="item-list-footer">
                    <div class="title-footer-contact">Liên hệ</div>
                    <div class="ul-footer">
                        <div class="content-ul-footer">
                            <i class="ri-map-pin-fill"></i>
                            <span>319 c16 Lý Thường Kiệt, Q.11, HCM</span>
                        </div>
                        <div class="content-ul-footer">
                            <i class="ri-phone-fill"></i>
                            <span>0126 922 0162</span>
                        </div>
                        <div class="content-ul-footer">
                            <i class="ri-mail-fill"></i>
                            <span>demonhunter@gmail.com</span>
                        </div>
                        <div class="content-ul-footer">
                            <span>Đăng ký để được nhận thông tin khuyến mãi một cách nhanh chóng.</span>
                        </div>
                    </div>
                </div>
                <div class="item-list-footer item-list-footer-fix">
                    <div class="title-footer-contact">
                        Tin Tức
                    </div>
                    <div class="ul-footer">
                        <ul>
                            <li><a href="">Bản tin Du Lịch Việt</a></li>
                            <li><a href="">Góc báo chí Du Lịch Việt</a></li>
                            <li><a href="">Cẩm nang du lịch</a></li>
                            <li><a href="">Khám phá du lịch</a></li>
                            <li><a href="">Kinh nghiệm du lịch</a></li>
                            <li><a href="">Sự kiện du lịch</a></li>
                            <li><a href="">Tư vấn du lịch</a></li>
                            <li><a href="">Tuyển dụng Du Lịch</a></li>
                        </ul>
                    </div>
                </div>
                <div class="item-list-footer item-list-footer-fix">
                    <div class="title-footer-contact">
                        Góc Khách Hàng
                    </div>
                    <div class="ul-footer">
                        <ul>
                            <li><a href="">Quy tắc bảo hiểm</a></li>
                            <li><a href="">Điều kiện & điều khoản</a></li>
                            <li><a href="">Quyền riêng tư</a></li>
                            <li><a href="">Chính sách bảo mật và thông tin</a></li>
                            <li><a href="">Ý kiến khách hàng</a></li>
                            <li><a href="">Khách hàng thân thiết</a></li>
                            <li><a href="">Phương thức thanh toán</a></li>
                        </ul>
                    </div>
                </div>
                <div class="item-list-footer item-list-footer-fix">
                    <div class="title-footer-contact">
                        Tour Phổ Biến
                    </div>
                    <div class="ul-footer">
                    <c:forEach items="${product}" var="product" varStatus="loop">
                    <div class="ul-footer-image">
                            <div class="item-ul-footer">
                             <a href="${base }/product"><img
							src="${base }/upload/${product.avatar}" height="350px" alt=""></a>
                            </div>
                        </div>
                    </c:forEach>
                        
                    </div>
                    
                </div>
            </div>
            <div class="box-slider-sponsor">
                <div class="item-sponsor">
                    <div class="img-item-sponsor">
                        <a href=""><img src="./img/sponor.png" alt=""></a>
                    </div>
                </div>
                <div class="item-sponsor">
                    <div class="img-item-sponsor">
                        <a href=""><img src="./img/sponor.png" alt=""></a>
                    </div>
                </div>
                <div class="item-sponsor">
                    <div class="img-item-sponsor">
                        <a href=""><img src="./img/sponor.png" alt=""></a>
                    </div>
                </div>
                <div class="item-sponsor">
                    <div class="img-item-sponsor">
                        <a href=""><img src="./img/sponor.png" alt=""></a>
                    </div>
                </div>
                <div class="item-sponsor">
                    <div class="img-item-sponsor">
                        <a href=""><img src="./img/sponor.png" alt=""></a>
                    </div>
                </div>
                <div class="item-sponsor">
                    <div class="img-item-sponsor">
                        <a href=""><img src="./img/sponor.png" alt=""></a>
                    </div>
                </div>
                <div class="item-sponsor">
                    <div class="img-item-sponsor">
                        <a href=""><img src="./img/sponor.png" alt=""></a>
                    </div>
                </div>
                <div class="item-sponsor">
                    <div class="img-item-sponsor">
                        <a href=""><img src="./img/sponor.png" alt=""></a>
                    </div>
                </div>
            </div>
        </div>
    </footer>