<%@ page language="java" contentType="text/html; charset=utf-8" 
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
<meta charset="utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge" />
<title>ClassiGrids - Classified Ads and Listing Website Template</title>
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
<a class=" active dd-menu collapsed" href="javascript:void(0)" data-bs-toggle="collapse" data-bs-target="#submenu-1-1" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">Home</a>
<ul class="sub-menu collapse" id="submenu-1-1">
<li class="nav-item"><a href=".">Home Default</a></li>
<li class="nav-item active"><a href=".">Home Version 2</a></li>
<li class="nav-item"><a href=".">Home Version 3</a></li>
</ul>
</li>
 <li class="nav-item">
<a href="search.do" aria-label="Toggle navigation">Categories</a>
</li>
<li class="nav-item">
<a class=" dd-menu collapsed" href="javascript:void(0)" data-bs-toggle="collapse" data-bs-target="#submenu-1-3" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">Listings</a>
<ul class="sub-menu collapse" id="submenu-1-3">
<li class="nav-item"><a href="item-listing-grid.html">Ad Grid</a></li>
<li class="nav-item"><a href="item-listing-list.html">Ad Listing</a></li>
<li class="nav-item"><a href="item-details.html">Ad Details</a></li>
</ul>
</li>
<li class="nav-item">
<a class=" dd-menu collapsed" href="javascript:void(0)" data-bs-toggle="collapse" data-bs-target="#submenu-1-4" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">Pages</a>
<ul class="sub-menu mega-menu collapse" id="submenu-1-4">
<li class="single-block">
<ul>
<li class="mega-menu-title">Essential Pages</li>
<li class="nav-item"><a href="about-us.html">About Us</a></li>
<li class="nav-item"><a href="item-details.html">Ads Details</a></li>
<li class="nav-item"><a href="post-item.html">Ads Post</a></li>
<li class="nav-item"><a href="pricing.html">Pricing Table</a></li>
<li class="nav-item"><a href="registration.html">Sign Up</a></li>
<li class="nav-item"><a href="login.do">Sign In</a></li>
<li class="nav-item"><a href="contact.html">Contact Us</a></li>
<li class="nav-item"><a href="faq.html">FAQ</a></li>
<li class="nav-item"><a href="404.html">Error Page</a></li>
<li class="nav-item"><a href="mail-success.html">Mail Success</a>
</li>
<li class="nav-item"><a href="coming-soon.html">Comming Soon</a>
</li>
</ul>
</li>
<li class="single-block">
<ul>
<li class="mega-menu-title">Dashboard</li>
<li class="nav-item"><a href="dashboard.html">Account Overview</a>
</li>
<li class="nav-item"><a href="profile-settings.html">My Profile</a>
</li>
<li class="nav-item"><a href="my-items.html">My Ads</a></li>
<li class="nav-item"><a href="favourite-items.html">Favorite Ads</a>
</li>
<li class="nav-item"><a href="post-item.html">Ad post</a></li>
<li class="nav-item"><a href="bookmarked-items.html">Bookmarked Ad</a>
</li>
<li class="nav-item"><a href="messages.html">Messages</a></li>
<li class="nav-item"><a href="delete-account.html">Close account</a>
</li>
<li class="nav-item"><a href="invoice.html">Invoice</a></li>
</ul>
</li>
</ul>
</li>
<li class="nav-item">
<a class=" dd-menu collapsed" href="javascript:void(0)" data-bs-toggle="collapse" data-bs-target="#submenu-1-5" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">Blog</a>
<ul class="sub-menu collapse" id="submenu-1-5">
<li class="nav-item"><a href="blog-grid-sidebar.html">Blog Grid Sidebar</a>
</li>
<li class="nav-item"><a href="blog-single.html">Blog Single</a></li>
<li class="nav-item"><a href="blog-single-sidebar.html">Blog Single
Sibebar</a></li>
</ul>
</li>
</ul>
</div> 
<div class="login-button">
<ul>
<li>
<a href="login.do"><i class="lni lni-enter"></i> 로그인</a>
</li>
<li>
<a href="registration.html"><i class="lni lni-user"></i> Register</a>
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
<h2>Welcome to ClassiGrids</h2>
<p>Buy And Sell Everything From Used Cars To Mobile Phones And <br>Computers,
Or Search For Property, Jobs And More.</p>
</div>

