<%@page import="java.util.List"%>
<%@page import="com.yogi.hoxy.dtos.sellerDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<th colspan="6">내 상점 </th>
		<tr>
			<td>상점 이름</td>
			<td>상점 전화번호</td>
			<td>상점 주소</td>
			<td>상점 지역</td>
			<td>상점 사업자번호</td>
			<td>상점 고유번호</td>
		</tr>							
		<tr>
			<td>${sdto.shopname }</td>
			<td>${sdto.shoptel }</td>
			<td>${sdto.shopadd }</td>
			<td>${sdto.local }</td>
			<td>${sdto.businessnum }</td>
			<td>${sdto.shopid }</td>
		</tr>
		<tr>
			<td colspan="3"><a href="myShopUpdateForm.do?shopid=${sdto.shopid }">수정</a></td>
			<td colspan="3"><a href="myShopDelete.do?shopid=${sdto.shopid }">삭제</a></td>
		</tr>			
	</table>

<a href=".">메인 홈페이지</a>
</body>
</html>