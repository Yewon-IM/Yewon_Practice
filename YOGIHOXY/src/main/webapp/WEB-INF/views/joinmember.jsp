<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
<meta charset="utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge" />
<title>Registration - ClassiGrids Classified Ads and Listing Website Template</title>
<meta name="description" content="" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.svg" />
<script src="https://code.jquery.com/jquery-latest.js"></script>

<link href="https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">

<link rel="stylesheet" href="resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="resources/css/LineIcons.2.0.css" />
<link rel="stylesheet" href="resources/css/animate.css" />
<link rel="stylesheet" href="resources/css/tiny-slider.css" />
<link rel="stylesheet" href="resources/css/glightbox.min.css" />
<link rel="stylesheet" href="resources/css/main.css" />
<link rel="stylesheet" href="resources/css/join.css" />
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>


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
<img src="resources/images/logo2.png" alt="Logo">
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
<a class=" dd-menu collapsed" href="javascript:void(0)" data-bs-toggle="collapse" data-bs-target="#submenu-1-3" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">Listings</a>
<ul class="sub-menu collapse" id="submenu-1-3">
<li class="nav-item"><a href="item-listing-grid.html">Ad Grid</a></li>
<li class="nav-item"><a href="item-listing-list.html">Ad Listing</a></li>
<li class="nav-item"><a href="item-details.html">Ad Details</a></li>
</ul>
</li>
<li class="nav-item">
<a class=" active dd-menu collapsed" href="javascript:void(0)" data-bs-toggle="collapse" data-bs-target="#submenu-1-4" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">Pages</a>
<ul class="sub-menu mega-menu collapse" id="submenu-1-4">
<li class="single-block">
<ul>
<li class="mega-menu-title">Essential Pages</li>
<li class="nav-item"><a href="about-us.html">About Us</a></li>
<li class="nav-item"><a href="item-details.html">Ads Details</a></li>
<li class="nav-item"><a href="post-item.html">Ads Post</a></li>
<li class="nav-item"><a href="pricing.html">Pricing Table</a></li>
<li class="nav-item active"><a href="registration.html">Sign Up</a></li>
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
<li class="single-block">
<ul>
<li class="mega-menu-title">Dashboard</li>
<li class="nav-item"><a href="dashboard.html">Account Overview</a>
</li>
<li class="nav-item"><a href="profile-settings.html">My Profile</a>
</li>
<li class="nav-item"><a href="my-items.html">My Ads</a></li>
 <li class="nav-item"><a href="favourite-items.html">Favorite Ads</a>
</li>
<li class="nav-item"><a href="post-item.html">Ad post</a></li>
<li class="nav-item"><a href="bookmarked-items.html">Bookmarked Ad</a>
</li>
<li class="nav-item"><a href="messages.html">Messages</a></li>
<li class="nav-item"><a href="delete-account.html">Close account</a>
</li>
<li class="nav-item"><a href="invoice.html">Invoice</a></li>
</ul>
</li>
</ul>
</li>
<li class="nav-item">
<a class=" dd-menu collapsed" href="javascript:void(0)" data-bs-toggle="collapse" data-bs-target="#submenu-1-5" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">Blog</a>
<ul class="sub-menu collapse" id="submenu-1-5">
<li class="nav-item"><a href="blog-grid-sidebar.html">Blog Grid Sidebar</a>
</li>
<li class="nav-item"><a href="blog-single.html">Blog Single</a></li>
<li class="nav-item"><a href="blog-single-sidebar.html">Blog Single
Sibebar</a></li>
</ul>
</li>
</ul>
</div> 
<div class="login-button">
<ul>
<li>
<a href="login.do"><i class="lni lni-enter"></i> Login</a>
</li>
<li>
<a href="join.html"><i class="lni lni-user"></i> Register</a>
</li>
</ul>
</div>
<div class="button header-button">
<a href="post-item.html" class="btn">Post an Ad</a>
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
<h1 class="page-title">회원가입</h1>
</div>
</div>
<div class="col-lg-6 col-md-6 col-12">
<ul class="breadcrumb-nav">
<li><a href=".">홈</a></li>
<li>회원가입</li>
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
<h4 class="title">회원가입</h4>
<div class="socila-login">
</div>
<form action="join.do" id="join_form" method="post">
<div class="form-group">아이디
<input class="id_input" name="id" type="text">
<span class="id_input_re_1">사용 가능한 아이디입니다.</span>
<span class="id_input_re_2">아이디가 이미 존재합니다.</span>
<span class="final_id_ck">아이디를 입력해주세요.</span>
</div>
<div class="form-group">
<label>비밀번호</label>
<input class="pw_input" name="pwd" type="password">
<span class="final_pw_ck">비밀번호를 입력해주세요.</span>
</div>
<div class="form-group">
<label>비밀번호 확인</label>
<input class=pwck_input type="password">
<span class="final_pwck_ck">비밀번호 확인을 입력해주세요.</span>
<span class="pwck_input_re_1">비밀번호가 일치합니다.</span>
<span class="pwck_input_re_2">비밀번호가 일치하지 않습니다.</span>
</div>
<div class="form-group">
<label>이름</label>
<div>
<input class="user_input" name="name" type="text">
</div>
<span class="final_name_ck">이름을 입력해주세요.</span>
</div>
<div class="mail_wrap">
	<div class="mail_name">이메일</div>
	<div class="mail_input_box">
		<input class="mail_input" name="email" type="email">
	</div>
		<span class="final_mail_ck">이메일을 입력해주세요.</span>
	     <div class="mail_check_wrap">
                    <div class="mail_check_input_box" id="mail_check_input_box_false">
                        <input class="mail_check_input" disabled="disabled">
                    </div>
                    <div class="mail_check_button">
                        <span>인증번호 전송</span>
                    </div>
	                    <div class="clearfix"></div>
	                    <span class="final_mailnum_ck" id="mail_check_input_box_warn" >인증번호를 입력해주세요.</span>
	                </div>
	               </div>
	               
