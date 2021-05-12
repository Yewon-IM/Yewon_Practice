<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.yogi.hoxy.dtos.YHDto"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 홈페이지</title>
<% String name = (String) session.getAttribute("name"); %>
</head>
<body>
<h1>안녕하세요 <%=name %>님 (관리자)<br>
메인 홈페이지입니다.</h1>
<a href="admin.do">관리자 페이지</a>
<a href="logout.do">로그아웃</a>
</body>
</html>