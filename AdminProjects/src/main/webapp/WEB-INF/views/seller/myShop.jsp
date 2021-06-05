<%@page import="java.util.List"%>
<%@page import="com.yogi.hoxy.dtos.ShopDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 상점 보기</title>
<% List<ShopDto> list = (List<ShopDto>)request.getAttribute("list"); %>
<link href="https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">
<link rel="stylesheet" href="resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="resources/css/LineIcons.2.0.css" />
<link rel="stylesheet" href="resources/css/animate.css" />
<link rel="stylesheet" href="resources/css/tiny-slider.css" />
<link rel="stylesheet" href="resources/css/glightbox.min.css" />
<link rel="stylesheet" href="resources/css/main.css" />
</head>
<body>
<header class="header navbar-area">
<div class="container">
<div class="row align-items-center">
<div class="col-lg-12">
<div class="nav-inner">
<nav class="navbar navbar-expand-lg">
<a class="navbar-brand" href=".">
<img src="upload/logo.jpg" alt="Logo">
</a>
<button class="navbar-toggler mobile-menu-btn" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
<span class="toggler-icon"></span>
<span class="toggler-icon"></span>
<span class="toggler-icon"></span>
</button>
<div class="collapse navbar-collapse sub-menu-bar" id="navbarSupportedContent">
<ul id="nav" class="navbar-nav ms-auto">
<li class="nav-item">
<a href="." aria-label="Toggle navigation">홈</a>
</li>
 <li class="nav-item">
<a href="search.do" aria-label="Toggle navigation">카테고리</a>
</li>
<li class="nav-item">
<a class=" active dd-menu collapsed" href="javascript:void(0)" data-bs-toggle="collapse" data-bs-target="#submenu-1-4" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">내 상점</a>
<ul class="sub-menu mega-menu collapse" id="submenu-1-4">
<li class="single-block">
<ul>
<li class="mega-menu-title">상점</li>
<li class=" active nav-item"><a href="myShop.do?id=">내 상점 보기</a></li>
<li class="nav-item"><a href="myShopAddForm.do">상점 추가</a></li>
</ul>
</li>
<li class="single-block">
<ul>
<li class="mega-menu-title">마이페이지</li>
<li class="nav-item"><a href="myPage.do">마이페이지</a></li>
<li class="nav-item"><a href="myPageUpdateForm.do">정보수정</a></li>
<li class="nav-item"><a href="myPageDelete.do">회원탈퇴</a></li>
</ul>
</li>
</ul>
</li>
</ul>
</div> 
<div class="login-button">
<ul>
<li>
<p>${name } 판매자</p>
</li>
<li>
<a href="logout.do"><i class="fas fa-sign-out-alt"></i> 로그아웃</a>	
</li>
</ul>
</div>
</nav> 
</div>
</div>
</div> 
</div> 
</header>
<a href=".">메인 홈페이지</a>
<section class="testimonials section">
<div class="container">
<div class="row">
<div class="col-12">
<div class="section-title align-center gray-bg">
<h2 class="wow fadeInUp" data-wow-delay=".4s">내 상점</h2>
</div>
</div>
</div>			
<div class="row testimonial-slider">
<%
	if(list == null){
		%>
<section class="how-works section">
<div class="container">
<div class="row">
<div class="col-12">
<div class="section-title">
<h2 class="wow fadeInUp" data-wow-delay=".4s">상점 추가하기</h2>
</div>
</div>
</div>
<div class="col-12">
<div class="single-work wow fadeInUp" data-wow-delay=".4s">
<a href="myShopAddForm.do"><img src="resources/image/newShop.png" alt="admit"></a>
</div>
</div>
</div>
</section>
		<% } else {
			for(ShopDto sdto: list){ %>	
			<div class="col-lg-4 col-md-6 col-12">
			<div class="single-testimonial">
			<div class="quote-icon">
			<a href="myProductList.do?shopId=<%=sdto.getShopId()%>"><img src="resources/image/product.png" alt="상품보기"/></a>
			<!-- <a href="addProduct.do?shopId=<%=sdto.getShopId()%>"><img src="resources/image/product.png" alt="상품보기"/></a> -->
			</div>
			<div class="author">
			<a href="myShopDetail.do?shopId=<%=sdto.getShopId()%>&id=<%=sdto.getId()%>"><img id="shopImg" src="upload/shop/<%=sdto.getShopImg()%>" alt="#" /></a>
			<h4 class="name">
			<%= sdto.getShopName() %>
			<span class="deg"><% if (sdto.getPower().equals("0")){ 
 					out.println("미승인");
 				} else if (sdto.getPower().equals("1")){
 					out.println("승인");
 				} else if (sdto.getPower().equals("2")){
 					out.println("영업중지");
 				}
 					%></span>
			</h4>
			</div>
			<div class="text">
			<p>전화번호 : <%= sdto.getShopTel() %></p>
			<p>지역 : <%= sdto.getLocal() %></p>
			<p>가입날짜 : <fmt:formatDate pattern="yyyy-MM-dd" value="<%= sdto.getOpenDate() %>"/></p>
			<p>상점번호 : <%= sdto.getShopId() %></p>
			<p>상태 : <% if (sdto.getDel().equals("0")){ 
 					out.println("정상");
 					} else {
 						out.println("삭제예정");
 					} %></p>
 			<p><%if(sdto.getDel().equals("1")) { 
 					%>
 					<a href="myShopCan.do?shopId=<%=sdto.getShopId()%>">삭제취소</a>
 				<% } else { 
 					%>
 					<a href="myShopDelete.do?shopId=<%=sdto.getShopId()%>">삭제요청</a>
 				<% } 
 				%></p>
			</div>
			</div>
			</div>
	<% }%>
<% }%>
</div>
</div>
</section>