</div>
</div>
<div class="col-lg-5 col-md-12 col-12">
<form method="post" action="search.do">
<div class="search-form style2 wow fadeInRight" data-wow-delay=".5s">
<h3 class="heading-title">여서 검색혀</h3>
<p class="sub-heding-text">골라</p>
<div class="row">
<div class="col-12">
<div class="search-input">
<label for="category"><i class="lni lni-grid-alt theme-color"></i></label>
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
<label for="local"><i class="lni lni-map-marker theme-color"></i></label>
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
<label for="keyword"><i class="lni lni-search-alt theme-color"></i></label>
<input type="text" name="keyword" id="keyword" placeholder="Product keyword">
</div>
</div>
<div class="col-12">
<div class="search-btn button">
<button class="btn"><i class="lni lni-search-alt"></i> 검색</button>
</div>
</div>
</div>
</div>
</form>
</div>
</div>
</div>
</section>


<section class="categories style2">
<div class="container">
<div class="cat-inner">
<div class="row">
<div class="col-12">
<div class="section-title">
<h2 class="wow fadeInUp" data-wow-delay=".4s">카테고리</h2>
 <p class="wow fadeInUp" data-wow-delay=".6s">여기서 고르세요</p>
</div>
</div>
</div>
<div class="row">
<div class="col-lg-2 col-md-3 col-12">
<a href="category.html" class="single-cat wow fadeInUp" data-wow-delay=".2s">
<div class="icon">
<img src="resources/image/" alt="#">
</div>
<h3>식품</h3>
<h5 class="total">35</h5>
</a>
</div>

<div class="col-lg-2 col-md-3 col-12">
<a href="category.html" class="single-cat wow fadeInUp" data-wow-delay=".4s">
<div class="icon">
<img src="resources/image/child.png" alt="#">
</div>
<h3>유아</h3>
<h5 class="total">22</h5>
</a>
</div>

<div class="col-lg-2 col-md-3 col-12">
<a href="category.html" class="single-cat wow fadeInUp" data-wow-delay=".8s">
<div class="icon">
<img src="resources/image/" alt="#">
</div>
<h3>전자기기</h3>
<h5 class="total">21</h5>
</a>
</div>

<div class="col-lg-2 col-md-3 col-12">
<a href="category.html" class="single-cat wow fadeInUp" data-wow-delay="1s">
<div class="icon">
<img src="resources/image/makeup.png" alt="#">
</div>
<h3>뷰티</h3>
<h5 class="total">44</h5>
</a>
</div>

<div class="col-lg-2 col-md-3 col-12">
<a href="category.html" class="single-cat wow fadeInUp" data-wow-delay="1.2s">
<div class="icon">
<img src="resources/image/drug.png" alt="#">
</div>
<h3>의약품</h3>
<h5 class="total">65</h5>
</a>
</div>

<div class="col-lg-2 col-md-3 col-12">
<a href="category.html" class="single-cat wow fadeInUp" data-wow-delay="1.2s">
<div class="icon">
<img src="resources/image/" alt="#">
</div>
<h3>의류</h3>
<h5 class="total">65</h5>
</a>
</div>
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


<div class="newsletter section">
<div class="container">
<div class="inner-content">
<div class="row align-items-center">
<div class="col-lg-6 col-md-6 col-12">
<div class="title">
<i class="lni lni-alarm"></i>
<h2>Newsletter</h2>
<p>We don't send spam so don't worry.</p>
</div>
</div>
<div class="col-lg-6 col-md-6 col-12">
<div class="form">
<form action="#" method="get" target="_blank" class="newsletter-form">
<input name="EMAIL" placeholder="Your email address" type="email">
<div class="button">
<button class="btn">Subscribe<span class="dir-part"></span></button>
</div>
</form>
</div>
</div>
</div>
</div>
</div>
</div>


