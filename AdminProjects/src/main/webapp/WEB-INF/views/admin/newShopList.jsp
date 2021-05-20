<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    
<%@page import="java.util.List"%>
<%@page import="com.yogi.hoxy.dtos.ShopDto"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<% 	List<ShopDto> sList = (List<ShopDto>) request.getAttribute("sList");  %>
<% String name = (String) session.getAttribute("name"); %>
<meta http-equiv="x-ua-compatible" content="ie=edge" />
<title>Bookmarked - ClassiGrids Classified Ads and Listing Website Template</title>
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
<a class=" active dd-menu collapsed" href="javascript:void(0)" data-bs-toggle="collapse" data-bs-target="#submenu-1-4" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">관리자페이지</a>
<ul class="sub-menu mega-menu collapse" id="submenu-1-4">
<li class="single-block">
<ul>
<li class="mega-menu-title">회원</li>
<li class="nav-item"><a href="newMemberList.do">신규회원</a></li>
<li class="nav-item"><a href="memberList.do">회원 리스트</a></li>
<li class="nav-item"><a href="delMemberList.do">탈퇴 회원</a></li>
</ul>
</li>
<li class="single-block">
<ul>
<li class="mega-menu-title">상점</li>
<li class=" active nav-item"><a href="newShopList.do">상점 승인</a></li>
<li class="nav-item"><a href="shopList.do">상점 리스트</a></li>
<li class="nav-item"><a href="delShopList.do">상점 삭제</a></li>
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
<a href="logout.do"><i class="lni lni-enter"></i> 로그아웃</a>
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
<h1 class="page-title">신규상점</h1>
</div>
</div>
<div class="col-lg-6 col-md-6 col-12">
<ul class="breadcrumb-nav">
<li><a href=".">Home</a></li>
<li>신규상점</li>
</ul>
</div>
</div>
</div>
</div>


<section class="dashboard section">
<div class="container">
<div class="row">
<div class="col-lg-3 col-md-12 col-12">

 <div class="dashboard-sidebar">
<div class="user-image">
<img src="assets/images/dashboard/user-image.jpg" alt="#">
<h3>Steve Aldridge
<span><a href="javascript:void(0)">${name }</a></span>
</h3>
</div>
<div class="dashboard-menu">
<ul>
<li><a href="dashboard.html"><i class="lni lni-dashboard"></i> Dashboard</a></li>
<li><a class="active" href="newShopList.do"><i class="lni lni-pencil-alt"></i>신규상점</a></li>
<li><a href="shopList.do"><i class="lni lni-bolt-alt"></i>상점 리스트</a></li>
<li><a href="delShopList.do"><i class="lni lni-heart"></i>삭제요청한 상점</a></li>
<li><a href="newMemberList.do"><i class="lni lni-circle-plus"></i>신규회원</a></li>
<li><a href="memberList.do"><i class="lni lni-bookmark"></i>회원리스트</a></li>
<li><a href="delMemberList.do"><i class="lni lni-envelope"></i>탈퇴회원</a></li>
<li><a href="delete-account.html"><i class="lni lni-trash"></i> Close account</a></li>
<li><a href="invoice.html"><i class="lni lni-printer"></i> Invoice</a></li>
</ul>
<div class="button">
<a class="btn" href="javascript:void(0)">Logout</a>
</div>
</div>
</div>

</div>
<div class="col-lg-9 col-md-12 col-12">
<div class="main-content">
<div class="dashboard-block mt-0">
<h3 class="block-title">신규상점</h3>

<div class="my-items">

<div class="item-list-title">
<div class="row align-items-center">
<div class="col-lg-2 col-md-2 col-12">
<p>아이디</p>
</div>
<div class="col-lg-2 col-md-2 col-12">
<p>상점이름</p>
</div>
<div class="col-lg-2 col-md-2 col-12">
<p>지역</p>
</div>
<div class="col-lg-2 col-md-2 col-12">
<p>삭제</p>
</div>
<div class="col-lg-2 col-md-2 col-12">
<p>요청날짜</p>
</div>
<div class="col-lg-2 col-md-2 col-12 align-right">
<p align="center">버튼</p>
</div>
</div>
</div>


<div class="single-item-list">
<div class="row align-items-center">
<%
	if(sList == null || sList.size() == 0){
		%>
		<p align="center">신규상점이 없습니다.</p>
		<%
	}else {
		for(ShopDto sdto : sList){
%>
<div class="col-lg-2 col-md-2 col-12">
<p><%=sdto.getId() %></p>
</div>
<div class="col-lg-2 col-md-2 col-12">
<p><%=sdto.getShopName() %></p>
</div>
<div class="col-lg-2 col-md-2 col-12">
<p><%=sdto.getLocal() %></p>
</div>	
<!-- <div class="col-lg-2 col-md-2 col-12"> -->
<%-- <p><% if (sdto.getPower().equals("0")){ --%>
<%-- 		%>out.println("미승인"); --%>
<%-- 	<%} else if (sdto.getPower().equals("1")){ --%>
<%-- 		%> out.println("승인"); --%>
<%-- 	<%} else { --%>
<%-- 		%> out.println("영업중지");	 --%>
<!-- 	} -->
<!-- 	%> -->
	
<!-- </p> -->
<!-- </div>	 -->
<div class="col-lg-2 col-md-2 col-12">
<p><% if(sdto.getDel().equals("0")){
	 out.println("정상");
	} else {
	 out.println("삭제요청");
	 }%>
</p>
</div>	
<div class="col-lg-2 col-md-2 col-12">
<p><fmt:formatDate pattern="yyyy-MM-dd" value="<%=sdto.getOpenDate() %>"/></p>
</div>
<div class="col-lg-2 col-md-2 col-12 align-center">
<ul class="action-btn">
<li><a href="admitShop.do?shopId=<%=sdto.getShopId()%>"><img src="resources/image/checked.png" alt="admit"></a></li> <!-- admit -->
<li><a href="deleteShop.do?shopId=<%=sdto.getShopId()%>"><img src="resources/image/delete.png" alt="delete"></a></li> <!-- delete -->
<li><a href="newShopDetail.do?id=<%=sdto.getId() %>&shopId=<%=sdto.getShopId()%>"><img src="resources/image/search.png" alt="detail"></a></li> <!-- detail -->
</ul>
</div>
		<%	}		
		}
		%>
</div>
</div>






<div class="pagination left">
<ul class="pagination-list">
<li class="active"><a href="javascript:void(0)">1</a></li>
<li><a href="javascript:void(0)">2</a></li>
<li><a href="javascript:void(0)">3</a></li>
<li><a href="javascript:void(0)">4</a></li>
<li><a href="javascript:void(0)"><i class="lni lni-chevron-right"></i></a></li>
</ul>
</div>

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
<li>Tel. +(123) 1800-567-8990 <br> Mail. <a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="85f6f0f5f5eaf7f1c5e6e9e4f6f6ece2f7ece1f6abe6eae8">[email&#160;protected]</a></li>
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