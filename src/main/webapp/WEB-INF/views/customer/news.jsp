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
<title>News</title>
<jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/customer/layout/css.jsp"></jsp:include>
<link rel="stylesheet" href="${base }/css/news.css">
<link rel="stylesheet" href="${base }/css/bootstrap.min.css">
<link
	href="https://cdn.jsdelivr.net/npm/remixicon@3.0.0/fonts/remixicon.css"
	rel="stylesheet">
</head>

<body>
	<jsp:include page="/WEB-INF/views/customer/layout/header.jsp"></jsp:include>
	<div class="container">
		<div class="header-news">Tin tức</div>
		<div class="box-news">
			<div class="box-item-news">
				<div class="item-news">
					<c:forEach items="${news }" var="news" varStatus="loop">
						<div class="news"> 
							<a href="">
								<div class="img-news">
									<a href=""><img src="${base }/upload/${news.avatar}"
								height="350px" alt=""></a>
								</div>
								<div class="content-news">
									<div class="header-content-news">${news.title }</div>
									<div class="comment-news">${news.details }</div>
								</div>
							</a>
						</div>
					</c:forEach>

					
				</div>
				
			</div>

			<div class="search-news">
				<div class="box-search">
					<div class="ip-search">
						<input type="text" placeholder="Tìm kiếm...">
					</div>
					<div class="btn-search">
						<button>
							<i class="ri-search-line"></i>
						</button>
					</div>
				</div>

				<div class="new-posts">
					<div class="header-new-posts">Bài viết mới nhất</div>
					<div class="box-new-posts">
					<c:forEach items="${news }" var="news" varStatus="loop">
					<div class="item-new-posts">
							<div class="img-new-posts">
								<a href=""><img src="${base }/upload/${news.avatar}"
								height="350px" alt=""></a>
							</div>
							<div class="content-new-posts">
								<a href="">${news.title }</a>
							</div>
						</div>
					</c:forEach>
						
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="/WEB-INF/views/customer/layout/footer.jsp"></jsp:include>
</body>

</html>