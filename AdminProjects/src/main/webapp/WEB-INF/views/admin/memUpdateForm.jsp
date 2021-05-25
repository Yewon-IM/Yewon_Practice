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
<title>회원정보 수정</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function (e) {
				$('#profileImg').attr('src', e.target.result);
			}
			reader.readAsDataURL(input.files[0]);
		}
	}

</script>
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
<li class="nav-item"><a href="memberList.do">회원 리스트</a></li>
<li class="nav-item"><a href="delMemberList.do">탈퇴 회원</a></li>
</ul>
</li>
<li class="single-block">
<ul>
<li class="mega-menu-title">상점</li>
<li class="nav-item"><a href="newShopList.do">상점 승인</a></li>
<li class="nav-item"><a href="memberList.do">상점 리스트</a></li>
<li class=" active nav-item"><a href="delShopList.do">상점 삭제</a></li>
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
<h4 class="title">회원정보 수정</h4>
<form method="post" action="Update.do" enctype="multipart/form-data">
<div class="form-group">
<label>프로필 사진</label>
<input type="file" name="profileImg" onchange ="readURL(this);">
</div>

<div class="form-group">
<label>사진</label>
<img id="profileImg" src="upload/${dto.profileImg }" width=100 height=100 />
</div>
<div class="form-group">
<label>아이디</label>
<input name="id" type="text" value=${dto.id } readonly>
</div>

<div class="form-group">
<label>비밀번호</label>
<input name="pwd" type="password" value=${dto.pwd }>
</div>

<div class="form-group">
<label>이름</label>
<input name="name" type="text" value=${dto.name }>
</div>

<div class="form-group">
<label>이메일</label>
<input name="email" type="email" value=${dto.email }>
</div>

<div class="form-group">
<label>전화번호</label>
<input name="tel" type="text" value=${dto.tel }>
</div>

<div class="form-group">
<label>지역</label>
<select name="local">
						<option value="강남구" ${dto.local == "강남구"? "selected" : "" }>강남구</option>
						<option value="강동구" ${dto.local == "강동구"? "selected" : "" }>강동구</option>
						<option value="강북구" ${dto.local == "강북구"? "selected" : "" }>강북구</option>
						<option value="강서구" ${dto.local == "강서구"? "selected" : "" }>강서구</option>	
						<option value="관악구" ${dto.local == "관악구"? "selected" : "" }>관악구</option>
						<option value="광진구" ${dto.local == "광진구"? "selected" : "" }>광진구</option>
						<option value="구로구" ${dto.local == "구로구"? "selected" : "" }>구로구</option>
						<option value="금천구" ${dto.local == "금천구"? "selected" : "" }>금천구</option>
						<option value="금천구" ${dto.local == "노원구"? "selected" : "" }>노원구</option>
						<option value="도봉구" ${dto.local == "도봉구"? "selected" : "" }>도봉구</option>
						<option value="동대문구" ${dto.local == "동대문구"? "selected" : "" }>동대문구</option>
						<option value="동작구" ${dto.local == "동작구"? "selected" : "" }>동작구</option>											
						<option value="마포구" ${dto.local == "마포구"? "selected" : "" }>마포구</option>
						<option value="서대문구" ${dto.local == "서대문구"? "selected" : "" }>서대문구</option>
						<option value="서초구" ${dto.local == "서초구"? "selected" : "" }>서초구</option>
						<option value="성동구" ${dto.local == "성동구"? "selected" : "" }>성동구</option>	
						<option value="성북구" ${dto.local == "성북구"? "selected" : "" }>성북구</option>
						<option value="송파구" ${dto.local == "송파구"? "selected" : "" }>송파구</option>
						<option value="양천구" ${dto.local == "양천구"? "selected" : "" }>양천구</option>
						<option value="영등포구" ${dto.local == "영등포구"? "selected" : "" }>영등포구</option>
						<option value="용산구" ${dto.local == "용산구"? "selected" : "" }>용산구</option>
						<option value="은평구" ${dto.local == "은평구"? "selected" : "" }>은평구</option>
						<option value="종로구" ${dto.local == "종로구"? "selected" : "" }>종로구</option>
						<option value="중구" ${dto.local == "중구"? "selected" : "" }>중구</option>	
						<option value="중랑구" ${dto.local == "중랑구"? "selected" : "" }>중랑구</option>
</select> 
</div>

<div class="form-group">
<label>우편번호</label>
<input name="oAdd" type="text" value = "${dto.oAdd }" >
</div>

<div class="form-group">
<label>주소</label>
<input name="add" type="text" value = "${dto.add }" >
</div>

<div class="form-group">
<label>상세주소</label>
<input name="detailAdd" type="text" value = "${dto.detailAdd }" >
</div>

<div class="form-group">
<label>가입일</label>
<input value="<fmt:formatDate pattern="yyyy-MM-dd" value="${dto.regDate }" />" readonly>
</div>

<div class="form-group">
<label>누구인가?</label>
<select name="who">
	<option value= "0" ${dto.who == 0? "selected" : ""}>관리자</option>
	<option value= "1" ${dto.who == 1? "selected" : ""}>구매자</option>
	<option value= "2" ${dto.who == 2? "selected" : ""}>판매자</option> 
</select>
</div>
<div class="form-group">
<label>승인여부</label>
<select name="power">
	<option value= "0" ${dto.power == 0? "selected" : "" }>미승인</option>
	<option value= "1" ${dto.power == 1? "selected" : "" }>승인</option>
	<option value= "2" ${dto.power == 2? "selected" : "" }>정지</option>
</select>
</div>

<div class="form-group">
<label>삭제요청</label>
<select name="del">
	<option value= "0" ${dto.del == 0? "selected" : "" }>정상</option>
	<option value= "1" ${dto.del == 1? "selected" : "" }>삭제요청</option>
</select>
</div>

<div class="check-and-pass">
<div class="row align-items-center">
<div class="col-12">
</div>
</div>
</div>
<div class="button">
<input type="submit" class="btn" value="수정하기">
</div>
<p class="outer-link">회원리스트로<a href="memberList.do"> 돌아가기</a>
</p>
</form>



</div>
</div>
</div>
</div>
</section>


<div class="newsletter section">
<div class="container">
<div class="inner-content">
<div class="row align-items-center">
<div class="col-lg-6 col-md-6 col-12">
<div class="title">
<i class="lni lni-alarm"></i>
<h2>Newsletter</h2>
<p>We don't send spam so don't worry.</p>
</div>
</div>
<div class="col-lg-6 col-md-6 col-12">
<div class="form">
<form action="#" method="get" target="_blank" class="newsletter-form">
<input name="EMAIL" placeholder="Your email address" type="email">
<div class="button">
<button class="btn">Subscribe<span class="dir-part"></span></button>
</div>
</form>
</div>
 </div>
</div>
</div>
</div>
</div>


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

<script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
<script src="resources/js/wow.min.js"></script>
<script src="resources/js/tiny-slider.js"></script>
<script src="resources/js/glightbox.min.js"></script>
<script src="resources/js/main.js"></script>
</body>
</html>