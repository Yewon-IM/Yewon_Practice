<%@page import="java.util.List"%>
<%@page import="com.yogi.hoxy.dtos.YHDto"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
<meta charset="utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge" />
<title>Registration - ClassiGrids Classified Ads and Listing Website Template</title>
<meta name="description" content="" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="shortcut icon" type="image/x-icon" href="resources/images/favicon.svg" />


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
<a class="navbar-brand" href="index.html">
<img src="resources/images/logo/logo.svg" alt="Logo">
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
<li class="nav-item"><a href="index.html">Home Default</a></li>
<li class="nav-item"><a href="index2.html">Home Version 2</a></li>
<li class="nav-item"><a href="index3.html">Home Version 3</a></li>
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
<a class=" active dd-menu collapsed" href="javascript:void(0)" data-bs-toggle="collapse" data-bs-target="#submenu-1-4" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">Pages</a>
<ul class="sub-menu mega-menu collapse" id="submenu-1-4">
<li class="single-block">
<ul>
<li class="mega-menu-title">Essential Pages</li>
<li class="nav-item"><a href="about-us.html">About Us</a></li>
<li class="nav-item"><a href="item-details.html">Ads Details</a></li>
<li class="nav-item"><a href="post-item.html">Ads Post</a></li>
<li class="nav-item"><a href="pricing.html">Pricing Table</a></li>
<li class="nav-item active"><a href="registration.html">Sign Up</a></li>
<li class="nav-item"><a href="login.html">Sign In</a></li>
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
<a href="login.do"><i class="lni lni-enter"></i>로그인</a>
</li>
<li>
<a href="registration.html"><i class="lni lni-user"></i> Register</a>
</li>
</ul>
</div>
<div class="button header-button">
<a href="post-item.html" class="btn">Post an Ad</a>
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
<h1 class="page-title">회원정보 수정</h1>
</div>
</div>
<div class="col-lg-6 col-md-6 col-12">
<ul class="breadcrumb-nav">
<li><a href="main.do">메인</a></li>
<li>회원정보 수정</li>
</ul>
</div>
</div>
</div>
</div>

<section class="login registration section">
<div class="container">
<div class="row">
<div class="col-lg-6 offset-lg-3 col-md-8 offset-md-2 col-12">
<div class="form-head">
<h4 class="title">회원정보 상세보기</h4>

<form method="post">
<div class="socila-login">
</div>

<div class="form-group">
<label>아이디</label>
<input name="id" type="text" value=${dto.id } readonly>
</div>

<div class="form-group">
<label>이름</label>
<input name="name" type="text" value=${dto.name } readonly>
</div>

<div class="form-group">
<label>비밀번호</label>
<input name="pwd" type="text" value=${dto.pwd } readonly>
</div>

<div class="form-group">
<label>전화번호</label>
<input name="tel" type="text" value=${dto.tel } readonly>
</div>

<div class="form-group">
<label>이메일</label>
<input name="email" type="email" value=${dto.email } readonly>
</div>

<div class="form-group">
<label>가입일</label>
<input name="regDate" value='<fmt:formatDate pattern = "yyyy/MM/dd" value = "${dto.regDate }"/>' readonly >
</div>

<div class="form-group">
<label>누구인가?</label>
<input name="who" type="text" value=
									<c:if test="${dto.who == 0}">
										"관리자"
									</c:if>
									<c:if test="${dto.who == 1}">
										"구매자"
									</c:if>			
									<c:if test="${dto.who == 2}">
										"판매자"
									</c:if>	 readonly>
</div>


<div class="form-group">
<label>승인여부</label>
<input name="power" type="text" value=
									<c:if test="${dto.power == 0 }">
										"승인 미완료"
									</c:if>
									<c:if test="${dto.power == 1}">
										"승인 완료"
									</c:if> readonly>
</div>
<div class="check-and-pass">
<div class="row align-items-center">
<div class="col-12">
</div>
</div>
</div>
<div class="button">
<input type="submit" class="btn" value="수정하기" formaction="memUpdateForm.do">
</div>
<div class="button">
<input type="submit" class="btn" value="삭제하기" formaction="delete.do">
</div>
<p class="outer-link">회원리스트로<a href="memberList.do"> 돌아가기</a>
</p>
</form>

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
</ul>
</div>
<div class="col-lg-6 col-md-6 col-12">
<ul>
<li><a href="javascript:void(0)">Los Angeles</a></li>
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
</ul>
</div>

</div>
<div class="col-lg-3 col-md-6 col-12">

 <div class="single-footer f-contact">
<h3>Contact</h3>
<ul>
<li>23 New Design Str, Lorem Upsum 10<br> Hudson Yards, USA</li>
<li>Tel. +(123) 1800-567-8990 <br> Mail. <a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="493a3c3939263b3d092a25283a3a202e3b202d3a672a2624">[email&#160;protected]</a></li>
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
</ul>
<p class="copyright-text">Designed and Developed by <a href="https://graygrids.com/" rel="nofollow" target="_blank">GrayGrids</a>
</p>
<ul class="footer-social">
<li><a href="javascript:void(0)"><i class="lni lni-facebook-filled"></i></a></li>
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

<form method="post">
	<table border="1">
		<th colspan="14">회원 세부정보</th>
		<tr>
			<td>아이디</td>
			<td>이름</td>
			<td>비밀번호</td>
			<td>전화번호</td>
			<td>이메일</td>
			<td>가입일</td>
			<td>누구인가?</td>
 			<td>승인여부</td> 
 			<td>가게이름</td> 
 			<td>가게주소</td> 
 			<td>지역</td> 
 			<td>사업자번호</td> 
 			<td>가게번호</td>
		</tr>
		<tr>
			<td width="50px"><a href="memUpdateForm.do?id=${dto.id }">${dto.id }</a></td>
			<td width="50px">${dto.name}</td>
			<td width="50px">${dto.pwd}</td>
			<td width="50px">${dto.tel}</td>
			<td width="50px">${dto.email}</td>
			<td width="50px">${dto.regDate}</td>
			<c:if test="${dto.who == 0}">
				<td width="50px">관리자</td>
			</c:if>
			<c:if test="${dto.who == 1}">
				<td width="50px">판매자</td>
			</c:if>			
			<c:if test="${dto.who == 2}">
				<td width="50px">구매자</td>
			</c:if>
							
 			<td width="40px">${dto.power}</td> 
 			<td width="40px">${dto.shopName}</td> 
 			<td width="40px">${dto.shopAdd}</td> 
 			<td width="40px">${dto.local}</td> 
 			<td width="30px">${dto.businessNum}</td> 
 			<td width="30px">${dto.shopId}</td>			 
		</tr>
		
	</table>
</form>
<a href=".">메인 홈페이지</a>
<a href="memberList.do">회원 관리페이지</a>	

<script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
<script src="resources/js/wow.min.js"></script>
<script src="resources/js/tiny-slider.js"></script>
<script src="resources/js/glightbox.min.js"></script>
<script src="resources/js/main.js"></script>
</body>
</html>