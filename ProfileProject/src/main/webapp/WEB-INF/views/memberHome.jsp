<%@page import="com.yewon.im.dtos.BoardDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
<% List<BoardDto> list = (List<BoardDto>) request.getAttribute("list"); %>
    <meta charset="utf-8">
    <!--  This file has been downloaded from bootdey.com    @bootdey on twitter -->
    <!--  All snippets are MIT license http://bootdey.com/license -->
    <title>개인 홈페이지</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://netdna.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
    	body {
    background:#eee;
    margin-top: 20px;
}
.page-inner.no-page-title {
    padding-top: 30px;
}
.page-inner {
    position: relative;
    min-height: calc(100% - 56px);
    padding: 20px 30px 40px 30px;
    background: #f3f4f7;
}
.card.card-white {
    background-color: #fff;
    border: 1px solid transparent;
    border-radius: 4px;
    box-shadow: 0 0.05rem 0.01rem rgba(75, 75, 90, 0.075);
    padding: 25px;
}
.grid-margin {
    margin-bottom: 2rem;
}
.profile-timeline ul li .timeline-item-header {
    width: 100%;
    overflow: hidden;
}
.profile-timeline ul li .timeline-item-header img {
    width: 40px;
    height: 40px;
    float: left;
    margin-right: 10px;
    border-radius: 50%;
}
.profile-timeline ul li .timeline-item-header p {
    margin: 0;
    color: #000;
    font-weight: 500;
}
.profile-timeline ul li .timeline-item-header p span {
    margin: 0;
    color: #8e8e8e;
    font-weight: normal;
}
.profile-timeline ul li .timeline-item-header small {
    margin: 0;
    color: #8e8e8e;
}
.profile-timeline ul li .timeline-item-post {
    padding: 20px 0 0 0;
    position: relative;
}
.profile-timeline ul li .timeline-item-post > img {
    width: 100%;
}
.timeline-options {
    overflow: hidden;
    margin-top: 20px;
    margin-bottom: 20px;
    border-bottom: 1px solid #f1f1f1;
    padding: 10px 0 10px 0;
}
.timeline-options a {
    display: block;
    margin-right: 20px;
    float: left;
    color: #2b2b2b;
    text-decoration: none;
}
.timeline-options a i {
    margin-right: 3px;
}
.timeline-options a:hover {
    color: #5369f8;
}
.timeline-comment {
    overflow: hidden;
    margin-bottom: 10px;
    width: 100%;
    border-bottom: 1px solid #f1f1f1;
    padding-bottom: 5px;
}
.timeline-comment .timeline-comment-header {
    overflow: hidden;
}
.timeline-comment .timeline-comment-header img {
    width: 30px;
    border-radius: 50%;
    float: left;
    margin-right: 10px;
}
.timeline-comment .timeline-comment-header p {
    color: #000;
    float: left;
    margin: 0;
    font-weight: 500;
}
.timeline-comment .timeline-comment-header small {
    font-weight: normal;
    color: #8e8e8e;
}
.timeline-comment p.timeline-comment-text {
    display: block;
    color: #2b2b2b;
    font-size: 14px;
    padding-left: 40px;
}
.post-options {
    overflow: hidden;
    margin-top: 15px;
    margin-left: 15px;
}
.post-options a {
    display: block;
    margin-top: 5px;
    margin-right: 20px;
    float: left;
    color: #2b2b2b;
    text-decoration: none;
    font-size: 16px !important;
}
.post-options a:hover {
    color: #5369f8;
}
.online {
    position: absolute;
    top: 2px;
    right: 2px;
    display: block;
    width: 9px;
    height: 9px;
    border-radius: 50%;
    background: #ccc;
}
.online.on {
    background: #2ec5d3;
}
.online.off {
    background: #ec5e69;
}
#cd-timeline::before {
    border: 0;
    background: #f1f1f1;
}
.cd-timeline-content p,
.cd-timeline-content .cd-read-more,
.cd-timeline-content .cd-date {
    font-size: 14px;
}
.cd-timeline-img.cd-success {
    background: #2ec5d3;
}
.cd-timeline-img.cd-danger {
    background: #ec5e69;
}
.cd-timeline-img.cd-info {
    background: #5893df;
}
.cd-timeline-img.cd-warning {
    background: #f1c205;
}
.cd-timeline-img.cd-primary {
    background: #9f7ce1;
}
.page-inner.full-page {
    display: -webkit-box;
    display: -moz-box;
    display: -ms-flexbox;
    display: -webkit-flex;
    display: flex;
}
.user-profile-card {
    text-align: center;
}
.user-profile-image {
    width: 100px;
    height: 100px;
    margin-bottom: 10px;
}
.team .team-member {
    display: block;
    overflow: hidden;
    margin-bottom: 10px;
    float: left;
    position: relative;
}
.team .team-member .online {
    top: 5px;
    right: 5px;
}
.team .team-member img {
    width: 40px;
    float: left;
    border-radius: 50%;
    margin: 0 5px 0 5px;
}
.label.label-success {
    background: #43d39e;
}
.label {
    font-weight: 400;
    padding: 4px 8px;
    font-size: 11px;
    display: inline-block;
    line-height: 1;
    color: #fff;
    text-align: center;
    white-space: nowrap;
    vertical-align: baseline;
    border-radius: 0.25em;
}

    </style>
