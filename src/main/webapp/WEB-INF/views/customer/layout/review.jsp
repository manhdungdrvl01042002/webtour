
<!-- import sf: spring-form -->
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div id="module" class="tabcontent-product">
	<div class="evaluate">
		<div class="title-evalute">Đánh giá</div>
		<div class="box-evaluate">
			<div class="header-evaluate">Hãy là người đầu tiên nhận xét
				“Beach Resort Phan Thiết Khuyến Mãi Mùa Đông”</div>
			<div class="star-evaluate">
			<sf:form modelAttribute="review" action="${base }/product" method="post" enctype="multipart/form-data">
					<label for="subject">Nhận xét của bạn *</label>
					<sf:textarea path="subject" id="csubject" name="subject" placeholder="Nội dung" style="height: 200px;border: 1px solid #b3afaf;background: #fff;width: 100%;margin-left: 0px;"></sf:textarea>
					<label for="fname">Tên *</label> 
					<sf:input path="firstname" type="text" id="fname" name="firstname" placeholder="Họ và tên"></sf:input>
					<label for="email">Email *</label> 
					<sf:input path="email" type="email" id="cemail" name="email" placeholder="Email"></sf:input>
					<div class="btn-sbm">
						<input type="submit" value="Gửi tin nhắn" style="padding: 12px 0px;margin-left: 60px;">
					</div>
			</sf:form>	
			</div>
		</div>
	</div>
</div>