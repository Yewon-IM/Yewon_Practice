<%@page import="java.util.Map"%>
<%@page import="com.yogi.hoxy.dtos.ProductDto"%>
<%@page import="java.util.List"%>
<%@page import="com.yogi.hoxy.utils.Utils" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.yogi.hoxy.dtos.MemberDto"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
<meta charset="utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge" />
<title>YOGIHOXY - 오프라인 물건을 손쉽게 찾아보자</title>
<% MemberDto dto = (MemberDto) session.getAttribute("dto"); %>
<% List<ProductDto> pList = (List<ProductDto>) request.getAttribute("pList"); %>
<% List<Map<String, Integer>> list = (List<Map<String, Integer>>) request.getAttribute("list"); %>
<meta name="description" content="" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.svg" />


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
<!--[if lte IE 9]>
      <p class="browserupgrade">
        You are using an <strong>outdated</strong> browser. Please
        <a href="https://browsehappy.com/">upgrade your browser</a> to improve
        your experience and security.
      </p>
    <![endif]-->
<div id="output"></div>  
<div class="preloader">
<div class="preloader-inner">
<div class="preloader-icon">
<span></span>
<span></span>
</div>
</div>
</div>


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
<a class=" dd-menu collapsed" href="javascript:void(0)" data-bs-toggle="collapse" data-bs-target="#submenu-1-4" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">마이페이지</a>
<ul class="sub-menu mega-menu collapse" id="submenu-1-4">
<li class="single-block">
<ul>
<li class="nav-item"><a href="myPage.do">마이페이지</a>
</li>
<li class="nav-item"><a href="myPageUpdateForm.do?">정보수정</a>
</li>
<li class="nav-item"><a href="myPageDelete.do">회원탈퇴</a>
</li>
</ul>
</li>
</ul>
</li>
</div> 
<div class="login-button">
<ul>
<li>
<p>${name } 고객님</p>
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


<section class="hero-area style2 overlay">
<div class="container">
<div class="row align-items-center">
<div class="col-lg-7 col-md-12 col-12">
<div class="hero-text wow fadeInLeft" data-wow-delay=".3s">

<div class="section-heading">
<h2>Welcome to YOGIHOXY</h2>
<p>오프라인에서만 구매할 수 있는 상품을 찾으시나요?<br>
YOGIHOXY에서 간단하게 찾아보세요.</p>
</div>

</div>
</div>
<div class="col-lg-5 col-md-12 col-12">
<form method="post" action="search.do">
<div class="search-form style2 wow fadeInRight" data-wow-delay=".5s">
<h3 class="heading-title">빠른 검색</h3>
<p class="sub-heding-text">여기서 빠르게 검색해보세요!</p>
<div class="row">
<div class="col-12">
<div class="search-input">
<label for="category"><i class="far fa-question-circle"></i></label>
<select name="category" id="category" required>
<option value="">카테고리</option>
<option value="식품">식품</option>
<option value="유아">유아</option>
<option value="식음료">식음료</option>
<option value="전자기기">전자기기</option>
<option value="뷰티">뷰티</option>
<option value="의약품">의약품</option>
<option value="의류">의류</option>
</select>
</div>
</div>
<div class="col-12">
<div class="search-input">
<label for="local"><i class="fas fa-map-marked-alt"></i></label>
<select name="local" id="local" required>
<option value="구" >지역</option>
<option value="강남구">강남구</option>
<option value="강동구">강동구</option>
<option value="강북구">강북구</option>
<option value="강서구">강서구</option>
<option value="성북구">성북구</option>
<option value="관악구">관악구</option>
<option value="도봉구">도봉구</option>
</select>
</div>
</div>
<div class="col-12 ">
<div class="search-input">
<label for="keyword"><i class="fas fa-language"></i></label>
<input type="text" name="keyword" id="keyword" placeholder="상품명을 입력하세요">
</div>
</div>
<div class="col-12">
<div class="search-btn button">
<button class="btn"><i class="fas fa-search"></i> 검색</button>
</div>
</div>
</div>
</div>
</form>
</div>
</div>
</div>
</section>



<section class="items-grid section custom-padding">
<div class="container">
<div class="row">
<div class="col-12">
<div class="section-title">
<h2 class="wow fadeInUp" data-wow-delay=".4s">최신 상품</h2>
<p class="wow fadeInUp" data-wow-delay=".6s"></p>
</div>
</div>
</div>
<div class="single-head">
<div class="row">


<%  
for(ProductDto pdto : pList){
%>


<div class="col-lg-4 col-md-6 col-12">
<div class="single-grid wow fadeInUp" data-wow-delay=".2s">
<div class="image">
<a href="productDetail.do?product_seq=<%=pdto.getProduct_seq()%>" class="thumbnail"><img src="upload/product/<%=pdto.getImg_Url() %>" alt="productImg"></a>
<div class="author">
<div class="author-image">
<a href="myProductList.do?shopId=<%=pdto.getShopDto().getShopId()%>"><img src="upload/shop/<%=pdto.getShopDto().getShopImg() %>" alt="#">
<span><%=pdto.getShopDto().getShopName()%></span></a>
</div>
<p class="sale"><%=pdto.getShopDto().getLocal() %></p>
</div>
</div>
<div class="content">
<div class="top-content">

<h3 class="title">
<%=pdto.getProductName() %>
</h3>
<ul class="info-list">
<li><a href="search.do?category=<%=pdto.getCategory()%>"><%=pdto.getCategory() %></a> &nbsp&nbsp <fmt:formatDate pattern = "yyyy/MM/dd" value = "<%=pdto.getWriteDate() %>"/></li>
</ul>
</div>
<div class="bottom-content">
<p class="price"><span><%=Utils.comma(pdto.getPrice()) %>원</span></p>
<% boolean isS = false;
   int likes = 0;
for(Map<String, Integer> count : list){
   if(Integer.parseInt(String.valueOf(count.get("product_seq"))) == pdto.getProduct_seq()){
      isS = true;
      likes = Integer.parseInt(String.valueOf(count.get("count")));
   }
}   
   if(isS){
      %><a href="javascript:void(0)" class="like"><%=likes%>♥</a><%
   } else {
      %><a href="javascript:void(0)" class="like">0♥</a><%
   } 
%>
</div>
</div>
</div>
</div>


<%
}%>
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
<script src="https://code.jquery.com/jquery-1.9.0.js"></script>
<script src="resources/js/websocket.js"></script>
<script src="resources/js/notify.js"></script>
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