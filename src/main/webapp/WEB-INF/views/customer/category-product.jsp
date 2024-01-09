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
<title>category-product</title>
<jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/customer/layout/css.jsp"></jsp:include>
<link rel="stylesheet" href="${base }/css/bootstrap.min.css">
<link rel="stylesheet" href="${base }/css/category-product.css">
<link
	href="https://cdn.jsdelivr.net/npm/remixicon@3.0.0/fonts/remixicon.css"
	rel="stylesheet">

</head>

<body>
	<jsp:include page="/WEB-INF/views/customer/layout/header.jsp"></jsp:include>
	<div class="container category">
		<div class="category-product">
			<div class="header-category-product">Danh mục sản phẩm</div>
			<div class="dropdown">
				<a class="ct-dropdown-first" href="">Du lịch nước ngoài</a>
				<ul class="dropdown-menu">
					<li class="dropdown"><a href="#">Du lịch châu Á <i
							class="ri-arrow-drop-down-line"></i></a>
						<ul class="dropdown-menu">
							<li><a href="#">Du lịch Hàn Quốc</a></li>
							<li class="dropdown"><a href="#">Du lịch Nhật Bản <i
									class="ri-arrow-drop-down-line"></i></a>
								<ul class="dropdown-menu">
									<li><a href="#">Item 1</a></li>
									<li><a href="#">Item 2</a></li>
									<li><a href="#">Item 3</a></li>
									<li><a href="#">Item 4</a></li>
								</ul></li>
						</ul></li>
					<li class="dropdown"><a href="#">Du lịch châu Âu <i
							class="ri-arrow-drop-down-line"></i></a>
						<ul class="dropdown-menu">
							<li><a href="#">Du lịch Anh</a></li>
							<li class="dropdown"><a href="#">Du lịch Nga <i
									class="ri-arrow-drop-down-line"></i></a>
								<ul class="dropdown-menu">
									<li><a href="#">Item 1</a></li>
									<li><a href="#">Item 2</a></li>
									<li><a href="#">Item 3</a></li>
									<li><a href="#">Item 4</a></li>
								</ul></li>
						</ul></li>
					<li class="dropdown"><a href="#">Du lịch châu Mỹ <i
							class="ri-arrow-drop-down-line"></i></a>
						<ul class="dropdown-menu">
							<li><a href="#">Du lịch Canada</a></li>
							<li class="dropdown"><a href="#">Du lịch Mỹ <i
									class="ri-arrow-drop-down-line"></i></a>
								<ul class="dropdown-menu">
									<li><a href="#">Item 1</a></li>
									<li><a href="#">Item 2</a></li>
									<li><a href="#">Item 3</a></li>
									<li><a href="#">Item 4</a></li>
								</ul></li>
						</ul></li>
					<li class="dropdown"><a href="#">Du lịch châu Úc <i
							class="ri-arrow-drop-down-line"></i></a>
						<ul class="dropdown-menu">
							<li><a href="#">Du lịch Úc</a></li>
							<li class="dropdown"><a href="#">Du lịch New Zealand <i
									class="ri-arrow-drop-down-line"></i></a>
								<ul class="dropdown-menu">
									<li><a href="#">Item 1</a></li>
									<li><a href="#">Item 2</a></li>
									<li><a href="#">Item 3</a></li>
									<li><a href="#">Item 4</a></li>
								</ul></li>
						</ul></li>
				</ul>
			</div>
			<div class="dropdown">
				<a class="ct-dropdown-last" href="">Du lịch trong nước</a>
				<ul class="dropdown-menu">
					<li class="dropdown"><a href="#">Du lịch miền Bắc <i
							class="ri-arrow-drop-down-line"></i></a>
						<ul class="dropdown-menu">
							<li><a href="#">Du lịch Hà Nội</a></li>
							<li class="dropdown"><a href="#">Du lịch Sa Pa <i
									class="ri-arrow-drop-down-line"></i></a>
								<ul class="dropdown-menu">
									<li><a href="#">Item 1</a></li>
									<li><a href="#">Item 2</a></li>
									<li><a href="#">Item 3</a></li>
									<li><a href="#">Item 4</a></li>
								</ul></li>
							<li class="dropdown"><a href="#">Du lịch Hạ Long</a></li>
						</ul></li>
					<li class="dropdown"><a href="#">Du lịch miền Trung <i
							class="ri-arrow-drop-down-line"></i>
					</a>
						<ul class="dropdown-menu">
							<li><a href="#">Du lịch Đà Nẵng</a></li>
							<li class="dropdown"><a href="#">Du lịch Phú Yên <i
									class="ri-arrow-drop-down-line"></i></a>
								<ul class="dropdown-menu">
									<li><a href="#">Item 1</a></li>
									<li><a href="#">Item 2</a></li>
									<li><a href="#">Item 3</a></li>
									<li><a href="#">Item 4</a></li>
								</ul></li>
						</ul></li>
					<li class="dropdown"><a href="#">Du lịch miền Nam <i
							class="ri-arrow-drop-down-line"></i></a>
						<ul class="dropdown-menu">
							<li><a href="#">Du lịch Côn Đảo</a></li>
							<li class="dropdown"><a href="#">Du lịch Phú Quốc <i
									class="ri-arrow-drop-down-line"></i></a>
								<ul class="dropdown-menu">
									<li><a href="#">Item 1</a></li>
									<li><a href="#">Item 2</a></li>
									<li><a href="#">Item 3</a></li>
									<li><a href="#">Item 4</a></li>
								</ul></li>
						</ul></li>

				</ul>
			</div>
			<div class="hotel-category">
				<a href="">Khách sạn</a>
			</div>
			<div class="filters">
				<div class="header-filters">Lọc theo giá</div>
				<div class="box-filters">
					<button>Lọc</button>
					<span class="name-price">Giá:</span> <span class="price">4,900,000
						đ -10,000,000 đ</span>
				</div>
			</div>
			<div class="bundled">
				<div class="header-bundled">Sản Phẩm</div>
				<div class="box-bundled">
				<c:forEach items="${product}" var="product" varStatus="loop">
					<div class="item-bundled">
						<div class="img-bundled">
							<a href="${base }/product"><img class="ctgr-1" src="${base }/upload/${product.avatar}" height="350px" alt=""></a>
						</div>
						<div class="content-bundled">
							<div class="name-bundled">
								<a href="">Đặt Phòng cho chuyến ${product.title }</a>
							</div>
							<div class="price-bundled"><!-- định dạng tiền tệ -->
								<fmt:setLocale value="vi_VN" scope="session" />
								<fmt:formatNumber value="${product.price }" type="currency" /></div>
						</div>
					</div>
				</c:forEach>
				</div>
			</div>
		</div>
		<div class="item-product">
			<div class="box-item">
				<c:forEach items="${product}" var="product" varStatus="loop">
					<div class="item">
						<div class="item-img">
							<a href="${base }/product"> 
							<img src="${base }/img/category.jpg" alt="">
							<img class="ctgr-1" src="${base }/upload/${product.avatar}" height="350px" alt="">
								
							</a>
						</div>
						<div class="item-content">
							<div class="header-item">${product.title }</div>
							<div class="comment-item">
								<a href="">${product.title } 2 ngày 1 đêm bay từ Sài Gòn</a>
							</div>
							<div class="price-item">
								<!-- định dạng tiền tệ -->
								<fmt:setLocale value="vi_VN" scope="session" />
								<fmt:formatNumber value="${product.price }" type="currency" />
							</div>
						</div>
					</div>
				</c:forEach>

				
			</div>
		</div>
	</div>
	<jsp:include page="/WEB-INF/views/customer/layout/footer.jsp"></jsp:include>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
	<script src="${base }/js/category-product.js"></script>
</body>

</html>