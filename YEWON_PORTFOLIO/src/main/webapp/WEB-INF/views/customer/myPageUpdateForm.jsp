<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="x-ua-compatible" content="ie=edge" />
<title>YOGIHOXY - 오프라인 물건을 손쉽게 찾아보자</title>
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
<img src="upload/member/${dto.profileImg }" alt="#">
<span>${dto.name }</span>
</div>
<div class="dashboard-menu">
<ul>
<li><a href="myPage.do"><i class="far fa-file-alt"></i> 마이페이지</a></li>
<li><a class="active" href="myPageUpdateForm.do"><i class="fas fa-cog"></i> 정보 수정</a></li>
<li><a href="myPageDelete.do"><i class="far fa-angry"></i> 회원탈퇴</a></li>
</ul>
<div class="button">
<a class="btn" href="logout.do">로그아웃</a>
</div>
</div>
</div>

</div>
<div class="col-lg-9 col-md-8 col-12">
<div class="main-content">

<div class="dashboard-block mt-0 profile-settings-block">
<h3 class="block-title">정보 수정</h3>
<div class="inner-block">
<form class="profile-setting-form" method="post" action="myPageUpdate.do" enctype="multipart/form-data">
<div class="row">
<div class="col-lg-6 col-12">
<div class="form-group upload-image">
<label>프로필 사진</label>
<input type="file" name="profileImg" onchange ="readURL(this);">
</div>
</div>
<div class="col-lg-6 col-12">
<div class="form-group">
<img id="profileImg" src="upload/member/${dto.profileImg }" width=100 height=100 />
</div>
</div>
<div class="col-lg-6 col-12">
<div class="form-group">
<label>아이디</label>
<input name="id" type="text" value="${dto.id }" placeholder="아이디" readonly>
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
<button type="submit" class="btn">수정하기</button>
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