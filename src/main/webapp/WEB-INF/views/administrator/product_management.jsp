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
<title>Admin</title>
<jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
<link rel="stylesheet" href="${base }/css/admin1.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- include libraries(jQuery, bootstrap) -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- include summernote css/js -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
<link rel="stylesheet" href="${base }/css/bootstrap.min.css">
</head>

<body>
	<input type="checkbox" id="nav-toggle">
	<div class="sidebar">
		<div class="sidebar-brand">
			<h1>
				<a href="${base }/admin"><span style="color:#fff" class="fa fa-dot-circle-o" aria-hidden="true"></span> <span style="color:#fff">Dung</span></a>
			</h1>
		</div>
		<div class="sidebar-menu">
			<ul>
				<li><a href="${base }/admin/product/list" class=""><span
						class="fa fa-tachometer" aria-hidden="true"></span> <span>Dashboard</span></a>
				</li>
				<li><a href="${base }/admin/customer"><span class="fa fa-users" aria-hidden="true"></span>
						<span>Custormers</span></a></li>
				<li><a href="${base }/admin/project"><span class="fa fa-clipboard"
						aria-hidden="true"></span> <span>Projects</span></a></li>
				<li><a href="${base }/admin/news/list"><span class="fa fa-truck" aria-hidden="true"></span>
						<span>News</span></a></li>
				<li><a href="${base }/admin/inventory"><span class="fa fa-archive"
						aria-hidden="true"></span> <span>Inventory</span></a></li>
				<li><a href="${base }/admin/sign-in"><span class="fa fa-user" aria-hidden="true"></span>
						<span>Accounts</span></a></li>
				<li><a href="${base }/admin/task"><span class="fa fa-tasks" aria-hidden="true"></span>
						<span>Tasks</span></a></li>
			</ul>
		</div>
	</div>
	<div class="main-content">
		<header>
			<h1 class="cl-f">
				<label for="nav-toggle"> <span class="fa fa-bars"
					aria-hidden="true"></span>
				</label> Dashboard
			</h1>
		
			<div class="user-wrapper">
				<img
					src="${base }/img/332379655_1157314508302318_813345541211386328_n.jpg"
					alt="" width="30px" height="30px">
				<div>
					<h4 style="font-size:12px">${userLogined.email }</h4>
					<small><a href="${base }/logout">logout</a></small>
				</div>
			</div>

		</header>

		<main>
			<section>
                <div class="container-fluid">
                    
					<h1 class="mt-4">Add/Upadte Products</h1>
                    <p>
						<sf:form method="post" action="${base}/admin/product/management/saveOrUpdate" modelAttribute="product" enctype="multipart/form-data">
							<div class="form-group mb-2">
								<label for="productId">Product Id</label>
								<sf:input path="id" id="productId" class="form-control"></sf:input>
							</div>
							
							<div class="form-group mb-2">
								<label for="category">Category (required)</label>
								<sf:select path="category.id" class="form-control" id="category">
									<sf:options items="${category }" itemValue="id" itemLabel="name" />									
								</sf:select>
							</div>
							
							<div class="form-group mb-2">
								<label for="title">Title (required)</label>
								<sf:input path="title" autocomplete="off" type="text" class="form-control" id="title" placeholder="Title" required="required"></sf:input>
							</div>
							
							<div class="form-group mb-2">
								<label for="price">Price (required)</label>
								<sf:input type="number" autocomplete="off" path="price" class="form-control" id="price" placeholder="Price" required="required"></sf:input>
							</div>
							
							<div class="form-group mb-2">
								<label for="priceSale">Price Sale (required)</label>
								<sf:input type="number" autocomplete="off" path="priceSale" class="form-control" id="priceSale" placeholder="Price sale" required="required"></sf:input>
							</div>
							
							<div class="form-group mb-2">
								<label for="short_description">Description (required)</label>
								<sf:textarea autocomplete="off" path="shortDes" class="form-control" placeholder="Short Description" id="short_description" rows="3" required="required"></sf:textarea>
							</div>
							
							<div class="form-group mb-2" >
								<label for="detail_description">Details (required)</label>
								<sf:textarea  path="details" id="summernote" name="editordata"></sf:textarea>								
							</div>
							
							<%-- <div class="form-group mb-2">
								<label for="detail_description">Created date:</label>
								<sf:input autocomplete="off" path="createdDate" class="form-control" id="created_date"></sf:input>								
							</div> --%>
							
							<div class="form-group form-check mb-2">
								<sf:checkbox path="isHot" class="form-check-input" id="isHot" />
								<label class="form-check-label" for="isHot">Is Hot Product?</label>
							</div>
	
							<!-- avatar -->
							<div class="form-group mb-2">
								<label for="fileProductAvatar">Avatar</label> 
								<input type="file" id="fileProductAvatar" name="productAvatar" class="form-control">
							</div>
							<div class="form-group">
								<img alt="" style="width: 100px; height: 100px;" src="${base }/upload/${product.avatar}">
							</div>
	
							<!-- pictures -->
							<div class="form-group mb-2">
								<label for="fileProductPictures">Picture(Multiple)</label> 
								<input type="file" id="fileProductPictures" name="productPictures" class="form-control" multiple="multiple">
							</div>
							<div class="form-group">
								<c:forEach items="${product.productImages }" var="productImage">
									<img alt="" style="width: 100px; height: 100px;" src="${base }/upload/${productImage.path}">
								</c:forEach>
							</div>
							
							<br/>
							<a href="/admin/product/list" class="btn btn-secondary active" role="button" aria-pressed="true">Back to list</a>
							<button type="submit" class="btn btn-primary">Save Product</button>
						</sf:form>

					</p>                    
                    
                </div>
            </section>
		</main>
	</div>
	<script src="${base }/js/admin.js"></script>
	 <script type="text/javascript">
    $(document).ready(function() {
        $('#summernote').summernote();
    });
  </script>
</body>

</html>