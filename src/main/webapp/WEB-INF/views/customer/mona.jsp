<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>mona-travel</title>
    <link rel="stylesheet" href="${base }/css/mona.css">
    <link rel="stylesheet" href="${base }/css/bootstrap.min.css">
      <jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
     <jsp:include page="/WEB-INF/views/customer/layout/css.jsp"></jsp:include>
    <link rel="shortcut icon" href="./img/332379655_1157314508302318_813345541211386328_n.jpg" type="image/x-icon">
</head>

<body>

<jsp:include page="/WEB-INF/views/customer/layout/header.jsp"></jsp:include>
    <!-- mona media -->
    <div class="mona-travel-contact">
        <div class="container ">
            <div class="mona-contact">
                <div class="header-mona-contact">
                    Mona Media
                </div>
                <div class="comment-mona-contact">
                    Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut
                    laoreet dolore magna aliquam erat volutpat.
                </div>
            </div>
        </div>
    </div>
    <!-- content -->
    <div class="container box-content-mona">
        <div class="item-content-mona">
            <div class="header-content-mona">
                Mục tiêu
            </div>
            <div class="note-content-mona">
                Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut
                laoreet dolore magna aliquam erat volutpat.
            </div>
        </div>
        <div class="item-content-mona">
            <div class="header-content-mona">
                Sứ mệnh
            </div>
            <div class="note-content-mona">
                Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut
                laoreet dolore magna aliquam erat volutpat.
            </div>
        </div>
        <div class="item-content-mona">
            <div class="header-content-mona">
                Tương lai
            </div>
            <div class="note-content-mona">
                Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut
                laoreet dolore magna aliquam erat volutpat.
            </div>
        </div>
    </div>
  	<jsp:include page="/WEB-INF/views/customer/layout/form-mona.jsp"></jsp:include> 
    <jsp:include page="/WEB-INF/views/customer/layout/footer.jsp"></jsp:include>
</body>

</html>