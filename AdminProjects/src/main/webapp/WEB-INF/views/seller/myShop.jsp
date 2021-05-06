<%@page import="java.util.List"%>
<%@page import="com.yogi.hoxy.dtos.sellerDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
</head>
<% List<sellerDto> list = (List<sellerDto>)request.getAttribute("list"); %>
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
		<%
		if(list == null){
			%>
			<tr><td colspan="6">상점이 없습니다</td></tr>
			<% 
		} else {
			for(sellerDto sdto: list){ %>					
			
			<tr>
				<td><a href="myShopDetail.do?shopid=<%=sdto.getShopid()%>"><%= sdto.getShopname() %></a></td>
				<td><%= sdto.getShoptel() %></td>
				<td><%= sdto.getShopadd() %></td>
				<td><%= sdto.getLocal() %></td>
				<td><%= sdto.getBusinessnum() %></td>
				<td><%= sdto.getShopid() %></td>
			</tr>
		<%}
		}
		%>
	</table>
<a href=".">메인 홈페이지</a>
<a href="myShopAddForm.do">상점 추가하기</a></body>
</body>
</html>