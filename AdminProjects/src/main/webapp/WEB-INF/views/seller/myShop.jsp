<%@page import="java.util.List"%>
<%@page import="com.yogi.hoxy.dtos.ShopDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 상점 보기</title>
<style type = "text/css">
	table{
		width:80%;
		margin:auto;
		height: 100px;
		text-align: center;
	}
</style>
<link href="https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">

<link rel="stylesheet" href="resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="resources/css/LineIcons.2.0.css" />
<link rel="stylesheet" href="resources/css/animate.css" />
<link rel="stylesheet" href="resources/css/tiny-slider.css" />
<link rel="stylesheet" href="resources/css/glightbox.min.css" />
<link rel="stylesheet" href="resources/css/main.css" />
</head>
<% List<ShopDto> list = (List<ShopDto>)request.getAttribute("list"); %>
<body>
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
<a class=" active dd-menu collapsed" href="javascript:void(0)" data-bs-toggle="collapse" data-bs-target="#submenu-1-1" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">Home</a>
<ul class="sub-menu collapse" id="submenu-1-1">
<li class="nav-item"><a href="index.html">Home Default</a></li>
<li class="nav-item active"><a href="index2.html">Home Version 2</a></li>
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
<a class=" dd-menu collapsed" href="javascript:void(0)" data-bs-toggle="collapse" data-bs-target="#submenu-1-4" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">내 상점</a>
<ul class="sub-menu mega-menu collapse" id="submenu-1-4">
<li class="single-block">
<ul>
<li class="mega-menu-title">상점</li>
<li class="nav-item"><a href="myShop.do?id=">내 상점 보기</a></li>
<li class="nav-item"><a href=".">고객문의함</a></li>
<li class="nav-item"><a href=".">재고요청</a></li>
<li class="nav-item"><a href=".">상점 달력</a></li>
</ul>
</li>
<li class="single-block">
<ul>
<li class="mega-menu-title">마이페이지</li>
<li class="nav-item"><a href="myPage.do">마이페이지</a>
</li>
<li class="nav-item"><a href=".">문의하기</a>
</li>
<li class="nav-item"><a href=".">가나다</a></li>
<li class="nav-item"><a href=".">롸뫄봐</a>
</li>
</ul>
</li>
</ul>
</li>
<li class="nav-item">
<a class=" dd-menu collapsed" href="javascript:void(0)" data-bs-toggle="collapse" data-bs-target="#submenu-1-5" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">회원관리</a>
<ul class="sub-menu collapse" id="submenu-1-5">
<li class="nav-item"><a href="newMemberList.do">회원 승인</a></li>
<li class="nav-item"><a href="memberList.do">회원리스트</a></li>
<li class="nav-item"><a href="delMemberList.do">탈퇴 회원</a></li>
</ul>
</li>
</ul>
</div> 
<div class="login-button">
<ul>
<li>
<p>홍길동 판매자</p>
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
<a href=".">메인 홈페이지</a>
<a href="myShopAddForm.do">상점 추가하기</a>
<section class="testimonials section">
<div class="container">
<div class="row">
<div class="col-12">
<div class="section-title align-center gray-bg">
<h2 class="wow fadeInUp" data-wow-delay=".4s">내 상점</h2>
</div>
</div>
</div>
<div class="row testimonial-slider">
<div class="col-lg-4 col-md-6 col-12">

<div class="single-testimonial">
<div class="quote-icon">
<i class="lni lni-quotation"></i>
</div>
<div class="author">
<img src="assets/images/testimonial/testi1.jpg" alt="#">
<h4 class="name">
Jane Anderson
<span class="deg">Founder & CEO</span>
</h4>
</div>
<div class="text">
<p>"It’s amazing how much easier it has been to meet new people and create instant
connections. I have the exact same personality, the only thing that has changed is my
mindset and a few behaviors."</p>
</div>
</div>

</div>
<div class="col-lg-4 col-md-6 col-12">

