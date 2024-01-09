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
<title>Tour</title>
<link rel="shortcut icon"
	href="./img/332379655_1157314508302318_813345541211386328_n.jpg"
	type="image/x-icon">
<link
	href="https://cdn.jsdelivr.net/npm/remixicon@3.0.0/fonts/remixicon.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,500;0,600;1,400&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick-theme.min.css"
	integrity="sha512-17EgCFERpgZKcm0j0fEq1YCJuyAWdz9KUtv1EjVuaOz8pDnh/0nZxmU6BBXwaaxqoi9PQXnRWqlcDB027hgv9A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.css"
	integrity="sha512-yHknP1/AwR+yx26cB1y0cjvQUMvEa2PFzt1c9LlS4pRQ5NOTZFWbhBig+X9G9eYW/8m0/4OXNx8pxJ6z57x0dw=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/customer/layout/css.jsp"></jsp:include>

</head>

<body>
	<jsp:include page="/WEB-INF/views/customer/layout/header.jsp"></jsp:include>
	<!-- background image -->
	<nav class="url-img-background">
		<div class="container container-fluid">
			<div class="nav">
				<div class="title-background">
					<p class="title-first">Discover</p>
					<p class="title-last">THE WORLD YOU HAVE NEVER
						SEEN_______________</p>
					<div class="btn-click-me">
						<span class="title-click-me">click me!</span> <i
							class="ri-arrow-right-s-line"></i>
					</div>
				</div>
			</div>
		</div>
	</nav>
	<!-- search -->
	
	<!-- introduce -->
	<div class="container df-mona-travel">
		<div class="mona-travel">
			<div class="header-travel">
				LÀ CHÚNG TÔI <span><i class="ri-motorbike-fill"></i></span>
			</div>
			<div class="title-travel">mona travel</div>
			<div class="comment-travel">Consectetur adipisicing elit, sed
				do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
				eim ad minim veniam, quis nostrud exercitation ullamco laboris nisi
				ut aliquip ex commodo consequat uisas aute irure dolor ullamco
				laboris nisi in reprehenderit.</div>
			<div class="list-travel">
				<ul>
					<li>First Class Flights</li>
					<li>5 Star Accommodations</li>
					<li>Inclusive Packages</li>
					<li>Latest Model Vehicles</li>
				</ul>
				<ul>
					<li>Handpicked Hotels</li>
					<li>Accesibility managment</li>
					<li>10 Languages available</li>
					<li>+120 Premium city tours</li>
				</ul>
				<ul>
					<li>Accesibility managment</li>
					<li>+120 Premium city tours</li>
					<li>Handpicked Hotels</li>
					<li>10 Languages available</li>
				</ul>
			</div>
			<div class="btn-travel">
				<div class="mona">
					<a href="${base }/mona">mona travel</a>
				</div>
				<div class="contact">
					<a href="${base }/contact">contact us</a>
				</div>
			</div>
		</div>
		<div class="image-mona-travel">
			<img src="${base }/img/introduce.jpg" alt="">
		</div>
	</div>

	<!-- remarkable -->
	<div class="container remarkable">
		<div class="header-travel">
			ĐÁNG CHÚ Ý <span><i class="ri-motorbike-fill"></i></span>
		</div>
		<div class="title-travel">CHÙA TOUR ĐƯỢC MUA NHIỀU</div>

		<div class="box-slider">
			<c:forEach items="${product}" var="product" varStatus="loop">
				<div class="item">
					<div class="img-item">
						<a href="${base }/product"><img
							src="${base }/upload/${product.avatar}" height="350px" alt=""></a>
					</div>
					<div class="data-slider">
						<div class="title-slider">${product.title }</div>
						<div class="content-slider">
							<a href="${base }/product">Đặt phòng khách sạn Victorial Sapa
								Resort</a>
						</div>
						<div class="price-slider">
							<!-- định dạng tiền tệ -->
							<fmt:setLocale value="vi_VN" scope="session" />
							<fmt:formatNumber value="${product.price }" type="currency" />
						</div>
						<div>
							<a
								style="text-decoration: none; padding: 10px; background: #b9aeae; margin-left: 15px; border-radius: 15px; color: #fff;"
								href="" onclick="AddToCart('${base}',${product.id },1)">Đặt
								ngay</a>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>

		
	</div>
	<!-- video -->
	<div class="box-bgr">
		<div class="container df-bgr-image">
			<div class="content-bgr-image">
				<div class="header-travel header-travel-fix">
					Là chúng tôi <span><i class="ri-motorbike-fill"></i></span>
				</div>
				<div class="title-travel">mona travel</div>
				<div class="comment-travel">Consectetur adipisicing elit, sed
					do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
					eim ad minim veniam, quis nostrud exercitation ullamco laboris nisi
					ut aliquip ex commodo consequat uisas aute irure dolor ullamco
					laboris nisi in reprehenderit.</div>
				<div class="btn-travel">
					<div class="mona">
						<a href="">mona travel</a>
					</div>
				</div>
			</div>
			<div class="video-bgr-image">
				<iframe width="560" height="315"
					src="https://www.youtube.com/embed/Au6LqK1UH8g"
					title="YouTube video player" frameborder="0"
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
					allowfullscreen></iframe>
			</div>
		</div>
	</div>
	<!-- tour in country -->
	<div class="container tour-country">
		<div class="tour-in-country">
			<div class="header-travel">
				NÀO HÃY CHỌN <span><i class="ri-motorbike-fill"></i></span>
			</div>
			<div class="title-travel">TOUR TRONG NƯỚC</div>

			<div class="box-conntry">
				<c:forEach items="${product}" var="product" varStatus="loop">
					<div class="item-country">
						<div class="image-country">
							<a href=""> <img src="${base }/upload/${product.avatar}"
								alt="" style="width: 324px; height: 245px;">
							</a>
						</div>
						<div class="content-country">
							<div class="title-country">${product.title }</div>
							<div class="comment-country">
								<a href="">Tour Miền Bắc – Hà Nội – Hạ Long – Sapa –
									Fansipan giá tiết kiệm 2018</a>
							</div>
							<div class="price-country">
								<fmt:setLocale value="vi_VN" scope="session" />
								<fmt:formatNumber value="${product.price }" type="currency" />
							</div>
						</div>
					</div>
				</c:forEach>
			</div>

		</div>
		
	</div>

	<!-- overseas tour -->
	<div class="overseas-tour">
		<div class="container">
			
				<div class="header-travel">
				Nào hãy chọn <span><i class="ri-motorbike-fill"></i></span>
			</div>
			<div class="title-travel">Tour ngoài nước</div>
			<div class="box-slider-overseas">
				<c:forEach items="${product }" var="product" varStatus="loop">
					<div class="item-overseas">
						<div class="img-item-overseas">
							<a href=""><img src="${base }/upload/${product.avatar }"
								height="350px" alt=""></a>
						</div>
						<div class="data-slider-overseas">
							<div class="title-slider-overseas">${product.title }</div>
							<div class="content-slider-overseas">
								<a href="">Đặt phòng khách sạn Victorial Sapa Resort</a>
							</div>
							<div class="price-slider-overseas">
								<fmt:setLocale value="vi_VN" scope="session" />
								<fmt:formatNumber value="${product.price }" type="currency" />
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<!-- news tour -->
	<div class="container newss">
		<div class="header-travel">
			KIẾN THỨC BỔ ÍCH <span><i class="ri-motorbike-fill"></i></span>
		</div>
		<div class="title-travel">TIN TỨC DU LỊCH</div>
		<div class="news-tour">
			<c:forEach items="${news }" var="news" varStatus="loop">
				<div class="item-news-tour">

					<div class="image-news-tour">
						<a href=""><img src="${base }/upload/${news.avatar}"
								height="350px" alt=""></a>
					</div>
					<div class="content-news-tour" >
						<a href="">
							<div class="title-new-tour">${news.title }</div>
							<div class="comment-news-tour">${news.details }</div>
							<div class="see-more-news-tour">Xem thêm</div>
						</a>
					</div>

				</div>
			</c:forEach>

		</div>
		
	</div>
	<a href='#' class="stt" title="scroll to top"></a>
	<jsp:include page="/WEB-INF/views/customer/layout/footer.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/views/customer/layout/js.jsp"></jsp:include>
	<script type="text/javascript">
			$( document ).ready(function() {
				// đặt giá trị của category ứng với điều kiện search trước đó
				$("#categoryId").val(${searchModel.categoryId});
				$("#paging").pagination({
					
					currentPage: ${products.currentPage}, 
			        items: ${products.totalItems},			
			        itemsOnPage: ${products.sizeOfPage}, 	
			        cssStyle: 'light-theme',
			        onPageClick: function(pageNumber, event) {
			        	$('#page').val(pageNumber);
			        	$('#btnSearch').trigger('click');
					},
			    });
			});
			
		</script>
</body>

</html>