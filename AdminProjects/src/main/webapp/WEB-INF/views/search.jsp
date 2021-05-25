<%@page import="java.util.List"%>
<%@page import="com.yogi.hoxy.dtos.ProductDto"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
<% List<ProductDto> sList = (List<ProductDto>) request.getAttribute("sList"); %>
	<table border="1">
		<th colspan="9">상품 리스트</th>
		<tr>
			<td>seq</td>
			<td>상점 고유번호</td>
			<td>상품이름</td>
			<td>내용</td>
			<td>가격</td>
			<td>재고</td>
			<td>이미지</td>
			<td>like</td>
			<td>상점이름</td>
			<td>지역</td>
		</tr>
		<tr>
		<%
		if(sList == null || sList.size() == 0){
			%><td colspan="9">관련상품이 없습니다.</td><%
		}else {
			for(ProductDto dto : sList){
		%>
		</tr>
		<tr>
			<td width="50px"><%=dto.getProduct_seq()%></td>
			<td width="50px"><%=dto.getShopId()%></td>
			<td width="50px"><%=dto.getProductName()%></td>
			<td width="50px"><%=dto.getContent()%></td>
			<td width="50px"><%=dto.getPrice()%></td>
			<td width="50px"><%=dto.getStock()%></td>
			<td width="50px"><%=dto.getImg_Url() %></td>
			<td width="50px"><%=dto.getLike()%></td>
			<td width="50px"><%=dto.getShopDto().getShopName()%></td>
			<td width="50px"><%=dto.getShopDto().getLocal()%></td>
		</tr>
		<%	}		
		}
		%>			
	</table>
</body>
</html>