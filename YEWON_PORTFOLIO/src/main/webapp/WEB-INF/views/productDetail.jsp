<%@page import="com.yogi.hoxy.dtos.*"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="com.yogi.hoxy.utils.Utils" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
<meta charset="utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge" />
<title>Ads Details - ClassiGrids Classified Ads and Listing Website Template</title>
<% List<Map<String, Integer>> list = (List<Map<String, Integer>>) request.getAttribute("list"); %>
<% ProductDto dto = (ProductDto) request.getAttribute("dto"); %>
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
<a href="." aria-label="Toggle navigation">홈</a>
</li>
 <li class="nav-item">
<a href="search.do" aria-label="Toggle navigation">카테고리</a>
</li>
<c:if test="${who eq 0 }">
<li class="nav-item">
<a class=" dd-menu collapsed" href="javascript:void(0)" data-bs-toggle="collapse" data-bs-target="#submenu-1-4" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">관리자페이지</a>
<ul class="sub-menu mega-menu collapse" id="submenu-1-4">
<li class="single-block">
<ul>
<li class="mega-menu-title">회원</li>
<li class="nav-item"><a href="newMemberList.do">회원 승인</a></li>
<li class="nav-item"><a href="memberList.do">회원 리스트</a></li>
<li class="nav-item"><a href="delMemberList.do">탈퇴 회원</a></li>
</ul>
</li>
<li class="single-block">
<ul>
<li class="mega-menu-title">상점</li>
<li class="nav-item"><a href="newShopList.do">신규 상점</a></li>
<li class="nav-item"><a href="shopList.do">상점 리스트</a></li>
<li class="nav-item"><a href="delShopList.do">상점 삭제</a></li>
</ul>
</li>
</ul>
</li>
</c:if>
<c:if test="${who eq 1 }">
<li class="nav-item">

<a class=" dd-menu collapsed" href="javascript:void(0)" data-bs-toggle="collapse" data-bs-target="#submenu-1-4" 
aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">마이페이지</a>

<ul class="sub-menu mega-menu collapse" id="submenu-1-4">
<li class="single-block">
<ul>

<li class="nav-item"><a href="myPage.do">마이페이지</a></li>
<li class="nav-item"><a href="myPageUpdateForm.do?">정보수정</a></li>
<li class="nav-item"><a href="myPageDelete.do">회원탈퇴</a></li>
</ul>
</li>
</ul>
</li>
</c:if>
<c:if test="${who eq 2 }">
<li class="nav-item">
<a class=" dd-menu collapsed" href="javascript:void(0)" data-bs-toggle="collapse" data-bs-target="#submenu-1-4" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">마이페이지</a>
<ul class="sub-menu mega-menu collapse" id="submenu-1-4">
<li class="single-block">
<ul>
<li class="mega-menu-title">상점</li>
<li class="nav-item"><a href="myShop.do">내 상점 보기</a></li>
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
</c:if>
<c:if test="${who == null }">

</c:if>

</ul>
</div> 
<div class="login-button">
<ul>
<li>
<p>${name } </p>
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


<div class="breadcrumbs">
<div class="container">
<div class="row align-items-center">
<div class="col-lg-6 col-md-6 col-12">
<div class="breadcrumbs-content">
<h1 class="page-title">상품 상세보기</h1>
</div>
</div>
<div class="col-lg-6 col-md-6 col-12">
<ul class="breadcrumb-nav">
<li><a href=".">Home</a></li>
<li>상품 상세보기</li>
</ul>
</div>
</div>
</div>
</div>


<section class="item-details section">
<div class="container">
<div class="top-area">
<div class="row">
<div class="col-lg-6 col-md-12 col-12">
<div class="product-images">
<main id="gallery">
<div class="main-img">
<img src="upload/product/${dto.img_Url }" class="img" alt="#">
</div>
</main>
</div>
</div>
<div class="col-lg-6 col-md-12 col-12">
<div class="product-info">
<h2 class="title">${dto.productName }</h2>
<p class="location"><i class="lni lni-map-marker"></i><a href="javascript:void(0)">${dto.shopDto.local }</a></p>
<h3 class="price"><%=Utils.comma(dto.getPrice())%>원</h3>
<div class="list-info">
<ul>
<li><span>매장: ${dto.shopDto.shopName }</span></li>
<li><span>카테고리: ${dto.category }</span></li>
<li><span>재고: ${dto.stock }개</span></li>
</ul>
</div>
<div class="contact-info">
<ul>
<li>
<% boolean isS = false;
   int likes = 0;
