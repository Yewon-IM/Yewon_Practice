<%@page import="java.util.List"%>
<%@page import="com.yogi.hoxy.dtos.MemberDto"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
<% List<MemberDto> list = (List<MemberDto>) request.getAttribute("list"); %>
<meta charset="utf-8" />
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
<a class=" active dd-menu collapsed" href="javascript:void(0)" data-bs-toggle="collapse" data-bs-target="#submenu-1-4" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">관리자페이지</a>
<ul class="sub-menu mega-menu collapse" id="submenu-1-4">
<li class="single-block">
<ul>
<li class="mega-menu-title">회원</li>
<li class="nav-item"><a href="newMemberList.do">신규회원</a></li>
<li class=" active nav-item"><a href="memberList.do">회원 리스트</a></li>
<li class="nav-item"><a href="delMemberList.do">탈퇴 회원</a></li>
</ul>
</li>
<li class="single-block">
<ul>
<li class="mega-menu-title">상점</li>
<li class="nav-item"><a href="newMemberList.do">상점 승인</a></li>
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
<h1 class="page-title">회원 리스트</h1>
</div>
</div>
<div class="col-lg-6 col-md-6 col-12">
<ul class="breadcrumb-nav">
<li><a href=".">Home</a></li>
<li>회원 리스트</li>
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
<li><a href="newMemberList.do"><i class="lni lni-circle-plus"></i>신규회원</a></li>
<li><a class="active" href="memberList.do"><i class="lni lni-bookmark"></i>회원리스트</a></li>
<li><a href="delMemberList.do"><i class="lni lni-envelope"></i>탈퇴회원</a></li>
<li><a href="newShopList.do"><i class="lni lni-pencil-alt"></i>신규상점</a></li>
<li><a href="shopList.do"><i class="lni lni-bolt-alt"></i>상점 리스트</a></li>
<li><a href="delShopList.do"><i class="lni lni-heart"></i>삭제요청한 상점</a></li>
<li><a href="error"><i class="lni lni-trash"></i>퇴사</a></li>
</ul>
<div class="button">
<a href="logout.do" class="btn" href="javascript:void(0)">Logout</a>
</div>
</div>
</div>

</div>
<div class="col-lg-9 col-md-12 col-12">
<div class="main-content">
<div class="dashboard-block mt-0">
<h3 class="block-title">회원 리스트</h3>

<div class="my-items">

<div class="item-list-title">
<div class="row align-items-center">
<div class="col-lg-2 col-md-2 col-12">
<p>아이디</p>
</div>
<div class="col-lg-2 col-md-2 col-12">
<p>이름</p>
</div>
<div class="col-lg-2 col-md-2 col-12">
<p>가입일</p>
</div>
<div class="col-lg-2 col-md-2 col-12">
<p>누구</p>
</div>
<div class="col-lg-2 col-md-2 col-12">
<p>상태</p>
</div>
<div class="col-lg-2 col-md-2 col-12 align-right">
<p align="center">버튼</p>
</div>
</div>
</div>


<div class="single-item-list">
<div class="row align-items-center">
<%
	if(list == null || list.size() == 0){
		%>
		<p>회원이 없습니다 ㅠㅠ</p>
		<%
	}else {
		for(MemberDto dto : list){
%>
<div class="col-lg-2 col-md-2 col-12">
<p><%=dto.getId() %></p>
</div>
<div class="col-lg-2 col-md-2 col-12">
<p><%=dto.getName() %></p>
</div>
<div class="col-lg-2 col-md-2 col-12">
<p><fmt:formatDate pattern="yyyy-MM-dd" value="<%=dto.getRegDate() %>"/></p>
</div>
<div class="col-lg-2 col-md-2 col-12">
<p><%if(dto.getWho().equals("0")){
		out.println("관리자");
	} else if(dto.getWho().equals("1")) { 
		out.println("구매자");
	} else {
		out.println("판매자");
	}
	%></p>
</div>
<div class="col-lg-2 col-md-2 col-12">
<p><%if(dto.getDel().equals("0")){
		out.println("정상 회원");
	} else {
		out.println("탈퇴신청한 회원");
	} %></p>
</div>
	
<div class="col-lg-2 col-md-2 col-12 align-center">
<ul class="action-btn">
<li><a href="memDetail.do?id=<%=dto.getId()%>"><img src="resources/image/search.png" alt="detail"></a></li> <!-- detail -->
<li><a href="memUpdateForm.do?id=<%=dto.getId()%>"><img src="resources/image/pencil.png" alt="update"></a></li> <!-- update -->
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
<html>
<head>
<meta charset="UTF-8">
<title>권한 리스트</title>
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

<form method="post">
	<table border="1">
		<th colspan="9">회원 리스트</th>
		<tr>
			<td>아이디</td>
			<td>이름</td>
			<td>비밀번호</td>
			<td>전화번호</td>
			<td>이메일</td>
			<td>가입일</td>
			<td>누구인가?</td>
			<td>상태</td>
			<td colspan="1">버튼</td>
		</tr>
		<tr>
		<%
		if(list == null){
			%>
			<td colspan="9">회원이 없습니다 ㅠㅠ</td>
			<%
		}else {
			for(MemberDto dto : list){
		%>
		</tr>
		<tr>
			<td width="50px"><a href="memDetail.do?id=<%=dto.getId()%>"><%=dto.getId() %></a></td>
			<td width="50px"><%=dto.getName() %></td>
			<td width="50px"><%=dto.getPwd() %></td>
			<td width="50px"><%=dto.getTel() %></td>
			<td width="50px"><%=dto.getEmail() %></td>
			<td width="100px"><fmt:formatDate pattern="yyyy-MM-dd" value="<%=dto.getRegDate() %>"/></td>
			<td width="50px"><%if(dto.getWho().equals("0")){
								out.println("관리자");
								} else if(dto.getWho().equals("1")) { 
									out.println("구매자");
								} else {
									out.println("판매자");
								}
								%>
								</td>
			<td width="100px"><%if(dto.getDel().equals("0")){
								out.println("정상 회원");
							} else {
								out.println("탈퇴신청한 회원");
							} %>
							</td>
			<td width="30px"><input type="submit" value="삭제" formaction="delete.do?id=<%=dto.getId()%>"></td>
		</tr>
		<%	}		
		}
		%>			
	</table>
</form>
<a href=".">메인 홈페이지</a>
<a href="admin.do">회원 승인페이지</a>	
</body>
</html>