<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact-us</title>
    <jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
    <jsp:include page="/WEB-INF/views/customer/layout/css.jsp"></jsp:include>
    <link rel="shortcut icon" href="./img/332379655_1157314508302318_813345541211386328_n.jpg" type="image/x-icon">
</head>

<body>
<jsp:include page="/WEB-INF/views/customer/layout/header.jsp"></jsp:include>
    <div class="container-fluid">
        <div class="gg-map">
            <iframe
                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d29793.9804531252!2d105.81636411466529!3d21.022778419218064!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab9bd9861ca1%3A0xe7887f7b72ca17a9!2zSMOgIE7hu5lpLCBIb8OgbiBLaeG6v20sIEjDoCBO4buZaSwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1681844938806!5m2!1svi!2s"
                width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"
                referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
    </div>

    
	<jsp:include page="/WEB-INF/views/customer/layout/form-contact.jsp"></jsp:include>
    <jsp:include page="/WEB-INF/views/customer/layout/footer.jsp"></jsp:include>
    
</body>

</html>