    <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- SPRING FORM -->
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    
    <!-- header -->
    <div class="container">
        <div class="header">
            <a href="${base }/home" class="logo"><i class="ri-home-heart-fill"></i><span>Tour</span>
            </a>
            <ul class="navbar">
                <li><a href="${base }/home" class="action">Trang chủ</a></li>
                <li><a href="${base }/mona">Giới thiệu</a></li>
                <li><a href="${base }/category-product">Du lịch trong nước</a></li>
                <li><a href="${base }/category-product">Du lich ngoài nước</a></li>
                <li><a href="${base }/category-product">Khách sạn</a></li>
                <li><a href="${base }/news">Tin tức</a></li>
                <li><a href="${base }/contact">Liên hệ</a></li>
            </ul>
            <div class="main">
               <c:choose>
         
         <c:when test="${isLogined }">
         <a href="${base }/logout">Đăng xuất</a>
           
         </c:when>
         <c:otherwise>
             <a href="${base }/login">Đăng nhập</a>
         </c:otherwise>
      </c:choose>
                
                
            </div>
            <div>
				  <a href="${base }/cart/checkout">
				  	<i class="ri-shopping-cart-line"></i>
				  	<span style="color:#fff" id="soluongsanphamtronggiohang">
				  		${TongSoLuongSanPhamTrongGioHang }
				  	</span>
				  </a>
			
            </div>
        </div>
    </div>