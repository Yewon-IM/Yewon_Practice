<%@page import="java.util.List"%>
<%@page import="com.yogi.hoxy.dtos.YHDto"%>
<%@page import="com.yogi.hoxy.dtos.sellerDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 리스트</title>
</head>
<%
	List<YHDto> list = (List<YHDto>) request.getAttribute("list");
	List<sellerDto> sList = (List<sellerDto>) request.getAttribute("sList");
%>
<body>
<form method="post">
	<table border="1">
		<th colspan="6">회원가입 승인 리스트</th>
		<tr>
			<td width="50px">아이디</td>
			<td width="60px">이름</td>
			<td width="60px">상태</td>
			<td width="40px">권한</td>
			<td colspan="2">버튼</td>
		</tr>
		<%
		if(list == null){
			%>
			<tr><td colspan="6">들어온 승인이 없습니다 ㅎㅎ</td></tr>
			<%
		}else {
			for(YHDto dto : list){
		%>
		<tr>
		<%-- <a href="detail.do?id=<%=dto.getId() %>"> --%>
			<td width="50px"><%=dto.getId() %></td>
			<td width="50px"><%=dto.getName() %></td>
			<td width="50px"><%if(dto.getWho() == 0){
								out.println("관리자");
								} else if(dto.getWho() == 1) {
									out.println("구매자");
								} else {
									out.println("판매자");
								}
								%>
								</td>
			<td width="30px"><%=dto.getPower() %></td>
			<td width="30px"><input type="submit" value="승인" formaction="admit.do?id=<%=dto.getId()%>"></td>
			<td width="30px"><input type="submit" value="삭제" formaction="delete.do?id=<%=dto.getId()%>"></td>
		</tr>
		<%	}		
		}
		%>			
	</table>
	</form>
	<form method="post">
		<table border="1">
		<th colspan="6">상점 승인 리스트</th>
		<tr>
			<td width="50px">아이디</td>
			<td width="50px">상점 이름</td>
			<td width="60px">상점 주소</td>
			<td width="40px">권한</td>
			<td colspan="2">버튼</td>
		</tr>
		<%
		if(sList == null){
			%>
			<tr><td colspan="6">들어온 승인이 없습니다 ㅎㅎ</td></tr>
			<%
		}else {
			for(sellerDto sdto : sList){
		%>
		<tr>
			<td width="50px"><%=sdto.getId() %></td>
			<td width="50px"><%=sdto.getShopname() %></td>
			<td width="50px"><%=sdto.getShopadd() %></td>
			<td width="30px"><%=sdto.getPower() %></td>
			<td width="30px"><input type="submit" value="승인" formaction="admitShop.do?shopid=<%=sdto.getShopid() %>"></td>
			<td width="30px"><input type="submit" value="삭제" formaction="deleteShop.do?shopid=<%=sdto.getShopid() %>"></td>
		</tr>
		<%	}		
		}
		%>			
	</table>
	</form>
<a href=".">메인 홈페이지</a>
<a href="memberList.do">회원 관리페이지</a>
<a href="shopList.do">상점 관리페이지</a><br>
<a href="logout.do">로그아웃</a>
</body>
</html>