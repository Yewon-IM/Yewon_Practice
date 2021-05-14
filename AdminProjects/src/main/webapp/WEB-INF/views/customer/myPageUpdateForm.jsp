<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="x-ua-compatible" content="ie=edge" />
<title>마이페이지 수정하기</title>
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
<style type = "text/css">
	table{
		width:80%;
		margin:auto;
		height: 100px;
		text-align: center;
	}
</style>
</head>
<body>
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
<li class="active nav-item"><a href="myPageUpdateForm.do">정보수정</a>
</li>
<li class="nav-item"><a href=".">가나다</a></li>
<li class="nav-item"><a href="myPageDelete.do">회원탈퇴</a>
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
<p>${dto.name } 고객님</p>
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
<h1 class="page-title">정보수정</h1>
</div>
</div>
<div class="col-lg-6 col-md-6 col-12">
<ul class="breadcrumb-nav">
<li><a href=".">Home</a></li>
<li>정보수정</li>
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
<span><a href="javascript:void(0)">${dto.name }</a></span>
</h3>
</div>
<div class="dashboard-menu">
<ul>
<li><a href="myPage.do"><i class="lni lni-dashboard"></i> 마이페이지</a></li>
<li><a class="active" href="myPageUpdateForm.do"><i class="lni lni-pencil-alt"></i>정보 수정</a></li>
<li><a href="my-items.html"><i class="lni lni-bolt-alt"></i> My Ads</a></li>
<li><a href="favourite-items.html"><i class="lni lni-heart"></i> Favourite ads</a></li>
<li><a href="post-item.html"><i class="lni lni-circle-plus"></i> Post An Ad</a></li>
<li><a href="bookmarked-items.html"><i class="lni lni-bookmark"></i> Bookmarked</a></li>
<li><a href="messages.html"><i class="lni lni-envelope"></i> Messages</a></li>
<li><a href="delete-account.html"><i class="lni lni-trash"></i> Close account</a></li>
<li><a href="myPageDelete.do"><i class="lni lni-printer"></i> 회원탈퇴</a></li>
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
<h3 class="block-title">정보 수정</h3>
<div class="inner-block">
<div class="image">
<img src="assets/images/dashboard/user-image.jpg" alt="#">
</div>

<form class="profile-setting-form" method="post">
<div class="row">
<div class="col-lg-12 col-12">
<div class="form-group upload-image">
<label>Profile Image*</label>
<input name="profile-image" type="file" placeholder="Upload Image">
</div>
</div>
<div class="col-lg-6 col-12">
<div class="form-group">
<label>아이디</label>
<input type="text" value="${dto.id }" placeholder="아이디" readonly>
</div>
</div>
<div class="col-lg-6 col-12">
<div class="form-group">
<label>이름</label>
<input name="name" type="text" value="${dto.name }" placeholder="이름">
</div>
</div>
<div class="col-lg-6 col-12">
<div class="form-group">
<label>전화번호</label>
<input name="tel" type="text" value="${dto.tel }" placeholder="전화번호">
</div>
</div>
<div class="col-lg-6 col-12">
<div class="form-group">
 <label>이메일</label>
<input name="email" type="email" value="${dto.email }" placeholder="이메일">
</div>
</div>
<div class="col-lg-6 col-12">
<div class="form-group">
<label>비밀번호</label>
<input name="pwd" type="password" value="${dto.pwd }" placeholder="비밀번호">
</div>
</div>
<div class="col-lg-6 col-12">
<div class="form-group">
<label>비밀번호 한번 더 입력</label>
<input type="password" placeholder="비밀번호 한번 더 입력">
</div>
</div>
<div class="col-lg-6 col-12">
<div class="form-group">
<label>지역</label>
<input name="local" type="text" value="${dto.local }" placeholder="지역">
</div>
</div>
<div class="col-lg-6 col-12">
<div class="form-group">
<label>우편번호</label>
<input name="oAdd" type="text" value="${dto.oAdd }" placeholder="우편번호">
</div>
</div>
<div class="col-lg-6 col-12">
<div class="form-group">
<label>주소</label>
<input name="add" type="text" value="${dto.add }" placeholder="주소">
</div>
</div>
<div class="col-lg-6 col-12">
<div class="form-group">
<label>상세주소</label>
<input name="detailAdd" type="text" value="${dto.detailAdd }" placeholder="상세주소">
</div>
</div>
<div class="col-lg-6 col-12">
<div class="form-group">
<label>가입날짜</label>
<input value="<fmt:formatDate pattern="yyyy-MM-dd" value="${dto.regDate }" />" readonly>
</div>
</div>

<input type="hidden" name="power" value=${dto.power }>
<input type="hidden" name="who" value=${dto.who }>
<input type="hidden" name="del" value=${dto.del }>

<div class="col-12">
<div class="form-group button mb-0">
<button type="submit" class="btn" formaction="myPageUpdate.do?id=${dto.id }">수정하기</button>
</div>
</div>
</div>
</form>
</div>
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

<form method="post">
<table border="1">
	<th colspan="6">회원정보</th>
	<tr>
		<td>아아디</td>
		<td>이름</td>
		<td>비밀번호</td>
		<td>전화번호</td>
		<td>이메일</td>
		<td>지역</td>
		<td>우편번호</td>
		<td>주소</td>
		<td>상세주소</td>
		<td>가입일</td>
	</tr>
	<tr>
		<td>${dto.id }</td>
		<td><input type="text" name="name" value="${dto.name }"></td>
		<td><input type="password" name="pwd" value="${dto.pwd }"></td>
		<td><input type="text" name="tel"  value="${dto.tel }"></td>
		<td><input type="email" name="email" value="${dto.email }"></td>
		<td><input type="text" name="local" value="${dto.local }"></td>
		<td><input type="text" name="oAdd" value="${dto.oAdd }"></td>
		<td><input type="text" name="add" value="${dto.add }"></td>
		<td><input type="text" name="detailAdd" value="${dto.detailAdd }"></td>
		<td><fmt:formatDate pattern="yyyy-MM-dd" value="${dto.regDate }" /></td>
	</tr>
</table>
<input type="hidden" name="power" value=${dto.power }>
<input type="hidden" name="who" value=${dto.who }>
<input type="hidden" name="del" value=${dto.del }>

<input type="submit" value="수정하기" formaction="myPageUpdate.do?id=${dto.id }">
</form>
</body>
</html>