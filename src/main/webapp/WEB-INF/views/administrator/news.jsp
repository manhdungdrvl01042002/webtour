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
				</label> News
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
                    
					<h1 class="mt-4">Add/Upadte News</h1>
                    <p>
						<sf:form method="post" action="${base}/admin/news/management/saveOrUpdate" modelAttribute="news" enctype="multipart/form-data">
							<div class="form-group mb-2">
								<label for="newsId">News Id</label>
								<sf:input path="id" id="newsId" class="form-control"></sf:input>
							</div>
							<div class="form-group mb-2">
								<label for="title">Title (required)</label>
								<sf:input path="title" autocomplete="off" type="text" class="form-control" id="title" placeholder="Title" required="required"></sf:input>
							</div>
							
							<div class="form-group mb-2" >
								<label for="detail_description">Details (required)</label>
								<sf:textarea style="display:block; width:100%" path="details" id="summernote" name="editordata"></sf:textarea>								
							</div>
							
							<!-- avatar -->
							<div class="form-group mb-2">
								<label for="fileNewsAvatar">Avatar</label> 
								<input type="file" id="fileNewsAvatar" name="newsAvatar" class="form-control">
							</div>
							<div class="form-group">
								<img alt="" style="width: 100px; height: 100px;" src="${base }/upload/${news.avatar}">
							</div>
	
							
							
							<br/>
							<a href="/admin/news/list" class="btn btn-secondary active" role="button" aria-pressed="true">Back to list</a>
							<button type="submit" class="btn btn-primary">Save News</button>
						</sf:form>

					</p>                    
                    
                </div>
            </section>
		</main>
	</div>
	<script src="${base }/js/admin.js"></script>
</body>

</html>