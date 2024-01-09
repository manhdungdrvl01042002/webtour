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
    <link rel="stylesheet" href="${base }/css/finish.css">
    <link rel="stylesheet" href="${base }/css/bootstrap.min.css">
<link rel="stylesheet" href="${base }/css/style3.css">
   <jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
	
    <title>Finish</title>
</head>

<body>
	<jsp:include page="/WEB-INF/views/customer/layout/header.jsp"></jsp:include>
    <div class="card">
        <div
            style="border-radius:200px; height:200px; width:200px; background: #7a7fb4; margin:0 auto;box-shadow: 0px 15px 9px #1bc596;">
            <i class="checkmark">✓</i>
        </div>
        <h1>Success</h1>
        <p>We received your purchase request;<br /> we'll be in touch shortly!</p>
    </div>
</body>

</html>