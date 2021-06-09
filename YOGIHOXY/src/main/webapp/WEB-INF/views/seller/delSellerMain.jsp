<%@page import="java.util.Map"%>
<%@page import="com.yogi.hoxy.dtos.ProductDto"%>
<%@page import="java.util.List"%>
<%@page import="com.yogi.hoxy.utils.Utils" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page import="com.yogi.hoxy.dtos.MemberDto"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
<meta charset="utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge" />
<title>판매자 메인 홈페이지</title>
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
<img src="assets/images/logo/logo.svg" alt="Logo">
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
<a class=" dd-menu collapsed" href="javascript:void(0)" data-bs-toggle="collapse" data-bs-target="#submenu-1-4" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">마이페이지</a>
<ul class="sub-menu mega-menu collapse" id="submenu-1-4">
<li class="single-block">
<ul>
<li class="nav-item"><a href="cancelDelete.do">회원탈퇴 상태보기</a>
</li>
</ul>
</li>
</ul>
</li>
</ul>
</div> 
<div class="login-button">
<ul>
<li>
<p>${name }</p>
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


<%  for(ProductDto dto : pList){
%>


<div class="col-lg-4 col-md-6 col-12">
<div class="single-grid wow fadeInUp" data-wow-delay=".2s">
<div class="image">
<a class="thumbnail"><img src="upload/product/<%=dto.getImg_Url() %>" alt="productImg"></a>
<div class="author">
<div class="author-image">
<img src="upload/shop/<%=dto.getShopDto().getShopImg() %>" alt="#">
<span><%=dto.getShopDto().getShopName()%></span></a>
</div>
<p class="sale"><%=dto.getShopDto().getLocal() %></p>
</div>
</div>
<div class="content">
<div class="top-content">

<h3 class="title">
<%=dto.getProductName() %>
</h3>
<ul class="info-list">
<li><%=dto.getCategory() %> &nbsp&nbsp <fmt:formatDate pattern = "yyyy/MM/dd" value = "<%=dto.getWriteDate() %>"/></li>
</ul>
</div>
<div class="bottom-content">
<p class="price"><span><%=Utils.comma(dto.getPrice()) %>원</span></p>
<% boolean isS = false;
   int likes = 0;
for(Map<String, Integer> count : list){
   if(Integer.parseInt(String.valueOf(count.get("product_seq"))) == dto.getProduct_seq()){
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


<section class="browse-cities section">
<div class="container">
<div class="row">
<div class="col-12">
<div class="section-title">
<h2 class="wow fadeInUp" data-wow-delay=".4s">Browse By Cities</h2>
<p class="wow fadeInUp" data-wow-delay=".6s">There are many variations of passages of Lorem
Ipsum available, but the majority have suffered alteration in some form.</p>
</div>
</div>
</div>
<div class="row ">
<div class="col-lg-4 col-md-4 col-12">

<div class="single-city wow fadeInUp" data-wow-delay=".2s">
<a href="category.html" class="info-box">
<div class="image">
<img src="assets/images/cities/img1.jpg" alt="#">
</div>
<div class="content">
<h4 class="name">
New York City
<span>155 Ads</span>
</h4>
</div>
<div class="more-btn">
<i class="lni lni-circle-plus"></i>
</div>
</a>
</div>

</div>
<div class="col-lg-4 col-md-4 col-12">

<div class="single-city wow fadeInUp" data-wow-delay=".4s">
<a href="category.html" class="info-box">
<div class="image">
<img src="assets/images/cities/img2.jpg" alt="#">
</div>
<div class="content">
<h4 class="name">
Philadelphia
<span>288 Ads</span>
</h4>
</div>
<div class="more-btn">
<i class="lni lni-circle-plus"></i>
</div>
</a>
</div>

</div>
<div class="col-lg-4 col-md-4 col-12">

<div class="single-city wow fadeInUp" data-wow-delay=".6s">
<a href="category.html" class="info-box">
<div class="image">
<img src="assets/images/cities/img3.jpg" alt="#">
</div>
<div class="content">
<h4 class="name">
Los Angeles
<span>95 Ads</span>
</h4>
</div>
<div class="more-btn">
<i class="lni lni-circle-plus"></i>
</div>
</a>
</div>

</div>
<div class="col-lg-6 col-md-6 col-12">

<div class="single-city wow fadeInUp" data-wow-delay=".2s">
<a href="category.html" class="info-box">
<div class="image">
<img src="assets/images/cities/img4.jpg" alt="#">
</div>
<div class="content">
<h4 class="name">
San Francisco
<span>355 Ads</span>
</h4>
</div>
<div class="more-btn">
<i class="lni lni-circle-plus"></i>
</div>
</a>
 </div>

</div>
<div class="col-lg-6 col-md-6 col-12">

<div class="single-city wow fadeInUp" data-wow-delay=".4s">
<a href="category.html" class="info-box">
<div class="image">
<img src="assets/images/cities/img5.jpg" alt="#">
</div>
<div class="content">
<h4 class="name">
Newe Orleans
<span>76 Ads</span>
</h4>
</div>
<div class="more-btn">
<i class="lni lni-circle-plus"></i>
</div>
</a>
</div>

</div>
</div>
</div>
</section>


<section class="our-achievement section">
<div class="container">
<div class="row">
<div class="col-lg-3 col-md-3 col-12">
<div class="single-achievement wow fadeInUp" data-wow-delay=".2s">
<h3 class="counter"><span id="secondo1" class="countup" cup-end="1250">1250</span>+</h3>
<p>Regular Ads</p>
</div>
</div>
<div class="col-lg-3 col-md-3 col-12">
<div class="single-achievement wow fadeInUp" data-wow-delay=".4s">
<h3 class="counter"><span id="secondo2" class="countup" cup-end="350">350</span>+</h3>
<p>Locations</p>
</div>
</div>
<div class="col-lg-3 col-md-3 col-12">
<div class="single-achievement wow fadeInUp" data-wow-delay=".6s">
<h3 class="counter"><span id="secondo3" class="countup" cup-end="2500">2500</span>+</h3>
<p>Reguler Members</p>
</div>
</div>
<div class="col-lg-3 col-md-3 col-12">
<div class="single-achievement wow fadeInUp" data-wow-delay=".6s">
<h3 class="counter"><span id="secondo3" class="countup" cup-end="250">250</span>+</h3>
<p>Premium Ads</p>
</div>
</div>
</div>
</div>
</section>


<section class="items-grid section">
<div class="container">
<div class="row">
<div class="col-12">
<div class="section-title">
<h2 class="wow fadeInUp" data-wow-delay=".4s">Latest Products</h2>
<p class="wow fadeInUp" data-wow-delay=".6s">There are many variations of passages of Lorem
Ipsum available, but the majority have suffered alteration in some form.</p>
</div>
</div>
</div>
<div class="single-head">
<div class="row">
<div class="col-lg-4 col-md-6 col-12">

<div class="single-grid wow fadeInUp" data-wow-delay=".2s">
<div class="image">
<a href="item-details.html" class="thumbnail"><img src="assets/images/items-grid/img1.jpg" alt="#"></a>
<div class="author">
<div class="author-image">
<a href="javascript:void(0)"><img src="assets/images/items-grid/author-1.jpg" alt="#">
<span>Smith jeko</span></a>
</div>
<p class="sale">For Sale</p>
</div>
</div>
<div class="content">
<div class="top-content">
<a href="javascript:void(0)" class="tag">Mobile Phones</a>
<h3 class="title">
<a href="item-details.html">Apple Iphone X</a>
</h3>
<p class="update-time">Last Updated: 1 hours ago</p>
<ul class="rating">
<li><i class="lni lni-star-filled"></i></li>
<li><i class="lni lni-star-filled"></i></li>
<li><i class="lni lni-star-filled"></i></li>
<li><i class="lni lni-star-filled"></i></li>
<li><i class="lni lni-star-filled"></i></li>
<li><a href="javascript:void(0)">(35)</a></li>
</ul>
<ul class="info-list">
<li><a href="javascript:void(0)"><i class="lni lni-map-marker"></i> New York, US</a></li>
<li><a href="javascript:void(0)"><i class="lni lni-timer"></i> Feb 18, 2023</a></li>
</ul>
</div>
<div class="bottom-content">
<p class="price">Start From: <span>$200.00</span></p>
<a href="javascript:void(0)" class="like"><i class="lni lni-heart"></i></a>
</div>
</div>
</div>

</div>
<div class="col-lg-4 col-md-6 col-12">

<div class="single-grid wow fadeInUp" data-wow-delay=".4s">
<div class="image">
<a href="item-details.html" class="thumbnail"><img src="assets/images/items-grid/img2.jpg" alt="#"></a>
<div class="author">
<div class="author-image">
<a href="javascript:void(0)"><img src="assets/images/items-grid/author-2.jpg" alt="#">
<span>Alex Jui</span></a>
</div>
<p class="sale">For Sale</p>
</div>
</div>
<div class="content">
<div class="top-content">
<a href="javascript:void(0)" class="tag">Real Estate</a>
<h3 class="title">
<a href="item-details.html">Amazing Room for Rent</a>
</h3>
<p class="update-time">Last Updated: 2 hours ago</p>
<ul class="rating">
<li><i class="lni lni-star-filled"></i></li>
<li><i class="lni lni-star-filled"></i></li>
<li><i class="lni lni-star-filled"></i></li>
<li><i class="lni lni-star-filled"></i></li>
<li><i class="lni lni-star-filled"></i></li>
<li><a href="javascript:void(0)">(20)</a></li>
</ul>
<ul class="info-list">
<li><a href="javascript:void(0)"><i class="lni lni-map-marker"></i> Dallas, Washington</a></li>
<li><a href="javascript:void(0)"><i class="lni lni-timer"></i> Jan 7, 2023</a></li>
</ul>
</div>
<div class="bottom-content">
<p class="price">Start From: <span>$450.00</span></p>
<a href="javascript:void(0)" class="like"><i class="lni lni-heart"></i></a>
</div>
</div>
</div>

</div>
<div class="col-lg-4 col-md-6 col-12">

<div class="single-grid wow fadeInUp" data-wow-delay=".6s">
<div class="image">
<a href="item-details.html" class="thumbnail"><img src="assets/images/items-grid/img3.jpg" alt="#"></a>
<div class="author">
<div class="author-image">
<a href="javascript:void(0)"><img src="assets/images/items-grid/author-3.jpg" alt="#">
<span>Devid Milan</span></a>
</div>
<p class="sale">For Sale</p>
</div>
<p class="item-position"><i class="lni lni-bolt"></i> Featured</p>
</div>
<div class="content">
<div class="top-content">
<a href="javascript:void(0)" class="tag">Mobile Phones</a>
<h3 class="title">
<a href="item-details.html">Canon SX Powershot D-SLR</a>
</h3>
<p class="update-time">Last Updated: 3 hours ago</p>
<ul class="rating">
<li><i class="lni lni-star-filled"></i></li>
<li><i class="lni lni-star-filled"></i></li>
<li><i class="lni lni-star-filled"></i></li>
<li><i class="lni lni-star-filled"></i></li>
<li><i class="lni lni-star-filled"></i></li>
<li><a href="javascript:void(0)">(55)</a></li>
</ul>
<ul class="info-list">
<li><a href="javascript:void(0)"><i class="lni lni-map-marker"></i> New York, US</a></li>
<li><a href="javascript:void(0)"><i class="lni lni-timer"></i> Mar 18, 2023</a></li>
</ul>
</div>
<div class="bottom-content">
<p class="price">Start From: <span>$700.00</span></p>
<a href="javascript:void(0)" class="like"><i class="lni lni-heart"></i></a>
</div>
</div>
</div>

</div>
<div class="col-lg-4 col-md-6 col-12">

<div class="single-grid wow fadeInUp" data-wow-delay=".2s">
<div class="image">
<a href="item-details.html" class="thumbnail"><img src="assets/images/items-grid/img4.jpg" alt="#"></a>
<div class="author">
<div class="author-image">
<a href="javascript:void(0)"><img src="assets/images/items-grid/author-4.jpg" alt="#">
<span>Jesia Jully</span></a>
</div>
<p class="sale">For Sale</p>
</div>
</div>
<div class="content">
<div class="top-content">
<a href="javascript:void(0)" class="tag">Vehicles</a>
<h3 class="title">
<a href="item-details.html">BMW 5 Series GT Car</a>
</h3>
<p class="update-time">Last Updated: 4 hours ago</p>
<ul class="rating">
<li><i class="lni lni-star-filled"></i></li>
<li><i class="lni lni-star-filled"></i></li>
<li><i class="lni lni-star-filled"></i></li>
<li><i class="lni lni-star-filled"></i></li>
<li><i class="lni lni-star-filled"></i></li>
<li><a href="javascript:void(0)">(35)</a></li>
</ul>
<ul class="info-list">
<li><a href="javascript:void(0)"><i class="lni lni-map-marker"></i> New York, US</a></li>
<li><a href="javascript:void(0)"><i class="lni lni-timer"></i> Apr 12, 2023</a></li>
</ul>
</div>
<div class="bottom-content">
<p class="price">Start From: <span>$1000.00</span></p>
<a href="javascript:void(0)" class="like"><i class="lni lni-heart"></i></a>
</div>
</div>
</div>

</div>
<div class="col-lg-4 col-md-6 col-12">

<div class="single-grid wow fadeInUp" data-wow-delay=".4s">
<div class="image">
<a href="item-details.html" class="thumbnail"><img src="assets/images/items-grid/img5.jpg" alt="#"></a>
<div class="author">
<div class="author-image">
<a href="javascript:void(0)"><img src="assets/images/items-grid/author-5.jpg" alt="#">
<span>Thomas Deco</span></a>
</div>
<p class="sale">For Sale</p>
</div>
<p class="item-position"><i class="lni lni-bolt"></i> Featured</p>
</div>
<div class="content">
<div class="top-content">
<a href="javascript:void(0)" class="tag">Apple</a>
<h3 class="title">
<a href="item-details.html">Apple Macbook Pro 13 Inch</a>
</h3>
 <p class="update-time">Last Updated: 5 hours ago</p>
<ul class="rating">
<li><i class="lni lni-star-filled"></i></li>
<li><i class="lni lni-star-filled"></i></li>
<li><i class="lni lni-star-filled"></i></li>
<li><i class="lni lni-star-filled"></i></li>
<li><i class="lni lni-star-filled"></i></li>
<li><a href="javascript:void(0)">(35)</a></li>
</ul>
<ul class="info-list">
<li><a href="javascript:void(0)"><i class="lni lni-map-marker"></i> Louis, Missouri, US</a></li>
<li><a href="javascript:void(0)"><i class="lni lni-timer"></i> May 25, 2023</a></li>
</ul>
</div>
<div class="bottom-content">
<p class="price">Start From: <span>$550.00</span></p>
<a href="javascript:void(0)" class="like"><i class="lni lni-heart"></i></a>
</div>
</div>
</div>

</div>
<div class="col-lg-4 col-md-6 col-12">

<div class="single-grid wow fadeInUp" data-wow-delay=".6s">
<div class="image">
<a href="item-details.html" class="thumbnail"><img src="assets/images/items-grid/img6.jpg" alt="#"></a>
<div class="author">
<div class="author-image">
<a href="javascript:void(0)"><img src="assets/images/items-grid/author-6.jpg" alt="#">
<span>Jonson zack</span></a>
</div>
<p class="sale">For Sale</p>
</div>
</div>
<div class="content">
<div class="top-content">
<a href="javascript:void(0)" class="tag">Restaurant</a>
<h3 class="title">
<a href="item-details.html">Cream Restaurant</a>
</h3>
<p class="update-time">Last Updated: 7 hours ago</p>
<ul class="rating">
<li><i class="lni lni-star-filled"></i></li>
<li><i class="lni lni-star-filled"></i></li>
<li><i class="lni lni-star-filled"></i></li>
<li><i class="lni lni-star-filled"></i></li>
<li><i class="lni lni-star-filled"></i></li>
<li><a href="javascript:void(0)">(20)</a></li>
</ul>
<ul class="info-list">
<li><a href="javascript:void(0)"><i class="lni lni-map-marker"></i> New York, US</a></li>
<li><a href="javascript:void(0)"><i class="lni lni-timer"></i> Feb 18, 2023</a></li>
</ul>
</div>
<div class="bottom-content">
<p class="price">Start From: <span>$500.00</span></p>
<a href="javascript:void(0)" class="like"><i class="lni lni-heart"></i></a>
</div>
</div>
</div>

</div>
</div>
</div>
</div>
</section>

<section class="items-tab section">
<div class="container">
<div class="row">
<div class="col-12">
<div class="section-title">
<h2 class="wow fadeInUp" data-wow-delay=".4s">Trending Ads</h2>
<p class="wow fadeInUp" data-wow-delay=".6s">There are many variations of passages of Lorem
Ipsum available, but the majority have suffered alteration in some form.</p>
</div>
</div>
</div>
<div class="row">
<div class="col-12">
<nav>
<div class="nav nav-tabs" id="nav-tab" role="tablist">
<button class="nav-link active" id="nav-latest-tab" data-bs-toggle="tab" data-bs-target="#nav-latest" type="button" role="tab" aria-controls="nav-latest" aria-selected="true">Latest Ads</button>
<button class="nav-link" id="nav-popular-tab" data-bs-toggle="tab" data-bs-target="#nav-popular" type="button" role="tab" aria-controls="nav-popular" aria-selected="false">Popular Ads</button>
<button class="nav-link" id="nav-random-tab" data-bs-toggle="tab" data-bs-target="#nav-random" type="button" role="tab" aria-controls="nav-random" aria-selected="false">Random Ads</button>
</div>
</nav>
<div class="tab-content" id="nav-tabContent">
<div class="tab-pane fade show active" id="nav-latest" role="tabpanel" aria-labelledby="nav-latest-tab">
<div class="row">
<div class="col-lg-3 col-md-4 col-12">

<div class="single-item-grid">
<div class="image">
<a href="item-details.html"><img src="assets/images/items-tab/item-1.jpg" alt="#"></a>
<i class=" cross-badge lni lni-bolt"></i>
<span class="flat-badge sale">Sale</span>
</div>
<div class="content">
<a href="javascript:void(0)" class="tag">Mobile</a>
<h3 class="title">
<a href="item-details.html">Apple Iphone X</a>
</h3>
<p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
</i>Boston</a></p>
<ul class="info">
<li class="price">$890.00</li>
<li class="like"><a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
</li>
</ul>
</div>
</div>

</div>
<div class="col-lg-3 col-md-4 col-12">

<div class="single-item-grid">
<div class="image">
<a href="item-details.html"><img src="assets/images/items-tab/item-2.jpg" alt="#"></a>
<i class=" cross-badge lni lni-bolt"></i>
<span class="flat-badge sale">Sale</span>
</div>
<div class="content">
<a href="javascript:void(0)" class="tag">Others</a>
<h3 class="title">
<a href="item-details.html">Travel Kit</a>
</h3>
<p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
</i>San Francisco</a></p>
<ul class="info">
<li class="price">$580.00</li>
<li class="like"><a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
</li>
</ul>
</div>
</div>

</div>
<div class="col-lg-3 col-md-4 col-12">

<div class="single-item-grid">
<div class="image">
<a href="item-details.html"><img src="assets/images/items-tab/item-3.jpg" alt="#"></a>
<i class=" cross-badge lni lni-bolt"></i>
 <span class="flat-badge sale">Sale</span>
</div>
<div class="content">
<a href="javascript:void(0)" class="tag">Electronic</a>
<h3 class="title">
<a href="item-details.html">Nikon DSLR Camera</a>
</h3>
<p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
</i>Alaska, USA</a></p>
<ul class="info">
<li class="price">$560.00</li>
<li class="like"><a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
</li>
</ul>
</div>
</div>

</div>
<div class="col-lg-3 col-md-4 col-12">

<div class="single-item-grid">
<div class="image">
<a href="item-details.html"><img src="assets/images/items-tab/item-4.jpg" alt="#"></a>
<i class=" cross-badge lni lni-bolt"></i>
<span class="flat-badge sale">Sale</span>
</div>
<div class="content">
<a href="javascript:void(0)" class="tag">Furniture</a>
<h3 class="title">
<a href="item-details.html">Poster Paint</a>
</h3>
<p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
</i>Las Vegas</a></p>
<ul class="info">
<li class="price">$85.00</li>
<li class="like"><a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
</li>
</ul>
</div>
</div>

</div>
<div class="col-lg-3 col-md-4 col-12">

<div class="single-item-grid">
<div class="image">
<a href="item-details.html"><img src="assets/images/items-tab/item-5.jpg" alt="#"></a>
<i class=" cross-badge lni lni-bolt"></i>
<span class="flat-badge sale">Sale</span>
</div>
<div class="content">
<a href="javascript:void(0)" class="tag">Furniture</a>
<h3 class="title">
<a href="item-details.html">Official Metting Chair</a>
</h3>
<p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
</i>Alaska, USA</a></p>
<ul class="info">
<li class="price">$750.00</li>
<li class="like"><a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
</li>
</ul>
</div>
</div>

</div>
<div class="col-lg-3 col-md-4 col-12">

<div class="single-item-grid">
<div class="image">
<a href="item-details.html"><img src="assets/images/items-tab/item-6.jpg" alt="#"></a>
<i class=" cross-badge lni lni-bolt"></i>
<span class="flat-badge rent">Rent</span>
</div>
<div class="content">
<a href="javascript:void(0)" class="tag">Books & Magazine</a>
<h3 class="title">
<a href="item-details.html">Story Book</a>
</h3>
<p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
</i>New York, USA</a></p>
<ul class="info">
<li class="price">$120.00</li>
<li class="like"><a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
</li>
</ul>
</div>
</div>

</div>
<div class="col-lg-3 col-md-4 col-12">

<div class="single-item-grid">
<div class="image">
<a href="item-details.html"><img src="assets/images/items-tab/item-7.jpg" alt="#"></a>
<i class=" cross-badge lni lni-bolt"></i>
<span class="flat-badge sale">Sale</span>
</div>
<div class="content">
<a href="javascript:void(0)" class="tag">Electronic</a>
<h3 class="title">
<a href="item-details.html">Cctv camera</a>
</h3>
<p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
</i>Delhi, India</a></p>
<ul class="info">
<li class="price">$350.00</li>
<li class="like"><a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
</li>
</ul>
 </div>
</div>

</div>
<div class="col-lg-3 col-md-4 col-12">

<div class="single-item-grid">
<div class="image">
<a href="item-details.html"><img src="assets/images/items-tab/item-8.jpg" alt="#"></a>
<i class=" cross-badge lni lni-bolt"></i>
<span class="flat-badge sale">Sale</span>
</div>
<div class="content">
<a href="javascript:void(0)" class="tag">Mobile</a>
<h3 class="title">
<a href="item-details.html">Samsung Glalaxy S8</a>
</h3>
<p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
</i>Delaware, USA</a></p>
<ul class="info">
<li class="price">$299.00</li>
<li class="like"><a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
</li>
</ul>
</div>
</div>

</div>
</div>
</div>
<div class="tab-pane fade" id="nav-popular" role="tabpanel" aria-labelledby="nav-popular-tab">
<div class="row">
<div class="col-lg-3 col-md-4 col-12">

<div class="single-item-grid">
<div class="image">
<a href="item-details.html"><img src="assets/images/items-tab/item-2.jpg" alt="#"></a>
<i class=" cross-badge lni lni-bolt"></i>
<span class="flat-badge sale">Sale</span>
</div>
<div class="content">
<a href="javascript:void(0)" class="tag">Others</a>
<h3 class="title">
<a href="item-details.html">Travel Kit</a>
</h3>
<p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
</i>San Francisco</a></p>
<ul class="info">
<li class="price">$580.00</li>
<li class="like"><a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
</li>
</ul>
</div>
</div>

</div>
<div class="col-lg-3 col-md-4 col-12">

 <div class="single-item-grid">
<div class="image">
<a href="item-details.html"><img src="assets/images/items-tab/item-3.jpg" alt="#"></a>
<i class=" cross-badge lni lni-bolt"></i>
<span class="flat-badge sale">Sale</span>
</div>
<div class="content">
<a href="javascript:void(0)" class="tag">Electronic</a>
<h3 class="title">
<a href="item-details.html">Nikon DSLR Camera</a>
</h3>
<p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
</i>Alaska, USA</a></p>
<ul class="info">
<li class="price">$560.00</li>
<li class="like"><a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
</li>
</ul>
</div>
</div>

</div>
<div class="col-lg-3 col-md-4 col-12">

<div class="single-item-grid">
<div class="image">
<a href="item-details.html"><img src="assets/images/items-tab/item-1.jpg" alt="#"></a>
<i class=" cross-badge lni lni-bolt"></i>
<span class="flat-badge sale">Sale</span>
</div>
<div class="content">
<a href="javascript:void(0)" class="tag">Mobile</a>
<h3 class="title">
<a href="item-details.html">Apple Iphone X</a>
</h3>
<p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
</i>Boston</a></p>
<ul class="info">
<li class="price">$890.00</li>
<li class="like"><a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
</li>
</ul>
</div>
</div>

</div>
<div class="col-lg-3 col-md-4 col-12">

<div class="single-item-grid">
<div class="image">
<a href="item-details.html"><img src="assets/images/items-tab/item-4.jpg" alt="#"></a>
<i class=" cross-badge lni lni-bolt"></i>
<span class="flat-badge sale">Sale</span>
</div>
<div class="content">
<a href="javascript:void(0)" class="tag">Furniture</a>
<h3 class="title">
<a href="item-details.html">Poster Paint</a>
</h3>
<p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
</i>Las Vegas</a></p>
<ul class="info">
<li class="price">$85.00</li>
<li class="like"><a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
</li>
</ul>
</div>
</div>

</div>
<div class="col-lg-3 col-md-4 col-12">

<div class="single-item-grid">
<div class="image">
<a href="item-details.html"><img src="assets/images/items-tab/item-7.jpg" alt="#"></a>
<i class=" cross-badge lni lni-bolt"></i>
<span class="flat-badge sale">Sale</span>
</div>
<div class="content">
<a href="javascript:void(0)" class="tag">Electronic</a>
<h3 class="title">
<a href="item-details.html">Cctv camera</a>
</h3>
<p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
</i>Delhi, India</a></p>
<ul class="info">
<li class="price">$350.00</li>
<li class="like"><a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
</li>
</ul>
</div>
</div>

</div>
<div class="col-lg-3 col-md-4 col-12">

<div class="single-item-grid">
<div class="image">
<a href="item-details.html"><img src="assets/images/items-tab/item-8.jpg" alt="#"></a>
<i class=" cross-badge lni lni-bolt"></i>
<span class="flat-badge sale">Sale</span>
</div>
<div class="content">
<a href="javascript:void(0)" class="tag">Mobile</a>
<h3 class="title">
<a href="item-details.html">Samsung Glalaxy S8</a>
</h3>
<p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
</i>Delaware, USA</a></p>
<ul class="info">
 <li class="price">$299.00</li>
<li class="like"><a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
</li>
</ul>
</div>
</div>

</div>
<div class="col-lg-3 col-md-4 col-12">

<div class="single-item-grid">
<div class="image">
<a href="item-details.html"><img src="assets/images/items-tab/item-5.jpg" alt="#"></a>
<i class=" cross-badge lni lni-bolt"></i>
<span class="flat-badge sale">Sale</span>
</div>
<div class="content">
<a href="javascript:void(0)" class="tag">Furniture</a>
<h3 class="title">
<a href="item-details.html">Official Metting Chair</a>
</h3>
<p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
</i>Alaska, USA</a></p>
<ul class="info">
<li class="price">$750.00</li>
<li class="like"><a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
</li>
</ul>
</div>
</div>

</div>
<div class="col-lg-3 col-md-4 col-12">

<div class="single-item-grid">
<div class="image">
<a href="item-details.html"><img src="assets/images/items-tab/item-6.jpg" alt="#"></a>
<i class=" cross-badge lni lni-bolt"></i>
<span class="flat-badge rent">Rent</span>
</div>
<div class="content">
<a href="javascript:void(0)" class="tag">Books & Magazine</a>
<h3 class="title">
<a href="item-details.html">Story Book</a>
</h3>
<p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
</i>New York, USA</a></p>
<ul class="info">
<li class="price">$120.00</li>
<li class="like"><a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
</li>
</ul>
</div>
</div>

</div>
</div>
</div>
 <div class="tab-pane fade" id="nav-random" role="tabpanel" aria-labelledby="nav-random-tab">
<div class="row">
<div class="col-lg-3 col-md-4 col-12">

<div class="single-item-grid">
<div class="image">
<a href="item-details.html"><img src="assets/images/items-tab/item-3.jpg" alt="#"></a>
<i class=" cross-badge lni lni-bolt"></i>
<span class="flat-badge sale">Sale</span>
</div>
<div class="content">
<a href="javascript:void(0)" class="tag">Electronic</a>
<h3 class="title">
<a href="item-details.html">Nikon DSLR Camera</a>
</h3>
<p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
</i>Alaska, USA</a></p>
<ul class="info">
<li class="price">$560.00</li>
<li class="like"><a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
</li>
</ul>
</div>
</div>

</div>
<div class="col-lg-3 col-md-4 col-12">

<div class="single-item-grid">
<div class="image">
<a href="item-details.html"><img src="assets/images/items-tab/item-4.jpg" alt="#"></a>
<i class=" cross-badge lni lni-bolt"></i>
<span class="flat-badge sale">Sale</span>
</div>
<div class="content">
<a href="javascript:void(0)" class="tag">Furniture</a>
<h3 class="title">
<a href="item-details.html">Poster Paint</a>
</h3>
<p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
</i>Las Vegas</a></p>
<ul class="info">
<li class="price">$85.00</li>
<li class="like"><a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
</li>
</ul>
</div>
</div>

</div>
<div class="col-lg-3 col-md-4 col-12">

<div class="single-item-grid">
<div class="image">
<a href="item-details.html"><img src="assets/images/items-tab/item-5.jpg" alt="#"></a>
 <i class=" cross-badge lni lni-bolt"></i>
<span class="flat-badge sale">Sale</span>
</div>
<div class="content">
<a href="javascript:void(0)" class="tag">Furniture</a>
<h3 class="title">
<a href="item-details.html">Official Metting Chair</a>
</h3>
<p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
</i>Alaska, USA</a></p>
<ul class="info">
<li class="price">$750.00</li>
<li class="like"><a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
</li>
</ul>
</div>
</div>

</div>
<div class="col-lg-3 col-md-4 col-12">

<div class="single-item-grid">
<div class="image">
<a href="item-details.html"><img src="assets/images/items-tab/item-1.jpg" alt="#"></a>
<i class=" cross-badge lni lni-bolt"></i>
<span class="flat-badge sale">Sale</span>
</div>
<div class="content">
<a href="javascript:void(0)" class="tag">Mobile</a>
<h3 class="title">
<a href="item-details.html">Apple Iphone X</a>
</h3>
<p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
</i>Boston</a></p>
<ul class="info">
<li class="price">$890.00</li>
<li class="like"><a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
</li>
</ul>
</div>
</div>

</div>
<div class="col-lg-3 col-md-4 col-12">

<div class="single-item-grid">
<div class="image">
<a href="item-details.html"><img src="assets/images/items-tab/item-2.jpg" alt="#"></a>
<i class=" cross-badge lni lni-bolt"></i>
<span class="flat-badge sale">Sale</span>
</div>
<div class="content">
<a href="javascript:void(0)" class="tag">Others</a>
<h3 class="title">
<a href="item-details.html">Travel Kit</a>
 </h3>
<p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
</i>San Francisco</a></p>
<ul class="info">
<li class="price">$580.00</li>
<li class="like"><a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
</li>
</ul>
</div>
</div>

</div>
<div class="col-lg-3 col-md-4 col-12">

<div class="single-item-grid">
<div class="image">
<a href="item-details.html"><img src="assets/images/items-tab/item-6.jpg" alt="#"></a>
<i class=" cross-badge lni lni-bolt"></i>
<span class="flat-badge rent">Rent</span>
</div>
<div class="content">
<a href="javascript:void(0)" class="tag">Books & Magazine</a>
<h3 class="title">
<a href="item-details.html">Story Book</a>
</h3>
<p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
</i>New York, USA</a></p>
<ul class="info">
<li class="price">$120.00</li>
<li class="like"><a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
</li>
</ul>
</div>
</div>

</div>
<div class="col-lg-3 col-md-4 col-12">

<div class="single-item-grid">
<div class="image">
<a href="item-details.html"><img src="assets/images/items-tab/item-7.jpg" alt="#"></a>
<i class=" cross-badge lni lni-bolt"></i>
<span class="flat-badge sale">Sale</span>
</div>
<div class="content">
<a href="javascript:void(0)" class="tag">Electronic</a>
<h3 class="title">
<a href="item-details.html">Cctv camera</a>
</h3>
<p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
</i>Delhi, India</a></p>
<ul class="info">
<li class="price">$350.00</li>
<li class="like"><a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
</li>
 </ul>
</div>
</div>

</div>
<div class="col-lg-3 col-md-4 col-12">

<div class="single-item-grid">
<div class="image">
<a href="item-details.html"><img src="assets/images/items-tab/item-8.jpg" alt="#"></a>
<i class=" cross-badge lni lni-bolt"></i>
<span class="flat-badge sale">Sale</span>
</div>
<div class="content">
<a href="javascript:void(0)" class="tag">Mobile</a>
<h3 class="title">
<a href="item-details.html">Samsung Glalaxy S8</a>
</h3>
<p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
</i>Delaware, USA</a></p>
<ul class="info">
<li class="price">$299.00</li>
<li class="like"><a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
</li>
</ul>
</div>
</div>

</div>
</div>
</div>
</div>
</div>
</div>
</div>
</section>


<section class="testimonials section">
<div class="container">
<div class="row">
<div class="col-12">
<div class="section-title align-center gray-bg">
<h2 class="wow fadeInUp" data-wow-delay=".4s">What People Say</h2>
<p class="wow fadeInUp" data-wow-delay=".6s">There are many variations of passages of Lorem
Ipsum available, but the majority have suffered alteration in some form.</p>
</div>
</div>
</div>
<div class="row testimonial-slider">
<div class="col-lg-4 col-md-6 col-12">

<div class="single-testimonial">
<div class="quote-icon">
<i class="lni lni-quotation"></i>
</div>
<div class="author">
<img src="assets/images/testimonial/testi1.jpg" alt="#">
<h4 class="name">
Jane Anderson
<span class="deg">Founder & CEO</span>
</h4>
</div>
<div class="text">
<p>"It’s amazing how much easier it has been to meet new people and create instant
connections. I have the exact same personality, the only thing that has changed is my
mindset and a few behaviors."</p>
</div>
</div>

</div>
<div class="col-lg-4 col-md-6 col-12">

<div class="single-testimonial">
<div class="quote-icon">
<i class="lni lni-quotation"></i>
</div>
<div class="author">
<img src="assets/images/testimonial/testi2.jpg" alt="#">
<h4 class="name">
Devid Samuyel
<span class="deg">Web Developer</span>
</h4>
</div>
<div class="text">
<p>"It’s amazing how much easier it has been to meet new people and create instant
connections. I have the exact same personality, the only thing that has changed is my
mindset and a few behaviors."</p>
</div>
</div>

</div>
<div class="col-lg-4 col-md-6 col-12">

<div class="single-testimonial">
<div class="quote-icon">
<i class="lni lni-quotation"></i>
</div>
<div class="author">
<img src="assets/images/testimonial/testi3.jpg" alt="#">
<h4 class="name">
Jully Sulli
<span class="deg">Ui/Ux Designer</span>
</h4>
</div>
<div class="text">
<p>"It’s amazing how much easier it has been to meet new people and create instant
connections. I have the exact same personality, the only thing that has changed is my
mindset and a few behaviors."</p>
</div>
</div>

</div>
</div>
</div>
</section>

<div class="latest-news-area section">
<div class="container">
<div class="row">
<div class="col-12">
<div class="section-title">
<h2 class="wow fadeInUp" data-wow-delay=".4s">latest news</h2>
<p class="wow fadeInUp" data-wow-delay=".6s">There are many variations of passages of Lorem
Ipsum available, but the majority have suffered alteration in some form.</p>
</div>
</div>
</div>
<div class="row">
<div class="col-lg-4 col-md-6 col-12">

<div class="single-news wow fadeInUp" data-wow-delay=".3s">
<div class="image">
<a href="blog-single-sidebar.html"><img class="thumb" src="assets/images/blog/blog1.jpg" alt="#"></a>
</div>
<div class="content-body">
<h4 class="title"><a href="blog-single-sidebar.html">10 Things Successful Mompreneurs Do
Different</a></h4>
<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quis soluta libero molestiae,
id reiciendis ipsum. </p>
<div class="meta-details">
<ul>
<li><a href="javascript:void(0)">Jan 24,2023</a></li>
<li><a href="javascript:void(0)">Technology</a></li>
</ul>
</div>
</div>
</div>

</div>
<div class="col-lg-4 col-md-6 col-12">

<div class="single-news wow fadeInUp" data-wow-delay=".5s">
<div class="image">
<a href="blog-single-sidebar.html"><img class="thumb" src="assets/images/blog/blog2.jpg" alt="#"></a>
</div>
<div class="content-body">
<h4 class="title"><a href="blog-single-sidebar.html">A digital prescription for the industry.</a>
</h4>
<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quis soluta libero molestiae,
id reiciendis ipsum. </p>
<div class="meta-details">
<ul>
<li><a href="javascript:void(0)">Feb 20,2023</a></li>
<li><a href="javascript:void(0)">Magazine</a></li>
</ul>
</div>
</div>
</div>

</div>
<div class="col-lg-4 col-md-6 col-12">

<div class="single-news wow fadeInUp" data-wow-delay=".7s">
<div class="image">
<a href="blog-single-sidebar.html"><img class="thumb" src="assets/images/blog/blog3.jpg" alt="#"></a>
</div>
<div class="content-body">
<h4 class="title"><a href="blog-single-sidebar.html">Strategic & commercial approach with
issues.</a></h4>
<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quis soluta libero molestiae,
id reiciendis ipsum. </p>
<div class="meta-details">
<ul>
<li><a href="javascript:void(0)">Mar 15,2023</a></li>
<li><a href="javascript:void(0)">Technology</a></li>
</ul>
</div>
</div>
</div>

</div>
</div>
</div>
</div>

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