<div class="single-testimonial">
<div class="quote-icon">
<i class="lni lni-quotation"></i>
</div>
<div class="author">
<img src="assets/images/testimonial/testi2.jpg" alt="#">
<h4 class="name">
Devid Samuyel
<span class="deg">Web Developer</span>
</h4>
</div>
<div class="text">
<p>"It’s amazing how much easier it has been to meet new people and create instant
connections. I have the exact same personality, the only thing that has changed is my
mindset and a few behaviors."</p>
</div>
</div>

</div>
<div class="col-lg-4 col-md-6 col-12">

<div class="single-testimonial">
<div class="quote-icon">
<i class="lni lni-quotation"></i>
</div>
<div class="author">
<img src="assets/images/testimonial/testi3.jpg" alt="#">
<h4 class="name">
Jully Sulli
<span class="deg">Ui/Ux Designer</span>
</h4>
</div>
<div class="text">
<p>"It’s amazing how much easier it has been to meet new people and create instant
connections. I have the exact same personality, the only thing that has changed is my
mindset and a few behaviors."</p>
</div>
</div>

</div>
</div>
</div>
</section>

<script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
<script src="resources/js/wow.min.js"></script>
<script src="resources/js/tiny-slider.js"></script>
<script src="resources/js/glightbox.min.js"></script>
<script src="resources/js/count-up.min.js"></script>
<script src="resources/js/main.js"></script>
<script type="text/javascript">
        //========= testimonial 
        tns({
            container: '.testimonial-slider',
            items: 3,
            slideBy: 'page',
            autoplay: false,
            mouseDrag: true,
            gutter: 0,
            nav: true,
            controls: false,
            controlsText: ['<i class="lni lni-arrow-left"></i>', '<i class="lni lni-arrow-right"></i>'],
            responsive: {
                0: {
                    items: 1,
                },
                540: {
                    items: 1,
                },
                768: {
                    items: 2,
                },
                992: {
                    items: 2,
                },
                1170: {
                    items: 2,
                }
            }
        });

        //====== counter up 
        var cu = new counterUp({
            start: 0,
            duration: 2000,
            intvalues: true,
            interval: 100,
            append: " ",
        });
        cu.start();
    </script>
</body>
</html>
<form method="post">
	<table border="1">
		<th colspan="8">내 상점 </th>
		<tr>
			<td>상점 이름</td>
			<td>상점 전화번호</td>
			<td>상점 지역</td>
			<td>오픈 날짜</td>
			<td>상점 고유번호</td>
			<td>승인</td>
			<td>상태</td>
			<td>버튼</td>
		</tr>
		<%
		if(list == null){
			%>
			<tr><td colspan="8">상점이 없습니다</td></tr>
			<% 
		} else {
			for(ShopDto sdto: list){ %>					
			
			<tr>
				<td><a href="myShopDetail.do?id=<%=sdto.getId()%>&shopId=<%=sdto.getShopId()%>"><%= sdto.getShopName() %></a></td>
				<td><%= sdto.getShopTel() %></td>
				<td><%= sdto.getLocal() %></td>
				<td><fmt:formatDate pattern="yyyy-MM-dd" value="<%= sdto.getOpenDate() %>"/></td>
				<td><%= sdto.getShopId() %></td>
				<td><% if (sdto.getPower().equals("0")){
					out.println("미승인");
				} else if (sdto.getPower().equals("1")){
					out.println("승인");
				} 
					%>
				</td>
				<td><% if (sdto.getDel().equals("0")){
					out.println("정상");
					} else {
						out.println("삭제예정");
					} %>
				</td>
				<td>
				<%if(sdto.getDel().equals("1")) {
					%><input type='submit' value='삭제취소' formaction='myShopCan.do?shopId=<%=sdto.getShopId()%>'>
				<% } else {
					%><input type='submit' value='삭제요청하기' formaction='myShopDelete.do?shopId=<%=sdto.getShopId()%>'>
				<% }
				%>
				</td>
			</tr>
		<%}
		}
		%>
	</table>
	</form>