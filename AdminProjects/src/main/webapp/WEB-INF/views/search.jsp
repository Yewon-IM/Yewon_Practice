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
<meta charset="utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge" />
<title>상품리스트</title>
<meta name="description" content="" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.svg" />
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
// function se(){
// 	var keyword = $("#keyword").val();
// 	if(keyword == ''){
// 		alert("검색어를 입력하세요");
// 		return;
// 	}
//  	$.ajax({
//  		method:"post",
//  		url: "ch.do",
//  		data: {"keyword": keyword},
//  		dataType:"json",
//  		async:false,
//  		success:function(data){
//  			alert(data["list"][0]["product_seq"]);
//  			for(var i=0;i<data["list"].length;i++){
//  				$(".w").append(
//   						'<div class="col-lg-4 col-md-6 col-12">' +
//   						'<div class="single-item-grid">'+
//   						'<div class="image">'+
//  						'<a href="productDetail.do?product_Seq='+ data["list"][i]["product_seq"] + '"><img src="upload/product/+'data[list][i]["img_Url"]'+" alt="productImg"></a>'+
//   						'<i class=" cross-badge lni lni-bolt"></i>'+
//   						'<span class="flat-badge sale">'+
//   						'</span>'+
//   						'</div>'+
//   						'<div class="content">'+
//  						'<a href="javascript:void(0)" class="tag">data["list"][i]["category"]</a>'+
//   						'<h3 class="title">'+
//  						'<a href="item-details.html">'data["list"][i]["productName"]'</a>'+
//   						'</h3>'+
//   						'<p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">'+
//  						'</i>data["list"][i]["shopName"] / data["list"][i]["local"]</a></p>'+
<%--   						<%=dto.getShopDto().getShopName()%> / <%=dto.getShopDto().getLocal() %> --%>
//  						'<ul class="info">'+
//  						'<li class="price">data["list"][i]["price"]</li>'+
//  						'<li class="like"><a href="javascript:void(0)">data["list"][i]["like"]♥<i class="lni lni-heart"></i></a>'+
//   						'</li>'+
//   						'</ul>'+
//   						'</div>'+
//   						'</div>'+
//   						'</div>'
//  				);
//  			}
//  		},
//  		error:function(){
//  			alert("그런건 없어요.");
//  		}
//  	});
// }
</script>

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
<a href="login.do"><i class="lni lni-enter"></i>로그인</a>
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
<h1 class="page-title">상품 페이지</h1>
</div>
</div>
<div class="col-lg-6 col-md-6 col-12">
<ul class="breadcrumb-nav">
<li><a href=".">Home</a></li>
<li>상품 페이지</li>
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
<h3>상품 검색하기</h3>
<form method="post" action="search.do">
<input type="text" name="keyword" id="keyword" placeholder="검색어를 입력하세요...">
<button type="submit" ><i class="lni lni-search-alt"></i></button>
</form>
</div>


<div class="single-widget">
<h3>카테고리</h3>
<ul class="list">
<li>
<a href="search.do?category=과자"><i class="lni lni-dinner"></i>과자</a>
</li>
<li>
<a href="search.do?category=유아"><i class="lni lni-control-panel"></i>유아</a>
</li>
<li>
<a href="javascript:void(0)"><i class="lni lni-bullhorn"></i> Marketing <span>55</span></a>
</li>
<li>
<a href="javascript:void(0)"><i class="lni lni-home"></i> Real Estate<span>35</span></a>
</li>
<li>
<a href="javascript:void(0)"><i class="lni lni-bolt"></i> Electronics <span>60</span></a>
</li>
<li>
<a href="javascript:void(0)"><i class="lni lni-tshirt"></i> Dress & Clothing <span>55</span></a>
</li>
<li>
<a href="javascript:void(0)"><i class="lni lni-diamond-alt"></i> Jewelry & Accessories
<span>45</span></a>
</li>
</ul>
</div>


<div class="single-widget range">
<h3>Price Range</h3>
<input type="range" class="form-range" name="range" step="1" min="100" max="10000" value="10" onchange="rangePrimary.value=value">
<div class="range-inner">
<label>$</label>
<input type="text" id="rangePrimary" placeholder="100" />
</div>
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
<h3 class="title">Showing 1-12 of 21 ads found</h3>
</div>
<div class="col-lg-6 col-md-6 col-12">
<nav>
<div class="nav nav-tabs" id="nav-tab" role="tablist">
<button class="nav-link active" id="nav-grid-tab" data-bs-toggle="tab" data-bs-target="#nav-grid" type="button" role="tab" aria-controls="nav-grid" aria-selected="true"><i class="lni lni-grid-alt"></i></button>
<button class="nav-link" id="nav-list-tab" data-bs-toggle="tab" data-bs-target="#nav-list" type="button" role="tab" aria-controls="nav-list" aria-selected="false"><i class="lni lni-list"></i></button>
</div>
</nav>
</div>
</div>
</div>