for(Map<String, Integer> count : list){
   if(Integer.parseInt(String.valueOf(count.get("product_seq"))) == dto.getProduct_seq()){
      isS = true;
      likes = Integer.parseInt(String.valueOf(count.get("count")));
   }
}   
   if(isS){
      %><a href="javascript:void(0)" class="mail"><%=likes%>♥</a><%
   } else {
      %><a href="javascript:void(0)" class="mail">0♥</a><%
   } 
%>
</li>
</ul>
</div>
</div>
</div>
</div>
</div>
<div class="item-details-blocks">
<div class="row">
<div class="col-lg-8 col-md-7 col-12">

<div class="single-block comments">
<h3>후기글</h3>
<div class="single-comment">
<img src="assets/images/testimonial/testi2.jpg" alt="#">
<div class="content">
<h4>Luis Havens</h4>
<span>25 Feb, 2023</span>
<p>There are many variations of passages of Lorem Ipsum available, but the majority
have suffered alteration in some form, by injected humour, or randomised words
which don't look even slightly believable.</p>
<a href="javascript:void(0)" class="reply"><i class="lni lni-reply"></i> Reply</a>
</div>
</div>
</div>


<div class="single-block comment-form">
<h3>Post a comment</h3>
<form action="#" method="POST">
<div class="row">
<div class="col-lg-6 col-12">
<div class="form-box form-group">
<input type="text" name="name" class="form-control form-control-custom" value="${name }" readonly/>
</div>
</div>
<!-- <div class="col-lg-6 col-12"> -->
<!-- <div class="form-box form-group"> -->
<%-- <input type="email" name="email" class="form-control form-control-custom" value="${pwd }" /> --%>
<!-- </div> -->
<!-- </div> -->
<div class="col-12">
<div class="form-box form-group">
 <textarea name="#" class="form-control form-control-custom" placeholder="작성란"></textarea>
</div>
</div>
<div class="col-12">
<div class="button">
<button type="submit" class="btn">글 쓰기</button>
</div>
</div>
</div>
</form>
</div>

</div>
<div class="col-lg-4 col-md-5 col-12">
<div class="item-details-sidebar">
<div class="single-block author">
<h3>판매처</h3>
<div class="content">
<img src="upload/shop/${dto.shopDto.shopImg }" alt="#">
<h4>${dto.shopDto.shopName }</h4>
<span><fmt:formatDate pattern = "yyyy/MM/dd" value = "${dto.shopDto.openDate }"/></span>
<a href="myProductList.do?shopId=${dto.shopDto.shopId }" class="see-all">상점 구경하러가기</a>
</div>
</div>
<div class="single-block author">
<h3>상품 설명</h3>
<p>${dto.content }</p>
</div>
</div>

<!-- <!-- <div class="single-block "> -->
<!-- <h3>Location</h3> -->
<!-- <div class="mapouter"> -->
<!-- <div class="gmap_canvas"><iframe width="100%" height="300" id="gmap_canvas" src="https://maps.google.com/maps?q=2880%20Broadway,%20New%20York&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe><a href="https://putlocker-is.org"></a><br> -->
<!-- <style> -->
<!--                                             .mapouter { -->
<!--                                                 position: relative; -->
<!--                                                 text-align: right; -->
<!--                                                 height: 300px; -->
<!--                                                 width: 100%; -->
<!--                                             } -->
<!--                                         </style><a href="https://www.embedgooglemap.net">google map code for website</a> 
<!-- <style> -->
<!--                                             .gmap_canvas { -->
<!--                                                 overflow: hidden; -->
<!--                                                 background: none !important; -->
<!--                                                 height: 300px; -->
<!--                                                 width: 100%; -->
<!--                                             } -->
<!--                                         </style> -->
<!-- </div> -->
<!-- </div> -->
<!-- </div> --> 

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
<script src="resources/js/main.js"></script>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<script type="text/javascript">
        const current = document.getElementById("current");
        const opacity = 0.6;
        const imgs = document.querySelectorAll(".img");
        imgs.forEach(img => {
            img.addEventListener("click", (e) => {
                //reset opacity
                imgs.forEach(img => {
                    img.style.opacity = 1;
                });
                current.src = e.target.src;
                //adding class 
                //current.classList.add("fade-in");
                //opacity
                e.target.style.opacity = opacity;
            });
        });
    </script>
</body>
</html>