<%@page import="java.util.List"%>
<%@page import="com.yogi.hoxy.dtos.MemberShoppingDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>  
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
<% List<MemberShoppingDto> msList = (List<MemberShoppingDto>) request.getAttribute("msList"); %>
<meta charset="utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge" />
<title>YOGIHOXY - 오프라인 물건을 손쉽게 찾아보자</title>
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
<a href="http://localhost:8888/hoxy/" aria-label="Toggle navigation">홈</a>
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
<p>${dto.name } 고객님</p>
</li>
<li>
<a href="logout.do"><i class="fas fa-sign-out-alt"></i>로그아웃</a>
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
<h1 class="page-title">마이페이지</h1>
</div>
</div>
<div class="col-lg-6 col-md-6 col-12">
<ul class="breadcrumb-nav">
<li><a href=".">Home</a></li>
<li>마이페이지</li>
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
<img src="upload/member/${dto.profileImg }" alt="#">
<span>${dto.name }</span>

</div>
<div class="dashboard-menu">
<ul>
<li><a class="active" href="dashboard.html"><i class="far fa-file-alt"></i> 마이페이지</a></li>
<li><a href="myPageUpdateForm.do"><i class="fas fa-cog"></i> 정보 수정</a></li>
<li><a href="myPageDelete.do"><i class="far fa-angry"></i> 회원탈퇴</a></li></ul>
<div class="button">
<a class="btn" href="logout.do">Logout</a>
</div>
</div>
</div>

</div>
<div class="col-lg-9 col-md-8 col-121">
<div class="main-content">

<div class="details-lists">


<div class="row">
<!-- <div class="col-lg-6 col-md-12 col-12">

<div class="activity-log dashboard-block">
<h3 class="block-title">내가 좋아하는 상점</h3>
<ul>
<li>
<div class="log-icon">
<i class="lni lni-alarm"></i>
</div>
<a href="javascript:void(0)" class="title">Your Profile Updated!</a>
<span class="time">12 Minutes Ago</span>
<span class="remove"><a href="javascript:void(0)"><i class="lni lni-close"></i></a></span>
</li>
<li>
<div class="log-icon">
<i class="lni lni-alarm"></i>
</div>
<a href="javascript:void(0)" class="title">You change your password</a>
<span class="time">59 Minutes Ago</span>
<span class="remove"><a href="javascript:void(0)"><i class="lni lni-close"></i></a></span>
</li>
<li>
<div class="log-icon">
<i class="lni lni-alarm"></i>
</div>
<a href="javascript:void(0)" class="title">Your ads approved!</a>
<span class="time">5 Hours Ago</span>
<span class="remove"><a href="javascript:void(0)"><i class="lni lni-close"></i></a></span>
</li>
<li>
<div class="log-icon">
<i class="lni lni-alarm"></i>
</div>
<a href="javascript:void(0)" class="title">You submit a new ads</a>
<span class="time">8 hours Ago</span>
<span class="remove"><a href="javascript:void(0)"><i class="lni lni-close"></i></a></span>
</li>
<li>
<div class="log-icon">
<i class="lni lni-alarm"></i>
</div>
<a href="javascript:void(0)" class="title">You subscribe as a pro user!</a>
<span class="time">1 day Ago</span>
<span class="remove"><a href="javascript:void(0)"><i class="lni lni-close"></i></a></span>
</li>
</ul>
</div>

</div> -->






<div class="col-lg-12 col-md-12 col-12">
<div class="recent-items dashboard-block">
<h3 class="block-title">찜한 상품</h3>
<%
	if(msList == null || msList.size() == 0){
		%>
		<span>찜한 상품이 없습니다.
		<a href=""> 찜하러 가쉴? </a></span>
		<%
	}else {
		for(MemberShoppingDto msdto : msList){
%>
<ul>
<li>
<div class="image">
<a href="productDetail.do?product_seq=<%=msdto.getProduct_seq()%>"><img src="upload/product/<%=msdto.getProductDto().getImg_Url() %>" alt="#"></a>
</div>
<span class="time">카테고리 : <%=msdto.getProductDto().getCategory() %></span>
<span class="time">제품이름 : <%=msdto.getProductDto().getProductName() %></span>
<span class="time">가격 : <%=msdto.getProductDto().getPrice() %></span>
<span class="time">재고 : <%=msdto.getProductDto().getStock() %></span>
<span class="remove"><a href="deleteLikeList.do?product_seq=<%=msdto.getProduct_seq() %>"><img src="resources/image/delete.png"></a></span>
</li>
</ul>
		<%	}		
		}
		%>
</div>
</div>










</div>
</div>
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

</body>
</html>