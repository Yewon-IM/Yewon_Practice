<%@page import="com.yewon.im.dtos.ProfileDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <!--  This file has been downloaded from bootdey.com    @bootdey on twitter -->
    <!--  All snippets are MIT license http://bootdey.com/license -->
    <title>light user grid - Bootdey.com</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://netdna.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
    	body{margin-top:20px;
background:#F5F5F5;
}
/* Candidate List */
.candidate-list {
  background: #ffffff;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  border-bottom: 1px solid #eeeeee;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
  padding: 20px;
  -webkit-transition: all 0.3s ease-in-out;
  transition: all 0.3s ease-in-out; }
  .candidate-list:hover {
    -webkit-box-shadow: 0px 0px 34px 4px rgba(33, 37, 41, 0.06);
            box-shadow: 0px 0px 34px 4px rgba(33, 37, 41, 0.06);
    position: relative;
    z-index: 99; }
    .candidate-list:hover a.candidate-list-favourite {
      color: #e74c3c;
      -webkit-box-shadow: -1px 4px 10px 1px rgba(24, 111, 201, 0.1);
              box-shadow: -1px 4px 10px 1px rgba(24, 111, 201, 0.1); }

.candidate-list .candidate-list-image {
  margin-right: 25px;
  -webkit-box-flex: 0;
      -ms-flex: 0 0 80px;
          flex: 0 0 80px;
  border: none; }
  .candidate-list .candidate-list-image img {
    width: 80px;
    height: 80px;
    -o-object-fit: cover;
       object-fit: cover; }

.candidate-list-title {
  margin-bottom: 5px; }

.candidate-list-details ul {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -ms-flex-wrap: wrap;
      flex-wrap: wrap;
  margin-bottom: 0px; }
  .candidate-list-details ul li {
    margin: 5px 10px 5px 0px;
    font-size: 13px; }