<div class="form-group"> 
<label for="mem_phone">전화번호</label> 
<input type="tel" class="phone_input" id="mem_phone" name="tel" placeholder="'-'없이 번호만 입력해주세요"> 
<span class="final_phone_ck">전화번호를 입력해주세요.</span>
<div class="eheck_font" id="phone_check"></div> 
</div>

<!-- <select name = "ad"> -->
<!-- 	<option value="강남구">강남구</option> -->
<!-- 	<option value="강동구">강동구</option> -->
<!-- 	<option value="강북구">강북구</option> -->
<!-- 	<option value="강서구">강서구</option> -->
<!-- 	<option value="관악구">관악구</option> -->
<!-- 	<option value="광진구">광진구</option> -->
<!-- 	<option value="구로구">구로구</option> -->
<!-- 	<option value="금천구">금천구</option> -->
<!-- 	<option value="노원구">노원구</option> -->
<!-- 	<option value="도봉구">도봉구</option> -->
<!-- 	<option value="동대문구">동대문구</option> -->
<!-- 	<option value="동작구">동작구</option> -->
<!-- 	<option value="마포구">마포구</option> -->
<!-- 	<option value="서대문구">서대문구</option> -->
<!-- 	<option value="서초구">서초구</option> -->
<!-- 	<option value="성동구">성동구</option> -->
<!-- 	<option value="성북구">성북구</option> -->
<!-- 	<option value="송파구">송파구</option> -->
<!-- 	<option value="양천구">양천구</option>				  -->
<!-- 	<option value="영등포구">영등포구</option> -->
<!-- 	<option value="용산구">용산구</option> -->
<!-- 	<option value="은평구">은평구</option> -->
<!-- 	<option value="종로구">종로구</option> -->
<!-- 	<option value="중구">중구</option> -->
<!-- 	<option value="중랑구">중랑구</option> -->
<!-- </select> -->

<label>주소</label>
<div class="form-group"> 
<input class="form-control" style="width: 40%; display: inline;" placeholder="우편번호" name="oAdd" id="mem_oaddress" type="text" readonly="readonly" > 
<button type="button" class="btn btn-default" onclick="execPostCode();"><i class="fa fa-search"></i> 우편번호 찾기</button>
<!--  <button type="button" style="background :gray; width: 40%; display: inline;"onclick="execPostCode();">우편번호 찾기</button>--> 
</div> 
<div class="form-group"> <input class="form-control" style="top: 5px;" placeholder="주소" name="add" id="mem_address" type="text" readonly="readonly" /> 
</div> 
<div class="form-group"> 
<input class="address_input_3" placeholder="상세주소" name="detailAdd" id="mem_detailaddress" type="text" /> 
<!-- <input type="text" id="mem_extraAddress" placeholder="참고항목"> -->
<span class="final_addr_ck">상세 주소를 입력해주세요.</span>
</div>
<div class="type_input">
<label>구매자로 가입</label>
<input type="radio" name="who" id="sel" value="1"/><br>
<label>판매자로 가입</label>
<input type="radio" name="who" id="cus" value="2"/>
<span class="final_type_ck">타입을 선택해주세요.</span>
 </div>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">
	
    function execPostCode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
      //          if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
      //              if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
      //                  extraAddr += data.bname;
      //              }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
      //              if(data.buildingName !== '' && data.apartment === 'Y'){
       //                 extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
     //               }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
       //             if(extraAddr !== ''){
    //                    extraAddr = ' (' + extraAddr + ')';
      //              }
                    // 조합된 참고항목을 해당 필드에 넣는다.
              //     document.getElementById("mem_extraAddress").value = extraAddr;
                
   //             } else {
               //     document.getElementById("mem_extraAddress").value = '';
      //          }