<section class="how-works section">
<div class="container">
<div class="row">
<div class="col-12">
<div class="section-title">
<h2 class="wow fadeInUp" data-wow-delay=".4s">상점 추가하기</h2>
<p class="wow fadeInUp" data-wow-delay=".6s">설명설명</p>
</div>
</div>
</div>
<div class="col-12">
<div class="single-work wow fadeInUp" data-wow-delay=".4s">
<a href="myShopAddForm.do"><img src="resources/image/newShop.png" alt="admit"></a>
</div>
</div>
</div>
</section>







<footer class="footer">

<div class="footer-bottom">
<div class="container">
<div class="inner">
<div class="row">
<div class="col-12">
<div class="content">
<p class="copyright-text">Designed and Developed by 1조
</p>
</div>
</div>
</div>
</div>
</div>
</div>

</footer>

<a href="#" class="scroll-top btn-hover">
<i class="fas fa-arrow-up"></i>
</a>

<script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
<script src="resources/js/wow.min.js"></script>
<script src="resources/js/tiny-slider.js"></script>
<script src="resources/js/glightbox.min.js"></script>
<script src="resources/js/count-up.min.js"></script>
<script src="resources/js/main.js"></script>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<script type="text/javascript">
        //========= testimonial 
        tns({
            container: '.testimonial-slider',
            items: 3,
            slideBy: 'page',
            autoplay: false,
            mouseDrag: true,
            gutter: 0,
            nav: true,
            controls: false,
            controlsText: ['<i class="lni lni-arrow-left"></i>', '<i class="lni lni-arrow-right"></i>'],
            responsive: {
                0: {
                    items: 1,
                },
                540: {
                    items: 1,
                },
                768: {
                    items: 2,
                },
                992: {
                    items: 2,
                },
                1170: {
                    items: 2,
                }
            }
        });

        //====== counter up 
        var cu = new counterUp({
            start: 0,
            duration: 2000,
            intvalues: true,
            interval: 100,
            append: " ",
        });
        cu.start();
    </script>
</body>
</html>