.candidate-list .candidate-list-favourite-time {
  margin-left: auto;
  text-align: center;
  font-size: 13px;
  -webkit-box-flex: 0;
      -ms-flex: 0 0 90px;
          flex: 0 0 90px; }
  .candidate-list .candidate-list-favourite-time span {
    display: block;
    margin: 0 auto; }
  .candidate-list .candidate-list-favourite-time .candidate-list-favourite {
    display: inline-block;
    position: relative;
    height: 40px;
    width: 40px;
    line-height: 40px;
    border: 1px solid #eeeeee;
    border-radius: 100%;
    text-align: center;
    -webkit-transition: all 0.3s ease-in-out;
    transition: all 0.3s ease-in-out;
    margin-bottom: 20px;
    font-size: 16px;
    color: #646f79;
    }
    .candidate-list .candidate-list-favourite-time .candidate-list-favourite:hover {
      background: #ffffff;
      color: #e74c3c; }

.candidate-banner .candidate-list:hover {
  position: inherit;
  -webkit-box-shadow: inherit;
          box-shadow: inherit;
  z-index: inherit; }


/* Candidate Grid */
.candidate-list.candidate-grid {
    padding: 0px;
    display: block;
    border-bottom: none;
}

.candidate-grid .candidate-list-image {
    text-align: center;
    margin-right: 0px;
}
.candidate-grid .candidate-list-image img {
    height: 150px;
    width: 100%;
}

.candidate-grid .candidate-list-details {
    text-align: center;
    padding: 20px 20px 0px 20px;
    border: 1px solid #eeeeee;
    border-top: none;
}
.candidate-grid .candidate-list-details ul {
    -webkit-box-pack: center;
    -ms-flex-pack: center;
    justify-content: center;
}
.candidate-grid .candidate-list-details ul li {
    margin: 2px 5px;
}

.candidate-grid .candidate-list-favourite-time {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    border-top: 1px solid #eeeeee;
    margin-top: 10px;
    padding: 10px 0;
}
.candidate-grid .candidate-list-favourite-time a {
    margin-bottom: 0;
    margin-left: auto;
}
.candidate-grid .candidate-list-favourite-time span {
    display: inline-block;
    margin: 0;
    -ms-flex-item-align: center;
    align-self: center;
}

.candidate-list.candidate-grid .candidate-list-favourite-time .candidate-list-favourite {
    margin-bottom: 0px;
}

.owl-carousel .candidate-list.candidate-grid {
    margin-bottom: 20px;
}


/* Widget */
.widget .widget-title {
    margin-bottom: 20px;
}
.widget .widget-title h6 {
    margin-bottom: 0;
}
.widget .widget-title a {
    color: #212529;
}

.widget .widget-collapse {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    margin-bottom: 0;
}

/* similar-jobs-item */
.similar-jobs-item .job-list {
    border-bottom: 0;
    padding: 0;
    margin-bottom: 15px;
}
.similar-jobs-item .job-list:last-child {
    margin-bottom: 0;
}
.similar-jobs-item .job-list:hover {
    -webkit-box-shadow: none;
    box-shadow: none;
}

/* checkbox */
.widget .widget-content {
    margin-top: 10px;
}
.widget .widget-content .custom-checkbox {
    margin-bottom: 8px;
}
.widget .widget-content .custom-checkbox:last-child {
    margin-bottom: 0px;
}

.widget .custom-checkbox.fulltime-job .custom-control-label:before {
    background-color: #186fc9;
    border: 2px solid #186fc9;
}

.widget .custom-checkbox.fulltime-job .custom-control-input:checked ~ .custom-control-label:before {
    background: #186fc9;
    border-color: #186fc9;
}

.widget .custom-checkbox.parttime-job .custom-control-label:before {
    background-color: #ffc107;
    border: 2px solid #ffc107;
}

.widget .custom-checkbox.parttime-job .custom-control-input:checked ~ .custom-control-label:before {
    background: #ffc107;
    border-color: #ffc107;
}

.widget .custom-checkbox.freelance-job .custom-control-label:before {
    background-color: #53b427;
    border: 2px solid #53b427;
}

.widget .custom-checkbox.freelance-job .custom-control-input:checked ~ .custom-control-label:before {
    background: #53b427;
    border-color: #53b427;
}

.widget .custom-checkbox.temporary-job .custom-control-label:before {
    background-color: #e74c3c;
    border: 2px solid #e74c3c;
}

.widget .custom-checkbox.temporary-job .custom-control-input:checked ~ .custom-control-label:before {
    background: #e74c3c;
    border-color: #e74c3c;
}

.widget ul {
    margin: 0;
}
.widget ul li a:hover {
    color: #21c87a;
}

.widget .company-detail-meta ul {
    display: block;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
}
.widget .company-detail-meta ul li {
    margin-right: 15px;
    display: inline-block;
}
.widget .company-detail-meta ul li a {
    color: #646f79;
    font-weight: 600;
    font-size: 12px;
}

.widget .company-detail-meta .share-box li {
    margin-right: 0;
    display: inline-block;
    float: left;
}

.widget .company-detail-meta ul li.linkedin a {
    padding: 15px 20px;
    border: 2px solid #eeeeee;
    display: inline-block;
}
.widget .company-detail-meta ul li.linkedin a i {
    color: #06cdff;
}

.widget .company-address ul li {
    margin-bottom: 10px;
}
.widget .company-address ul li:last-child {
    margin-bottom: 0;
}
.widget .company-address ul li a {
    color: #646f79;
}

.widget .widget-box {
    padding: 20px 15px;
}

.widget .similar-jobs-item .job-list.jobster-list {
    padding: 15px 10px;
    border: 0;
    margin-bottom: 10px;
}

.widget .similar-jobs-item .job-list {
    padding-bottom: 15px;
}

.widget .similar-jobs-item .job-list-logo {
    margin-left: auto;
    -webkit-box-flex: 0;
    -ms-flex: 0 0 60px;
    flex: 0 0 60px;
    height: 60px;
    width: 60px;
}

.widget .similar-jobs-item .job-list-details {
    margin-right: 15px;
    -ms-flex-item-align: center;
    align-self: center;
}
.widget .similar-jobs-item .job-list-details .job-list-title h6 {
    margin-bottom: 0;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
}

.widget .similar-jobs-item .job-list.jobster-list .job-list-company-name {
    color: #21c87a;
}

.widget .docs-content {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    background: #eeeeee;
    padding: 30px;
    border-radius: 3px;
}
.widget .docs-content .docs-text {
    -ms-flex-item-align: center;
    align-self: center;
    color: #646f79;
}
.widget .docs-content span {
    font-weight: 600;
}
.widget .docs-content .docs-icon {
    margin-left: auto;
    -webkit-box-flex: 0;
    -ms-flex: 0 0 38px;
    flex: 0 0 38px;
}

/* Job Detail */
.widget .jobster-company-view ul li {
    border: 1px solid #eeeeee;
    margin-bottom: 20px;
}
.widget .jobster-company-view ul li:last-child {
    margin-bottom: 0;
}
.widget .jobster-company-view ul li span {
    color: #212529;
    -ms-flex-item-align: center;
    align-self: center;
    font-weight: 600;
}

.sidebar .widget {
    border: 1px solid #eeeeee;
    margin-bottom: 30px;
}
.sidebar .widget .widget-title {
    border-bottom: 1px solid #eeeeee;
    padding: 14px 20px;
}

.sidebar .widget .widget-content {
    padding: 14px 20px;
}
.widget .widget-content {
    margin-top: 10px;
}
    </style>
</head>
<body>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css" integrity="sha256-2XFplPlrFClt0bIdPgpz8H7ojnk10H69xRqd9+uTShA=" crossorigin="anonymous" />
<% 
	List<ProfileDto> pList = (List<ProfileDto>) request.getAttribute("list"); 
%>
<div class="container">
    <div class="row">
        <div class="col-lg-3">
            <div class="sidebar">
                <div class="widget border-0">
                    <div class="search">
                        <input class="form-control" type="text" placeholder="Search Keywords">
                    </div>
                </div>
                <div class="widget border-0">
                    <div class="locations">
                        <input class="form-control" type="text" placeholder="All Locations">
                    </div>
                </div>
                
                <div class="widget">
                    <div class="widget-title widget-collapse">
                        <h6>Gender</h6>
                        <a class="ml-auto" data-toggle="collapse" href="#gender" role="button" aria-expanded="false" aria-controls="gender"><i class="fas fa-chevron-down"></i></a>
                    </div>
                    <div class="collapse show" id="gender">
                        <div class="widget-content">
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="gender1">
                                <label class="custom-control-label" for="gender1">남자</label>
                            </div>
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="gender2">
                                <label class="custom-control-label" for="gender2">여자</label>
                            </div>
                        </div>
                    </div>
                </div>
                
                 <div class="widget">
                    <div class="widget-title widget-collapse">
                        <h6>Local</h6>
                        <a class="ml-auto" data-toggle="collapse" href="#local" role="button" aria-expanded="false" aria-controls="local"><i class="fas fa-chevron-down"></i></a>
                    </div>
                    <div class="collapse show" id="local">
                        <div class="widget-content">
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="강서구">
                                <label class="custom-control-label" for="gender1">강서구</label>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="widget border-0">
                    <div class="widget-add">
                        <img class="img-fluid" src="images/add-banner.png" alt=""></div>
                </div>
            </div>
        </div>
        <div class="col-lg-9">
            <div class="row mb-4">
                <div class="col-12">
                    <h6 class="mb-0">Showing 1-10 of <span class="text-primary">28 Candidates</span></h6>
                </div>
            </div>
            <div class="job-filter mb-4 d-sm-flex align-items-center">
                <div class="job-alert-bt"> <a class="btn btn-md btn-dark" href="login.do">관리자 로그인</a> </div>
                <div class="job-shortby ml-sm-auto d-flex align-items-center">
                    <form class="form-inline">
                        <div class="form-group mb-0">
                            <label class="justify-content-start mr-2">정렬순 :</label>
                            <div class="short-by">
                                <select class="form-control basic-select select2-hidden-accessible" data-select2-id="1" tabindex="-1" aria-hidden="true">
                                    <option value="old">나이 많은순</option>
                                    <option value="young">나이 적은순</option>
                                    <option value="birthday">생일순</option>
                                </select>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="row">
            
			<%
			if(pList.size() == 0 || pList == null){
				out.println("회원이 없습니다.");
				
			} else {
				for(ProfileDto dto : pList){
					 %><div class="col-sm-6 col-lg-4 mb-4">
	                    <div class="candidate-list candidate-grid">
	                        <div class="candidate-list-image">
	                            <a href="memberDetail.do?seq=<%=dto.getSeq() %>"><img class="img-fluid" src="https://bootdey.com/img/Content/avatar/avatar1.png" alt=""></a>
	                        </div>
	                        <div class="candidate-list-details">
	                            <div class="candidate-list-info">
	                                <div class="candidate-list-title">
	                                    <h5><a href="candidate-detail.html"><%=dto.getName() %></a></h5>
	                                </div>
	                                <div class="candidate-list-option">
	                                    <ul class="list-unstyled">
	                                        <li><i class="fas fa-filter pr-1"></i><%=dto.getJob() %></li>
	                                        <li><i class="fas fa-map-marker-alt pr-1"></i><%=dto.getLocal() %></li>
	                                    </ul>
	                                </div>
	                            </div>
	                            <div class="candidate-list-favourite-time">
	                                <a class="candidate-list-favourite order-2" href="#"><i class="far fa-heart"></i></a>
	                                <span class="candidate-list-time order-1"><i class="far fa-clock pr-1"></i><%=dto.getBirthday() %></span>
	                            </div>
	                        </div>
	                    </div>
	                </div>		
				<%
				}
				}
				%>
       
       
            </div>
            <div class="row">
                <div class="col-12 text-center mt-4 mt-sm-5">
                    <ul class="pagination justify-content-center mb-0">
                        <li class="page-item disabled"> <span class="page-link">Prev</span> </li>
                        <li class="page-item active" aria-current="page"><span class="page-link">1 </span> <span class="sr-only">(current)</span></li>
                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item"><a class="page-link" href="#">...</a></li>
                        <li class="page-item"><a class="page-link" href="#">25</a></li>
                        <li class="page-item"> <a class="page-link" href="#">Next</a> </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<script type="text/javascript">
	
</script>
</body>
</html>