<footer class="footer">

<div class="footer-top">
<div class="container">
<div class="row">
<div class="col-lg-3 col-md-6 col-12">

<div class="single-footer mobile-app">
<h3>Mobile Apps</h3>
<div class="app-button">
<a href="javascript:void(0)" class="btn">
<i class="lni lni-play-store"></i>
<span class="text">
<span class="small-text">Get It On</span>
Google Play
</span>
 </a>
<a href="javascript:void(0)" class="btn">
<i class="lni lni-apple"></i>
<span class="text">
<span class="small-text">Get It On</span>
App Store
</span>
</a>
</div>
</div>

</div>
<div class="col-lg-3 col-md-6 col-12">

<div class="single-footer f-link">
<h3>Locations</h3>
<div class="row">
<div class="col-lg-6 col-md-6 col-12">
<ul>
<li><a href="javascript:void(0)">Chicago</a></li>
<li><a href="javascript:void(0)">New York City</a></li>
<li><a href="javascript:void(0)">San Francisco</a></li>
<li><a href="javascript:void(0)">Washington</a></li>
<li><a href="javascript:void(0)">Boston</a></li>
</ul>
</div>
<div class="col-lg-6 col-md-6 col-12">
<ul>
<li><a href="javascript:void(0)">Los Angeles</a></li>
<li><a href="javascript:void(0)">Seattle</a></li>
<li><a href="javascript:void(0)">Las Vegas</a></li>
<li><a href="javascript:void(0)">San Diego</a></li>
</ul>
</div>
</div>
</div>

</div>
<div class="col-lg-3 col-md-6 col-12">

<div class="single-footer f-link">
<h3>Quick Links</h3>
<ul>
<li><a href="javascript:void(0)">About Us</a></li>
<li><a href="javascript:void(0)">How It's Works</a></li>
<li><a href="javascript:void(0)">Login</a></li>
<li><a href="javascript:void(0)">Signup</a></li>
<li><a href="javascript:void(0)">Help & Support</a></li>
</ul>
</div>

</div>
<div class="col-lg-3 col-md-6 col-12">

<div class="single-footer f-contact">
<h3>Contact</h3>
<ul>
<li>23 New Design Str, Lorem Upsum 10<br> Hudson Yards, USA</li>
<li>Tel. +(123) 1800-567-8990 <br> Mail. <a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="dfacaaafafb0adab9fbcb3beacacb6b8adb6bbacf1bcb0b2">[email&#160;protected]</a></li>
</ul>
</div>

</div>
</div>
</div>
</div>


<div class="footer-bottom">
<div class="container">
<div class="inner">
<div class="row">
<div class="col-12">
<div class="content">
<ul class="footer-bottom-links">
<li><a href="javascript:void(0)">Terms of use</a></li>
<li><a href="javascript:void(0)"> Privacy Policy</a></li>
<li><a href="javascript:void(0)">Advanced Search</a></li>
<li><a href="javascript:void(0)">Site Map</a></li>
<li><a href="javascript:void(0)">Information</a></li>
</ul>
<p class="copyright-text">Designed and Developed by <a href="https://graygrids.com/" rel="nofollow" target="_blank">GrayGrids</a>
</p>
<ul class="footer-social">
<li><a href="javascript:void(0)"><i class="lni lni-facebook-filled"></i></a></li>
<li><a href="javascript:void(0)"><i class="lni lni-twitter-original"></i></a></li>
<li><a href="javascript:void(0)"><i class="lni lni-youtube"></i></a></li>
<li><a href="javascript:void(0)"><i class="lni lni-linkedin-original"></i></a></li>
</ul>
</div>
</div>
</div>
</div>
</div>
</div>

</footer>


<a href="#" class="scroll-top btn-hover">
<i class="lni lni-chevron-up"></i>
</a>

<script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
<script src="resources/js/wow.min.js"></script>
<script src="resources/js/tiny-slider.js"></script>
<script src="resources/js/glightbox.min.js"></script>
<script src="resources/js/count-up.min.js"></script>
<script src="resources/js/main.js"></script>
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