//
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById("mem_oaddress").value = data.zonecode;
                document.getElementById("mem_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("mem_detailaddress").focus();
            }
        }).open();
    }
</script>

<!-- <div class="check-and-pass"> -->
<!-- <div class="row align-items-center"> -->
<!-- <div class="col-12"> -->
<!-- <div class="form-check"> -->
<!-- <input type="checkbox" class="form-check-input width-auto" id="exampleCheck1"> -->
<!-- <label class="form-check-label">동의하십니까? <a href="javascript:void(0)">계약 조건</a></label> -->
<!-- </div> -->
<!-- </div> -->
<!-- </div> -->
<!-- </div> -->
<div class="button">
	<input type="submit" class="join_button1" value="가입하기">
	<!--<button type="submit" class="btn">회원등록</button> -->
</div>

</form>
<p class="outer-link">이미 계정이 있나요? <a href="login.do">로그인하기</a>
</p>
</div>
</div>
</div>
</div>
</section>

<a href="#" class="scroll-top btn-hover">
<i class="lni lni-chevron-up"></i>
</a>

<script data-cfasync="false" src="resources/js/email-decode.min.js"></script><script src="resources/js/bootstrap.min.js"></script>
<script src="resources/js/wow.min.js"></script>
<script src="resources/js/tiny-slider.js"></script>
<script src="resources/js/glightbox.min.js"></script>
<script src="resources/js/main.js"></script>
<script>

var code="";

/* 유효성 검사 통과유무 변수 */
var idCheck = false;            // 아이디
var idckCheck = false;            // 아이디 중복 검사
var pwCheck = false;            // 비번
var pwckCheck = false;            // 비번 확인
var pwckcorCheck = false;        // 비번 확인 일치 확인
var nameCheck = false;            // 이름
var mailCheck = false;            // 이메일
var mailnumCheck = false;        // 이메일 인증번호 확인
var phoneCheck = false; 			//전화번호
var addressCheck = false;        // 주소
var typeCheck = false; 			//타입
var sel= document.getElementById("sel");
var mas= document.getElementById("mas");

