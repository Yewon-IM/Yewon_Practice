<%@page import="java.util.List"%>
<%@page import="com.yogi.hoxy.dtos.MemberDto"%>
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
<a href="." aria-label="Toggle navigation">???</a>
</li>
 <li class="nav-item">
<a href="search.do" aria-label="Toggle navigation">????????????</a>
</li>
<li class="nav-item">
<a class=" dd-menu collapsed" href="javascript:void(0)" data-bs-toggle="collapse" data-bs-target="#submenu-1-4" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">??????????????????</a>
<ul class="sub-menu mega-menu collapse" id="submenu-1-4">
<li class="single-block">
<ul>
<li class="mega-menu-title">??????</li>
<li class="nav-item"><a href="newMemberList.do">?????? ??????</a></li>
<li class=" active nav-item"><a href="memberList.do">?????? ?????????</a></li>
<li class="nav-item"><a href="delMemberList.do">?????? ??????</a></li>
</ul>
</li>
<li class="single-block">
<ul>
<li class="mega-menu-title">??????</li>
<li class="nav-item"><a href="newShopList.do">?????? ??????</a></li>
<li class="nav-item"><a href="shopList.do">?????? ?????????</a></li>
<li class="nav-item"><a href="delShopList.do">?????? ??????</a></li>
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
<a href="logout.do"><i class="fas fa-sign-out-alt"></i> ????????????</a>
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
<h1 class="page-title">???????????? ??????</h1>
</div>
</div>
<div class="col-lg-6 col-md-6 col-12">
<ul class="breadcrumb-nav">
<li><a href="main.do">??????</a></li>
<li>???????????? ??????</li>
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
<h4 class="title">???????????? ????????????</h4>

<form method="post">
<div class="form-group">
<label>?????? ?????????</label>
<img id="profileImg" src="upload/${dto.profileImg }" width=100 height=100 />
</div>

<div class="form-group">
<label>?????????</label>
<input name="id" type="text" value=${dto.id } readonly>
</div>

<div class="form-group">
<label>????????????</label>
<input name="pwd" type="text" value=${dto.pwd } readonly>
</div>

<div class="form-group">
<label>??????</label>
<input name="name" type="text" value=${dto.name } readonly>
</div>

<div class="form-group">
<label>?????????</label>
<input name="email" type="email" value=${dto.email } readonly>
</div>

<div class="form-group">
<label>????????????</label>
<input name="tel" type="text" value=${dto.tel } readonly>
</div>

<div class="form-group">
<label>??????</label>
<input name="local" value = "${dto.local }" readonly>
</div>

<div class="form-group">
<label>????????????</label>
<input name="oAdd" value = "${dto.oAdd }" readonly>
</div>

<div class="form-group">
<label>??????</label>
<input name="add" value = "${dto.add }" readonly>
</div>

<div class="form-group">
<label>????????????</label>
<input name="detailAdd" value = "${dto.detailAdd }" readonly>
</div>

<div class="form-group">
<label>?????????</label>
<input name="regDate" value='<fmt:formatDate pattern = "yyyy/MM/dd" value = "${dto.regDate }"/>' readonly >
</div>

<div class="form-group">
<label>?????????????</label>
<input name="who" type="text" value=
									<c:if test="${dto.who == 0}">
										"?????????"
									</c:if>
									<c:if test="${dto.who == 1}">
										"?????????"
									</c:if>			
									<c:if test="${dto.who == 2}">
										"?????????"
									</c:if>	 readonly>
</div>


<div class="form-group">
<label>????????????</label>
<input name="power" type="text" value=
									<c:if test="${dto.power == 0 }">
										"?????? ?????????"
									</c:if>
									<c:if test="${dto.power == 1}">
										"?????? ??????"
									</c:if> readonly>
</div>
<div class="check-and-pass">
<div class="row align-items-center">
<div class="col-12">
</div>
</div>
</div>
<div class="button">
<input type="submit" class="btn" value="????????????" formaction="memUpdateForm.do">
</div>
<div class="button">
<input type="submit" class="btn" value="????????????" formaction="delete.do">
</div>
<p class="outer-link">??????????????????<a href="memberList.do"> ????????????</a>
</p>
</form>

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
<p class="copyright-text">Designed and Developed by 1???
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

<a href=".">?????? ????????????</a>
<a href="memberList.do">?????? ???????????????</a>	

<script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
<script src="resources/js/wow.min.js"></script>
<script src="resources/js/tiny-slider.js"></script>
<script src="resources/js/glightbox.min.js"></script>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<script src="resources/js/main.js"></script>
</body>
</html>