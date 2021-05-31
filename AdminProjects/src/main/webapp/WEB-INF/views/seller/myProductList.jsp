<%@page import="java.util.Map"%>
<%@page import="com.yogi.hoxy.utils.Utils"%>
<%@page import="java.util.List"%>
<%@page import="com.yogi.hoxy.dtos.ProductDto"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
<% List<ProductDto> list = (List<ProductDto>) request.getAttribute("list"); %>
<% List<Map<String, String>> psList = (List<Map<String, String>>) request.getAttribute("psList"); %>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
function updateStock(product_seq){
	var stock = prompt("몇개 입고?", "숫자를 입력하세요.");
	location.href="updateStock.do?stock="+ stock + "&product_seq=" + product_seq;
}

function changeStock(product_seq){
	var stock = prompt("재고 수정", "숫자를 입력하세요.");
	location.href="changeStock.do?stock="+ stock + "&product_seq=" + product_seq;
}
	// 	$.ajax({
//		method:"post",
//		url: "updateStock.do",
//		data: {"stock": stock},
//		dataType:"text",
//		async:false,
//			success:function(val){
//			alert("입고되었습니다.");
		
//				error:function(){
//			alert("오류입니다.");
//			}
//	});
//		}
	

</script>
<meta charset="utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge" />
<title>상점 상품리스트</title>
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
<a class="navbar-brand" href="index.html">
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
 <a href="category.html" class="active" aria-label="Toggle navigation">Categories</a>
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
<h1 class="page-title">상점 상품리스트</h1>
</div>
</div>
<div class="col-lg-6 col-md-6 col-12">
<ul class="breadcrumb-nav">
<li><a href=".">Home</a></li>
<li>상점 상품리스트</li>
</ul>
</div>
</div>
</div>
</div>


<section class="category-page section">
<div class="container">
<div class="row">
<div class="col-lg-3 col-md-4 col-12">
<div class="category-sidebar">

<div class="single-widget search">
<div class="single-testimonial">
<div class="quote-icon">
<a href="myProductList.do?shopId=${sdto.shopId}"></a>
</div>
<div class="item-details-sidebar">
<div class="single-block author">
<h3>판매처</h3>
<div class="content">
<img src="upload/shop/${sdto.shopImg }" width="100" height="100" alt="#">
<h4>${sdto.shopName }</h4>
<span><fmt:formatDate pattern = "yyyy/MM/dd" value = "${sdto.openDate }"/></span>
</div>
</div>
</div>
</div>

</div>

<div class="single-widget search">
<h3>상품 검색하기</h3>
<form method="post" action="search.do">
<input type="hidden" name="shop" value="1" >
<input type="text" name="keyword" id="keyword" placeholder="검색어를 입력하세요...">
<button type="submit" ><i class="lni lni-search-alt"></i></button>
</form>
</div>


<div class="single-widget">
<h3>카테고리</h3>
<ul class="list">
<li>
<a href="search.do?shop=1&category=식품&shopId=${sdto.shopId }"><i class="lni lni-dinner"></i>식품
<span>
<%
if(psList != null){
boolean result = false;
int cC1 = 0;
for(Map<String, String> count : psList){
	if(count.get("category").equals("식품")){
		result = true;
		cC1 = Integer.parseInt(String.valueOf(count.get("count")));
	}
}
	if(result){
		%><%=cC1 %><%
	} 
} else {
	%>0<% 
}
%>
</span>
</a>
</li>
<li>
<a href="search.do?shop=1&category=유아&shopId=${sdto.shopId }"><i class="lni lni-control-panel"></i>유아

<%
if(psList != null){
boolean result = false;
int cC1 = 0;
for(Map<String, String> count : psList){
	if(count.get("category").equals("유아")){
		result = true;
		cC1 = Integer.parseInt(String.valueOf(count.get("count")));
	}
}
	if(result){
		%><span><%=cC1 %></span><%
	} 
} else {
	%><span>0</span><% 
}
%>

</a>
</li>
<li>
<a href="search.do?shop=1&category=식음료&shopId=${sdto.shopId }"><i class="lni lni-bullhorn"></i>식음료

<%
if(psList != null){
boolean result = false;
int cC1 = 0;
for(Map<String, String> count : psList){
	if(count.get("category").equals("식음료")){
		result = true;
		cC1 = Integer.parseInt(String.valueOf(count.get("count")));
	}
}
	if(result){
		%><span><%=cC1 %></span><%
	} 
} else {
	%><span>0</span><% 
}
%>

</a>
</li>
<li>
<a href="search.do?shop=1&category=전자기기&shopId=${sdto.shopId }"><i class="lni lni-home"></i>전자기기