</head>
<body>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
<div class="container">
<div class="page-inner no-page-title">
    <!-- start page main wrapper -->
    <div id="main-wrapper">
        <div class="row">
            <div class="col-lg-5 col-xl-3">
                <div class="card card-white grid-margin">
                    <div class="card-heading clearfix">
                        <h4 class="card-title">프로필</h4>
                    </div>
                    <div class="card-body user-profile-card mb-3">
 						<c:if test="${dto.profileImg == null }">
 							<img src="https://bootdey.com/img/Content/avatar/avatar7.png" class="user-profile-image rounded-circle" alt="" />  
 						</c:if>
 						<c:if test="${dto.profileImg != null }">
 							<img src="resources/profileImg/${dto.profileImg }" class="user-profile-image rounded-circle" alt="" />  
 						</c:if>
                        <h4 class="text-center h6 mt-2"></h4>
                        <p class="text-center small">${dto.name }</p>
                        <button class="btn btn-theme btn-sm"><fmt:formatDate value="${dto.birthday }"/></button>
                        <button class="btn btn-theme btn-sm">Message</button>
                    </div>
                    <hr />
                    <div class="card-heading clearfix mt-3">
                        <h4 class="card-title">취미</h4>
                    </div>
                    <div class="card-body mb-3">
                        <a href="#" class="label label-success mb-2">${dto.hobby }</a>
                    </div>
                    <hr />
                    <div class="card-heading clearfix mt-3">
                        <h4 class="card-title">About</h4>
                    </div>
                    <div class="card-body mb-3">
                        <p class="mb-0">${dto.introduce }</p>
                    </div>
                    <hr />
                    <div class="card-heading clearfix mt-3">
                        <h4 class="card-title">Contact Information</h4>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-borderless mb-0 text-muted">
                                <tbody>
                                    <tr>
                                        <th scope="row">email</th>
                                        <td>${dto.email }</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">phone</th>
                                        <td>${dto.tel }</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">local</th>
                                        <td>${dto.local }</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-7 col-xl-6">
                <div class="card card-white grid-margin">
                    <div class="card-body">
                        <div class="post">
                        	<form method="post" action="writeBoard.do"> 
	                        <textarea name="content" class="form-control" placeholder="글을 작성하세요" rows="4"></textarea>
	                            <div class="post-options">
	                                <a href="#"><i class="fa fa-camera"></i></a>
	                                <a href="#"><i class="fas fa-video"></i></a>
	                                <a href="#"><i class="fa fa-music"></i></a>
	                                <input type="hidden" name="member_seq" value="${dto.seq }"/>
	                                <!-- <input type="hidden" id="board_img" value="" />  -->
	                                <input type="submit" value="글쓰기" class="btn btn-outline-primary float-right">
	                            </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="profile-timeline">
                    <ul class="list-unstyled">
                        <li class="timeline-item">
                            <c:if test="${list == null }">
                            	
                            </c:if>
                            <c:if test="${list != null }">
                            	<c:forEach var="b" items="${list }">
                            	
                            		<div class="card card-white grid-margin">
                                <div class="card-body">
                                    <div class="timeline-item-header">
                                    <c:if test="${dto.profileImg == null }">
                                    	<img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="" />
                                    </c:if>
                                    <c:if test="">
                                    	<img src="resources/profileImg/${dto.profileImg }" alt="" />
                                    </c:if>
                                        <small><fmt:formatDate value="${b.writeDate }" pattern="yyyy-MM-dd hh:mm"/></small>
                                  
                                    </div>
                                    <div class="timeline-item-post">
										<p>${b.content }</p>
                                        <div class="timeline-options">
                                            <a onclick="likeup(${b.board_seq},${dto.seq })"><i class="fa fa-thumbs-up"></i> Like (${b.like })</a>
                                            
                                            <a href="javascript:showComment(${b.board_seq });"><i class="fa fa-comment"></i> 댓글 (
                                             											<c:set var="isS" value="false"/>
                                             											<c:set var="comments" value="0"/>
                                            											
                                            											<c:forEach var="c" items="${countList }">
                                            												<c:if test="${c.board_seq == b.board_seq }">
                                            													<c:set var="isS" value="true"/>
                                            													<c:set var="comments" value="${c.countComment}"/>
                                            												</c:if>
                                            											</c:forEach>
                                            												<c:if test="${isS == 'true'}">
                                            													${comments }
                                            												</c:if>
                                            												<c:if test="${isS == 'false' }">
                                            													0
                                            												</c:if>
                                            											  )</a>
                                        </div>
                                        
                                        
                                        <div id="comment${b.board_seq }" style="display: none;" class="timeline-comment">
                                        
                                        <c:forEach var="c" items="${cList }">  
                                        
                                        <c:if test="${cList != null && c.board_seq == b.board_seq}">
                                        	
                                        	
                                            <div class="timeline-comment-header">
                                                <img src="resources/profileImg/${dto.profileImg }" alt="" />
                                                <p>${c.profileDto.name } <small><fmt:formatDate value="${c.writeDate }" pattern="yyyy-MM-dd hh:mm"/></small></p>
                                            </div>
                                            <p class="timeline-comment-text">${c.content }</p>
                                            
                                        </c:if>
                                        </c:forEach>
                                        
                                        </div>
                                        
                             	<form method="post" action="writeComment.do">
                                <textarea name="content" class="form-control" placeholder="답글을 작성하세요"></textarea>
                                <div class="post-options">
	                                <a href="#"><i class="fa fa-camera"></i></a>
	                                <a href="#"><i class="fas fa-video"></i></a>
	                                <a href="#"><i class="fa fa-music"></i></a>
	                                <input type="hidden" name="board_seq" value="${b.board_seq }" />
	                                <input type="hidden" name="member_seq" value=1 />
	                                <input type="submit" value="답글쓰기" class="btn btn-outline-primary float-right">
	                            </div>
	                            </form>
                                    </div>
                                </div>
                            </div>
                            
                            	</c:forEach>                         	                           	                            	
                            </c:if>                            
                        </li>
                        
