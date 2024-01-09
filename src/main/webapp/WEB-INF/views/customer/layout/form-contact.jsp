
<!-- import sf: spring-form -->
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<div class="box-contact-us">
	<div class="container contact-us">
		<div class="image-contact">
			<img src="${base }/img/human.png" alt="">
		</div>
		<!-- cach1: sử dụng html form -->
		<%-- 		<form modelAttribute="contactUs" action="${base }/contact" class="form-contact" method="post">
			<div class="header-contact">Contact Us</div>
			<div class="content-contact">Just pack and go! Let leave your
				travel plan to travel experts!</div>
			<input type="text" id="fname" name="firstname"
				placeholder="Họ và tên"> <input type="email" id="email"
				name="email" placeholder="Email">
			<textarea id="subject" name="subject" placeholder="Nội dung"
				style="height: 200px"></textarea>

			<div class="btn-sbm">
				<input class="btn-sbm-fix"  type="submit" value="Gửi tin nhắn">
			</div>
		</form> --%>

		<!-- cach 2 : sử dụng spring-form -->

		<sf:form modelAttribute="contactUs" action="${base }/contact" class="form-contact" method="post" enctype="multipart/form-data">
			<div class="header-contact">Contact Us</div>
			<div class="content-contact">Just pack and go! Let leave your
				travel plan to travel experts!</div>
			<sf:input path="firstname" type="text" id="fname" name="firstname" placeholder="Họ và tên"></sf:input>	
			<sf:input path="email" type="email" id="cemail" name="email" placeholder="Email"></sf:input>	
			<input type="file" id="idfileContact" name="fileContact"></input>
			<sf:textarea path="subject" id="csubject" name="subject" placeholder="Nội dung" style="height: 200px"></sf:textarea>	
			<div class="btn-sbm">
			<input type="submit" value="Gửi tin nhắn">
			</div>
		</sf:form>	

<%-- 		<!-- cách 3: sử dụng ajax -->
		<form action="" class="form-contact">
			<div class="header-contact">Contact Us</div>
			<div class="content-contact">Just pack and go! Let leave your
				travel plan to travel experts!</div>
			<input type="text" id="fname" name="firstname"
				placeholder="Họ và tên"> 
				<input type="email" id="email"
				name="email" placeholder="Email">
			<textarea id="subject" name="subject" placeholder="Nội dung"
				style="height: 200px"></textarea>

			<div class="btn-sbm">
				<input class="btn-sbm-fix" type="button"
					onclick="submit_form_via_ajax()" value="Gửi tin nhắn">
			</div>
			<jsp:include page="/WEB-INF/views/customer/layout/js.jsp"></jsp:include>
			<script type="text/javascript">
				function submit_form_via_ajax() {
					// tạo javascript object.  
					var data = {
						firstname : $("#fname").val(),
						email : $("#email").val(),
						subject : $("#subject").val()
					};

					// $ === jQuery
					// json == javascript object
					jQuery.ajax({
						url : "/ajax/contact",
						type : "post",
						contentType : "application/json",
						data : JSON.stringify(data),

						dataType : "json",
						success : function(jsonResult) {
							alert(jsonResult.statusMessage)
						},
						error : function(jqXhr, textStatus, errorMessage) {
							alert("error");
						}
					});
				}
			</script>
		</form> --%>
	</div>
</div>