$(document).ready(function(){
$(".join_button").click(function(){
    
    /* 입력값 변수 */
    var id = $('.id_input').val();                 // id 입력란
    var pw = $('.pw_input').val();                // 비밀번호 입력란
    var pwck = $('.pwck_input').val();            // 비밀번호 확인 입력란
    var name = $('.user_input').val();            // 이름 입력란
    var mail = $('.mail_input').val();            // 이메일 입력란
    var mailnum = $('.mail_check_input').val();
    var phone = $('.phone_input').val();  			// 전화번호 입력란
    var addr = $('.address_input_3').val();        // 주소 입력란
    var type = $('.type_input').val(); 		//타입 입력란
    /* 아이디 유효성검사 */
    if(id == ""){
        $('.final_id_ck').css('display','block');
        idCheck = false;
    }else{
        $('.final_id_ck').css('display', 'none');
        idCheck = true;
    }
    /* 비밀번호 유효성 검사 */
    if(pw == ""){
        $('.final_pw_ck').css('display','block');
        pwCheck = false;
    }else{
        $('.final_pw_ck').css('display', 'none');
        pwCheck = true;
    }
    /* 비밀번호 확인 유효성 검사 */
    if(pwck == ""){
        $('.final_pwck_ck').css('display','block');
        pwckCheck = false;
    }else{
        $('.final_pwck_ck').css('display', 'none');
        pwckCheck = true;
    }
    /* 이름 유효성 검사 */
    if(name == ""){
        $('.final_name_ck').css('display','block');
        nameCheck = false;
    }else{
        $('.final_name_ck').css('display', 'none');
        nameCheck = true;
    }
    /* 이메일 유효성 검사 */
    if(mail == ""){
        $('.final_mail_ck').css('display','block');
        mailCheck = false;
    }else{
        $('.final_mail_ck').css('display', 'none');
        mailCheck = true;
    }
    /* 인증번호 유효성 검사 */
    if(mailnum == ""){
        $('.final_mailnum_ck').css('display','block');
        mailnumCheck = false;
    }else{
        $('.final_mailnum_ck').css('display', 'none');
        mailnumCheck = true;
    }
    /* 전화번호 유효성 검사 */
    if(phone == ""){
        $('.final_phone_ck').css('display','block');
        phoneCheck = false;
    }else{
        $('.final_phone_ck').css('display', 'none');
        phoneCheck = true;
    }
    /* 주소 유효성 검사 */
    if(addr == ""){
        $('.final_addr_ck').css('display','block');
        addressCheck = false;
    }else{
        $('.final_addr_ck').css('display', 'none');
        addressCheck = true;
    }
    /* 타입 유효성 검사 */
    if(!sel.checked && !cus.checked) {
    	 $('.final_type_ck').css('display','block');
	       typeCheck = false;
    } else{
      $('.final_type_ck').css('display', 'none');
      typeCheck = true;
  }
    
    
//     if(type == ""){
//         $('.final_type_ck').css('display','block');
//         typeCheck = false;
//     }else{
//         $('.final_type_ck').css('display', 'none');
//         typeCheck = true;
//     }
    /* 최종 유효성 검사 */
    if(idCheck&&idckCheck&&pwCheck&&pwckCheck&&pwckcorCheck&&nameCheck&&mailCheck&&mailnumCheck&&phoneCheck&&addressCheck&&typeCheck) {
    	document.getElementById('join_form').submit();
   	    alert(document.getElementById("join_form").tagName);
        location.href=".";
        return false;

    } else {
    	alert("빈칸을 채워주세요!!");
    }      
	});
});
//아이디 중복검사
$('.id_input').on("propertychange change keyup paste input", function(){

/*	console.log("id 중복 테스트"); */	


	var id = $('.id_input').val();			// .id_input에 입력되는 값
	var data = {id : id}				// '컨트롤에 넘길 데이터 이름' : '데이터(.id_input에 입력되는 값)'
	
	$.ajax({
		type : "post",
		url : "memberIdChk",
		data : data,
		success : function(result) {
			console.log("성공 여부" + result);
			if(result != 'fail'){
				$('.id_input_re_1').css("display","inline-block");
				$('.id_input_re_2').css("display", "none");	
				// 아이디 중복이 없는 경우
				idckCheck = true;
			} else {
				$('.id_input_re_2').css("display","inline-block");
				$('.id_input_re_1').css("display", "none");				
				// 아이디 중복된 경우
				idckCheck = false;
			}
		} //success 종료
	}); // ajax 종료
});// function 종료
/* 인증번호 이메일 전송 */
$(".mail_check_button").click(function(){
	var mem_email = $(".mail_input").val();            // 입력한 이메일
    var cehckBox = $(".mail_check_input");        // 인증번호 입력란
    var boxWrap = $(".mail_check_input_box");    // 인증번호 입력란 박스 
 $.ajax({
        
        type:"GET",
        url:"mailCheck?mem_email=" + mem_email,
        success:function(data){
            
        	//console.log("data : " + data);
            cehckBox.attr("disabled",false);
   	       boxWrap.attr("id", "mail_check_input_box_true");
            code = data;
        }
                
    });
});


/* 인증번호 비교 */
$(".mail_check_input").blur(function(){
	  var inputCode = $(".mail_check_input").val();        // 입력코드    
	    var checkResult = $("#mail_check_input_box_warn");    // 비교 결과     
	    
	    if(inputCode == code){                            // 일치할 경우
	        checkResult.html("인증번호가 일치합니다.");
	        checkResult.attr("class", "correct");     
	        mailnumCheck = true;     // 일치할 경우
	    } else {                                            // 일치하지 않을 경우
	        checkResult.html("인증번호를 다시 확인해주세요.");
	        checkResult.attr("class", "incorrect");
	        mailnumCheck = false;    // 일치하지 않을 경우
	    }    
});


/* 비밀번호 확인 일치 유효성 검사 */
 
$('.pwck_input').on("propertychange change keyup paste input", function(){
	var pw = $('.pw_input').val();
    var pwck = $('.pwck_input').val();
    $('.final_pwck_ck').css('display', 'none'); 
    
    if(pw == pwck){
        $('.pwck_input_re_1').css('display','block');
        $('.pwck_input_re_2').css('display','none');
        pwckcorCheck = true;
    }else{
        $('.pwck_input_re_1').css('display','none');
        $('.pwck_input_re_2').css('display','block');
        pwckcorCheck = false;
    }   
});    
 

</script>
</body>
</html>