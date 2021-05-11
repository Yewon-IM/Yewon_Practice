<%@page import="java.util.List"%>
<%@page import="com.yogi.hoxy.dtos.sellerDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 상점 정보보기</title>
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
	<table border="1">
		<th colspan="7">상점 정보 </th>
		<tr>
			<td>상점 이름</td>
			<td>상점 전화번호</td>
			<td>상점 주소</td>
			<td>상점 지역</td>
			<td>오픈 날짜</td>
			<td>상점 사업자번호</td>
			<td>상점 고유번호</td>
		</tr>							
		<tr>
			<td>${sdto.shopName }</td>
			<td>${sdto.shopTel }</td>
			<td>${sdto.shopAdd }</td>
			<td>${sdto.local }</td>
			<td><fmt:formatDate pattern="yyyy-MM-dd" value="${sdto.openDate }"/></td>
			<td>${sdto.businessNum }</td>
			<td>${sdto.shopId }</td>
		</tr>
		<tr>
			<td colspan="4"><a href="myShopUpdateForm.do?id=${sdto.id}&shopId=${sdto.shopId }">수정</a></td>
			<td colspan="3"><a href="myShopDelete.do?id=${sdto.id}&shopId=${sdto.shopId }">삭제</a></td>
		</tr>			
	</table>

<a href=".">메인 홈페이지</a>
</body>
</html>