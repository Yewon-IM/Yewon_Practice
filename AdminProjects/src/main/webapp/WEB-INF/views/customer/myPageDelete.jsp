<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>  
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
<meta charset="utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge" />
<title>회원탈퇴</title>
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
<a class=" dd-menu collapsed" href="javascript:void(0)" data-bs-toggle="collapse" data-bs-target="#submenu-1-1" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">Home</a>
<ul class="sub-menu collapse" id="submenu-1-1">
<li class="nav-item"><a href=".">Home Default</a></li>
<li class="nav-item"><a href=".">Home Version 2</a></li>
<li class="nav-item"><a href=".">Home Version 3</a></li>
</ul>
</li>
<li class="nav-item">
 <a href="category.html" aria-label="Toggle navigation">Categories</a>
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
<a class=" active dd-menu collapsed" href="javascript:void(0)" data-bs-toggle="collapse" data-bs-target="#submenu-1-4" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">마이페이지</a>
<ul class="sub-menu mega-menu collapse" id="submenu-1-4">
<li class="single-block">
<ul>
<li class="nav-item"><a href="myPage.do">마이페이지</a>
</li>
<li class="nav-item"><a href="myPageUpdateForm.do">정보수정</a>
</li>
<li class="nav-item"><a href=".">가나다</a></li>
<li class="active nav-item"><a href="myPageDelete.do">회원탈퇴</a>
</li>
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
<p>${name } 고객님</p>
</li>
<li>
<a href="logout.do"><i class="lni lni-user"></i>로그아웃</a>
</li>
</ul>
</div>
</nav> 
</div>
</div>
</div> 
</div> 
</header>


<div class="breadcrumbs">
<div class="container">
<div class="row align-items-center">
<div class="col-lg-6 col-md-6 col-12">
<div class="breadcrumbs-content">
<h1 class="page-title">회원탈퇴</h1>
</div>
</div>
<div class="col-lg-6 col-md-6 col-12">
<ul class="breadcrumb-nav">
<li><a href=".">Home</a></li>
<li>회원탈퇴</li>
</ul>
</div>
</div>
</div>
</div>


<section class="dashboard section">
<div class="container">
<div class="row">
<div class="col-lg-3 col-md-4 col-12">

<div class="dashboard-sidebar">
<div class="user-image">
<img src="assets/images/dashboard/user-image.jpg" alt="#">
<h3>Steve Aldridge
<span><a href="javascript:void(0)">${name }</a></span>
</h3>
</div>
<div class="dashboard-menu">
<ul>
<li><a href="myPage.do"><i class="lni lni-dashboard"></i> 마이페이지</a></li>
<li><a href="myPageUpdateForm.do"><i class="lni lni-pencil-alt"></i>정보 수정</a></li>
<li><a href="my-items.html"><i class="lni lni-bolt-alt"></i> My Ads</a></li>
<li><a href="favourite-items.html"><i class="lni lni-heart"></i> Favourite ads</a></li>
<li><a href="post-item.html"><i class="lni lni-circle-plus"></i> Post An Ad</a></li>
<li><a href="bookmarked-items.html"><i class="lni lni-bookmark"></i> Bookmarked</a></li>
<li><a href="messages.html"><i class="lni lni-envelope"></i> Messages</a></li>
<li><a href="delete-account.html"><i class="lni lni-trash"></i> Close account</a></li>
<li><a class="active" href="myPageDelete.do"><i class="lni lni-printer"></i> 회원탈퇴</a></li>
</ul>
<div class="button">
<a class="btn" href="logout.do">Logout</a>
</div>
</div>
</div>

</div>
<div class="col-lg-9 col-md-8 col-12">
<div class="main-content">

<div class="dashboard-block mt-0 profile-settings-block">
<h3 class="block-title">회원탈퇴</h3>
<form method="post" action="myPageDeleteDo.do">
<h1>정말로 탈퇴 하시겠습니까?</h1>
<div class="col-12">
<div class="form-group button mb-0">
<button type="submit" class="btn">탈퇴하기</button>
</div>
</div>
</form>
</div>

</div>
</div>
</div>
</div>
</section>


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
<li>Tel. +(123) 1800-567-8990 <br> Mail. <a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="f4878184849b8680b497989587879d93869d9087da979b99">[email&#160;protected]</a></li>
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
<script src="resources/js/main.js"></script>
</body>
</html>