<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- SPRING FORM -->
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product</title>
    <jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
     <jsp:include page="/WEB-INF/views/customer/layout/css.jsp"></jsp:include>
    <link rel="stylesheet" href="${base }/css/product.css">
     
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
        integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://cdn.jsdelivr.net/npm/remixicon@3.0.0/fonts/remixicon.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick-theme.min.css">
    <link rel="shortcut icon" href="./img/332379655_1157314508302318_813345541211386328_n.jpg" type="image/x-icon">
</head>

<body>
<jsp:include page="/WEB-INF/views/customer/layout/header.jsp"></jsp:include>
<div class="container">
	
</div>
    <!-- product -->
    <div class="container">
        
        <div class="product">
            <div class="image-product">
                <a href="">
                    <img src="${base }/img/product.png" alt="">
                </a>
            </div>
            <div class="content-product">
                <div class="title-product">
                    Beach Resort Phan Thiết Khuyến Mãi Mùa Đông
                </div>
                <div class="price-product">
                    2,999,000 ₫
                </div>
                <div class="review-product">
                    <span>Đặt phòng khách sạn Victoria Phan Thiet Beach Resort</span> – Victoria Phan Thiết Beach Resort
                    & Spa gồm 57
                    bungalows được thiết kế theo phong cách những ngôi nhà mái tranh mộc mạc ở miền quê ẩn mình trong
                    khu vườn nhiệt đới quyến rũ.
                </div>
                <div class="btn-product">
                    <a href="">Đặt ngay</a>
                </div>
                <div class="category-product">
                    Danh mục: <span><a href="">Khách sạn</a></span>
                </div>
                <div class="link-product">
                    <div class="box-icon-link-product">
                        <div class="icon-link-product">
                            <a href="">
                                <i class="ri-facebook-circle-line"></i>
                            </a>
                        </div>
                        <div class="icon-link-product">
                            <a href="">
                                <i class="ri-twitter-line"></i>
                            </a>
                        </div>
                        <div class="icon-link-product">
                            <a href="">
                                <i class="ri-mail-line"></i>
                            </a>
                        </div>
                        <div class="icon-link-product">
                            <a href="">
                                <i class="ri-pinterest-line"></i>
                            </a>
                        </div>
                        <div class="icon-link-product icon-link-product-fix">
                            <a href="" class="icon-link-product-fix">
                                <i class="fa fa-google-plus"></i>
                            </a>
                        </div>
                        <div class="icon-link-product icon-link-product-fix-last">
                            <a href="" class="icon-link-product-fix">
                                <i class="fa-brands fa-linkedin"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
      
    </div>


    <!-- notable -->
    <div class="container">
        <!-- Tab links -->
        <div class="tabs-product">
            <button class="tablinks-product active" data-electronic="allproducts">Mô tả</button>
            <button class="tablinks-product tablinks-center" data-electronic="Microcontrollers">Thông tin bổ
                sung</button>
            <button class="tablinks-product tablinks-last" data-electronic="module">Đánh giá</button>
        </div>

        <!-- Tab content -->
        <div class="wrapper_tabcontent-product">
            <div id="allproducts" class="tabcontent-product active">
                <div class="describe">
                    <span>Đặt phòng khách sạn Victoria Phan Thiet Beach Resort –</span> Victoria Phan Thiết Beach Resort
                    & Spa gồm 57
                    bungalows được thiết kế theo phong cách những ngôi nhà mái tranh mộc mạc ở miền quê ẩn mình trong
                    khu vườn nhiệt đới quyến rũ.
                </div>
            </div>

            <div id="Microcontrollers" class="tabcontent-product">

                <div class="df-tabcontent-product">
                    <div class="information">
                        loại giường
                    </div>
                    <div class="details">
                        <a href="">Giường đơn</a>
                    </div>
                </div>
            </div>

            <jsp:include page="/WEB-INF/views/customer/layout/review.jsp"></jsp:include>
        </div>
    </div>

    <!-- similar product -->
    <div class="container">
        <div class="similar">
            <div class="title-similar">
                Sản phẩm tương tự
            </div>
            <div class="box-similar">
                <div class="item-similar">
                    <div class="image-similar">
                        <a href=""><img src="${base }/img/similar.png" alt=""></a>
                    </div>
                    <div class="content-similar">
                        <div class="header-similar">
                            Khách sạn
                        </div>
                        <div class="comment-similar">
                            <a href="">Đặt Phòng Khách Sạn Victoria Sapa Resort</a>
                        </div>
                        <div class="price-similar">
                            7,399,000 ₫
                        </div>
                    </div>
                </div>
                <div class="item-similar">
                    <div class="image-similar">
                        <a href=""><img src="${base }/img/similar.png" alt=""></a>
                    </div>
                    <div class="content-similar">
                        <div class="header-similar">
                            Khách sạn
                        </div>
                        <div class="comment-similar">
                            <a href="">Đặt Phòng Khách Sạn Victoria Sapa Resort</a>
                        </div>
                        <div class="price-similar">
                            7,399,000 ₫
                        </div>
                    </div>
                </div>
                <div class="item-similar">
                    <div class="image-similar">
                        <a href=""><img src="${base }/img/similar.png" alt=""></a>
                    </div>
                    <div class="content-similar">
                        <div class="header-similar">
                            Khách sạn
                        </div>
                        <div class="comment-similar">
                            <a href="">Đặt Phòng Khách Sạn Victoria Sapa Resort</a>
                        </div>
                        <div class="price-similar">
                            7,399,000 ₫
                        </div>
                    </div>
                </div>
                <div class="item-similar">
                    <div class="image-similar">
                        <a href=""><img src="${base }/img/similar.png" alt=""></a>
                    </div>
                    <div class="content-similar">
                        <div class="header-similar">
                            Khách sạn
                        </div>
                        <div class="comment-similar">
                            <a href="">Đặt Phòng Khách Sạn Victoria Sapa Resort</a>
                        </div>
                        <div class="price-similar">
                            7,399,000 ₫
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <script type="text/javascript" src="./js/product.js"></script>
    <jsp:include page="/WEB-INF/views/customer/layout/js.jsp"></jsp:include>
    <jsp:include page="/WEB-INF/views/customer/layout/footer.jsp"></jsp:include>
</body>

</html>