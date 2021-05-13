<%@page import="java.util.List"%>
<%@page import="com.yogi.hoxy.dtos.ShopDto"%>
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
<% List<ShopDto> list = (List<ShopDto>)request.getAttribute("list"); %>
<body>
<form method="post">
	<table border="1">
		<th colspan="7">상점 </th>
		<tr>
			<td>상점 이름</td>
			<td>상점 전화번호</td>
			<td>상점 지역</td>
			<td>상점 고유번호</td>
			<td>승인</td>
			<td>상태</td>
		</tr>
		<%
		if(list == null){
			%>
			<tr><td colspan="7">상점이 없습니다</td></tr>
			<% 
		} else {
			for(ShopDto sdto: list){ %>					
			
			<tr>
				<td><a href="shopDetail.do?id=<%=sdto.getId()%>&shopId=<%=sdto.getShopId()%>"><%=sdto.getShopName() %></a></td>
				<td><%= sdto.getShopTel() %></td>
				<td><%= sdto.getLocal() %></td>
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
			</tr>
		<%}
		}
		%>
	</table>
	</form>
<a href="admin.do">관리자 페이지</a>
</body>
</html>