<div class="tab-content" id="nav-tabContent">
<div class="tab-pane fade show active" id="nav-grid" role="tabpanel" aria-labelledby="nav-grid-tab">
<div class="row w">
<%
if(list == null || list.size() == 0){
	%><h1>관련상품이 없습니다.</h1>><%
	} else {
	for(ProductDto dto : list){
int stock = Integer.parseInt(dto.getStock());
%>
<div class="col-lg-4 col-md-6 col-12">
<div class="single-item-grid">
<div class="image">
<a href="productDetail.do?product_seq=<%=dto.getProduct_seq()%>"><img src="upload/product/<%=dto.getImg_Url() %>" alt="productImg"></a>
<i class=" cross-badge lni lni-bolt"></i>
<span class="flat-badge sale">
<%if(stock == 0){
		%><input type="button" value="찜 하기" formaction="">
		<%
} else {
	%>재고 : <%=stock %>	
<% } %>
</span>
</div>
<div class="content">
<a href="javascript:void(0)" class="tag"><%=dto.getCategory() %></a>
<h3 class="title">
<a href="item-details.html"><%=dto.getProductName() %></a>
</h3>
<p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
</i><%=dto.getShopDto().getShopName()%> / <%=dto.getShopDto().getLocal() %></a></p>
<ul class="info">
<li class="price"><%=dto.getPrice() %></li>
<c:if test="${who == null}">
<li class="like"><a href="like.do?product_seq=<%=dto.getProduct_seq()%>"><%=dto.getLike()%>♥<i class="lni lni-heart"></i></a></li>
</c:if>

</ul>
</div>
</div>
</div>
<%	}		
}
%>		

<!-- 어팬드 - 제이쿼리 마지막에 계속 추가해주는  -->
		



















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
<div class="tab-pane fade" id="nav-list" role="tabpanel" aria-labelledby="nav-list-tab">
<div class="row">
<div class="col-lg-12 col-md-12 col-12">

<div class="single-item-grid">
<div class="row align-items-center">
<div class="col-lg-5 col-md-7 col-12">
<div class="image">
<a href="item-details.html"><img src="assets/images/items-tab/item-2.jpg" alt="#"></a>
<i class=" cross-badge lni lni-bolt"></i>
<span class="flat-badge sale">Sale</span>
</div>
</div>
<div class="col-lg-7 col-md-5 col-12">
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
</div>

</div>
<div class="col-lg-12 col-md-12 col-12">

<div class="single-item-grid">
<div class="row align-items-center">
<div class="col-lg-5 col-md-7 col-12">
<div class="image">
<a href="item-details.html"><img src="assets/images/items-tab/item-3.jpg" alt="#"></a>
<i class=" cross-badge lni lni-bolt"></i>
<span class="flat-badge sale">Sale</span>
</div>
</div>
<div class="col-lg-7 col-md-5 col-12">
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
</div>

</div>
<div class="col-lg-12 col-md-12 col-12">

<div class="single-item-grid">
<div class="row align-items-center">
<div class="col-lg-5 col-md-7 col-12">
<div class="image">
<a href="item-details.html"><img src="assets/images/items-tab/item-1.jpg" alt="#"></a>
<i class=" cross-badge lni lni-bolt"></i>
<span class="flat-badge sale">Sale</span>
</div>
</div>
<div class="col-lg-7 col-md-5 col-12">
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
</div>

</div>



<div class="col-lg-12 col-md-12 col-12">

<div class="single-item-grid">
<div class="row align-items-center">
<div class="col-lg-5 col-md-7 col-12">
<div class="image">
<a href="item-details.html"><img src="assets/images/items-tab/item-4.jpg" alt="#"></a>
<i class=" cross-badge lni lni-bolt"></i>
<span class="flat-badge sale">Sale</span>
</div>
</div>
<div class="col-lg-7 col-md-5 col-12">
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
</div>

</div>
<div class="col-lg-12 col-md-12 col-12">

<div class="single-item-grid">
<div class="row align-items-center">
<div class="col-lg-5 col-md-7 col-12">
<div class="image">
<a href="item-details.html"><img src="assets/images/items-tab/item-6.jpg" alt="#"></a>
<i class=" cross-badge lni lni-bolt"></i>
<span class="flat-badge rent">Rent</span>
</div>
</div>
<div class="col-lg-7 col-md-5 col-12">
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