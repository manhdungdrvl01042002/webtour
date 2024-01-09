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


<jsp:include page="/WEB-INF/views/administrator/layout/css.jsp"></jsp:include>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">


</head>

<body>
	<input type="checkbox" id="nav-toggle">
	<div class="sidebar">
		<div class="sidebar-brand">
			<h1>
				<a href="${base }/admin"><span style="color: #fff"
					class="fa fa-dot-circle-o" aria-hidden="true"></span> <span
					style="color: #fff">Dung</span></a>
			</h1>
		</div>
		<div class="sidebar-menu">
			<ul>
				<li><a href="${base }/admin/product/list" class=""><span
						class="fa fa-tachometer" aria-hidden="true"></span> <span>Dashboard</span></a>
				</li>
				<li><a href="${base }/admin/customer"><span
						class="fa fa-users" aria-hidden="true"></span> <span>Custormers</span></a></li>
				<li><a href="${base }/admin/project"><span
						class="fa fa-clipboard" aria-hidden="true"></span> <span>Projects</span></a></li>
				<li><a href="${base }/admin/news/list"><span
						class="fa fa-truck" aria-hidden="true"></span> <span>News</span></a></li>
				<li><a href="${base }/admin/inventory"><span
						class="fa fa-archive" aria-hidden="true"></span> <span>Inventory</span></a></li>
				<li><a href="${base }/admin/sign-in"><span
						class="fa fa-user" aria-hidden="true"></span> <span>Accounts</span></a></li>
				<li><a href="${base }/admin/task"><span class="fa fa-tasks"
						aria-hidden="true"></span> <span>Tasks</span></a></li>
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
		<div>
				<a class="btn btn-outline-primary mb-1"
					href="${base }/admin/news/management/" role="button"> Thêm
					mới </a>
			</div>
			<table class="table table-striped">
				<thead>
					<tr>
						<th scope="col">Id</th>
						<th scope="col">Title</th>
						<th scope="col">Details</th>						
						<th scope="col">Avatar</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${news }" var="news" varStatus="loop">
						<tr>
							<th scope="row" width="5%">${loop.index + 1}</th>
							<td>${news.title }</td>
							
							<td>${news.details }</td>
							
							<td><img src="${base }/upload/${news.avatar}" width="100"
								height="100"></td>
							<td width="15%"><a class="btn btn-secondary"
								href="${base }/admin/news/management/${news.id}"
								role="button">Sửa</a> <a class="btn btn-danger" role="button"
								onclick="DeleteProduct(${news.id});">Xóa</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</main>
	</div>


</body>

</html>