<!--                         <li class="timeline-item"> -->
<!--                             <div class="card card-white grid-margin"> -->
<!--                                 <div class="card-body"> -->
<!--                                     <div class="timeline-item-header"> -->
<!--                                         <img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="" /> -->
<!--                                         <p>Veema Walkeror <span>uploaded a photo</span></p> -->
<!--                                         <small>7 hours ago</small> -->
<!--                                     </div> -->
<!--                                     <div class="timeline-item-post"> -->
<!--                                         <p>totam rem aperiam, eaque ipsa quae ab illo inventore</p> -->
<!--                                         <img src="img/post-img01.jpg" alt="" /> -->
<!--                                         <div class="timeline-options"> -->
<!--                                             <a href="#"><i class="fa fa-thumbs-up"></i> Like (22)</a> -->
<!--                                             <a href="#"><i class="fa fa-comment"></i> Comment (7)</a> -->
<!--                                             <a href="#"><i class="fa fa-share"></i> Share (9)</a> -->
<!--                                         </div> -->
<!--                                         <div class="timeline-comment"> -->
<!--                                             <div class="timeline-comment-header"> -->
<!--                                                 <img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="" /> -->
<!--                                                 <p>Memila moriya <small>1 hour ago</small></p> -->
<!--                                             </div> -->
<!--                                             <p class="timeline-comment-text">Explicabo Nemo enim ipsam voluptatem quia voluptas.</p> -->
<!--                                         </div> -->
<!--                                         <textarea class="form-control" placeholder="Replay"></textarea> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </li> -->
                        
                    </ul>
                </div>
            </div>
            <div class="col-lg-12 col-xl-3">
                <div class="card card-white grid-margin">
                    <div class="card-heading clearfix">
                        <h4 class="card-title">퀵창</h4>
                    </div>
                    <div class="card-body">
                        <div class="team">
                            <div class="team-member">
                                <div class="online on"></div>
                                <a href="main.do"><img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="" /></a>
                            </div>
                            <div class="team-member">
                            <a href="toDoList.do?member_seq=${dto.seq }"><img src="resources/img/to-do-list.png" alt="" /></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card card-white grid-margin">
                    <div class="card-heading clearfix">
                        <h4 class="card-title">Some Info</h4>
                    </div>
                    <div class="card-body">
                        <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis architecto.</p>
                    </div>
                </div>
            </div>
        </div>
        <!-- Row -->
    </div>
    <!-- end page main wrapper -->
    <div class="page-footer">
        <p>Copyright © 2020 Evince All rights reserved.</p>
    </div>
</div>
</div>

<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<script type="text/javascript">
	function showComment(num){
		var con = document.getElementById('comment'+num);
		if(con.style.display == 'none'){
			con.style.display = 'block';
		} else if(con.style.display == 'block'){
			con.style.display = 'none';
		}
	}
	
	function likeup(board_seq, seq){
		location.href="likeup.do?board_seq="+board_seq+'&member_seq='+seq;
	}
</script>
</body>
</html>