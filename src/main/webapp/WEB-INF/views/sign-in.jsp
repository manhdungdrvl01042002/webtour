<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign-in</title>
       <jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
    <link rel="shortcut icon" href="${base }/img/OIP.jpg" type="image/x-icon">
    <link rel="stylesheet" href="${base }/css/bootstrap.min.css">
    <link rel="stylesheet" href="${base }/css/sign-in.css">
</head>

<body>
    <div class="container">
        <div class="drop">
            <div class="content">
                <h2>Sign in</h2>
                <form action="${base }/login_processing_url" method="POST">
                <c:if test="${not empty param.login_error}">
						<div style = "border-radius: 40px;"  class="alert alert-danger" role="alert">
							Login attempt was not successful, try again!!!
						</div>
					</c:if>
                    <div class="inputBox">
                        <input type="text" placeholder="Username" name="username">
                    </div>
                    <div class="inputBox">
                        <input type="password" placeholder="Password" name="password">
                    </div>
                    <div style="display:flex;margin-left:-85px">
                        <div><input style="margin-right:5px" type="checkbox" placeholder="Remember-me" name="remember-me"></div>
                        <span>Remember me</span>
                    </div>
                    <div class="inputBox">
                        <input type="submit" placeholder="Login">
                    </div>
                </form>
            </div>
        </div>
        <a href="" class="btns">Forget Password</a>
        <a href="" class="btns signup">Sign up</a>
    </div>
</body>

</html>