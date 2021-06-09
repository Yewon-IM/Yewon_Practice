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
<li class=" active nav-item"><a href="newShopList.do">신규 상점</a></li>
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
<img src="resources/image/admin.png" alt="#">
<span>${name }</span>
</div>
<div class="dashboard-menu">
<ul>
<li><a href="newMemberList.do"><i class="fas fa-user-plus"></i> 신규회원</a></li>
<li><a href="memberList.do"><i class="far fa-id-card"></i> 회원리스트</a></li>
<li><a href="delMemberList.do"><i class="fas fa-user-minus"></i> 탈퇴회원</a></li>
<li><a class="active" href="newShopList.do"><i class="fas fa-store"></i> 신규상점</a></li>
<li><a href="shopList.do"><i class="fas fa-shopping-cart"></i> 상점 리스트</a></li>
<li><a href="delShopList.do"><i class="fas fa-store-slash"></i> 삭제요청한 상점</a></li>
<li><a href="error"><i class="far fa-laugh-squint"></i> 퇴사</a></li>
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
<script src="resources/js/main.js"></script>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
</body>
</html>