<%
if(psList != null){
boolean result = false;
int cC1 = 0;
for(Map<String, String> count : psList){
	if(count.get("category").equals("전자기기")){
		result = true;
		cC1 = Integer.parseInt(String.valueOf(count.get("count")));
	}
}
	if(result){
		%><span><%=cC1 %></span><%
	} 
} else {
	%><span>0</span><% 
}
%>

</a>
</li>
<li>
<a href="search.do?shop=1&category=뷰티&shopId=${sdto.shopId }"><i class="lni lni-bolt"></i>뷰티

<%
if(psList != null){
boolean result = false;
int cC1 = 0;
for(Map<String, String> count : psList){
	if(count.get("category").equals("뷰티")){
		result = true;
		cC1 = Integer.parseInt(String.valueOf(count.get("count")));
	}
}
	if(result){
		%><span><%=cC1 %></span><%
	} 
} else {
	%><span>0</span><% 
}
%>

</a>
</li>
<li>
<a href="search.do?shop=1&category=의약품&shopId=${sdto.shopId }"><i class="lni lni-tshirt"></i>의약품

<%
if(psList != null){
boolean result = false;
int cC1 = 0;
for(Map<String, String> count : psList){
	if(count.get("category").equals("의약품")){
		result = true;
		cC1 = Integer.parseInt(String.valueOf(count.get("count")));
	}
}
	if(result){
		%><span><%=cC1 %></span><%
	} 
} else {
	%><span>0</span><% 
}
%>

</a>
</li>
<li>
<a href="search.do?shop=1&category=의류&shopId=${sdto.shopId }"><i class="lni lni-diamond-alt"></i>의류

<%
if(psList != null){
boolean result = false;
int cC1 = 0;
for(Map<String, String> count : psList){
	if(count.get("category").equals("의류")){
		result = true;
		cC1 = Integer.parseInt(String.valueOf(count.get("count")));
	}
}
	if(result){
		%><span><%=cC1 %></span><%
	} 
} else {
	%><span>0</span><% 
}
%>

</a>
</li>
</li>
</ul>
</div>

</div>
</div>
<div class="col-lg-9 col-md-8 col-12">
<div class="category-grid-list">
<div class="row">
<div class="col-12">
<div class="category-grid-topbar">
<div class="row align-items-center">
<div class="col-lg-6 col-md-6 col-12">
<h3 class="title">상품 리스트</h3>
</div>
<c:if test="${who == '2' }">
<div class="col-lg-6 col-md-6 col-12">
<nav>
<div class="nav nav-tabs" id="nav-tab" role="tablist">
<a href="addProduct.do?shopId=${sdto.shopId }" >상품추가</a>
</div>
</nav>
</div>
</c:if>
</div>
</div>

<div class="row">

<%
if(list == null || list.size() == 0){
	%><h1>관련상품이 없습니다.</h1>><%
	} else {
	for(ProductDto dto : list){
%>
<div class="col-lg-12 col-md-12 col-12">
<div class="single-item-grid">
<div class="row align-items-center">
<div class="col-lg-5 col-md-7 col-12">
<div class="image">
<a href="productDetail.do?product_seq=<%=dto.getProduct_seq()%>"><img src="upload/product/<%=dto.getImg_Url() %>" alt="productImg"></a>
<i class=" cross-badge lni lni-bolt"></i>
<span class="flat-badge rent">재고 : <%=dto.getStock() %></span>
</div>
</div>
<div class="col-lg-7 col-md-5 col-12">
<div class="content">
<p>카테고리 : <%=dto.getCategory() %></p>
<h3 class="title"><p><%=dto.getProductName() %></p></h3>
<p class="location"><%=dto.getShopDto().getShopName()%> / <%=dto.getShopDto().getLocal() %></p>
<ul class="info">
<li class="price"><%=Utils.comma(dto.getPrice())%>원 </li>
<c:if test="${who eq '2' }">
<li class="like"><a onclick="updateStock(<%=dto.getProduct_seq()%>)" href="javascript:void(0)" >입고<i class="lni lni-heart"></i></a></li>
<li class="like"><a onclick="changeStock(<%=dto.getProduct_seq()%>)" href="javascript:void(0)" >수정<i class="lni lni-heart"></i></a></li>
</c:if>
</ul>
</div>
</div>
</div>
</div>
</div>
<%	}		
}
%>		


</div>
<div class="row">
<div class="col-12">
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
<li>Tel. +(123) 1800-567-8990 <br> Mail. <a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="f1828481819e8385b1929d908282989683989582df929e9c">[email&#160;protected]</a></li>
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