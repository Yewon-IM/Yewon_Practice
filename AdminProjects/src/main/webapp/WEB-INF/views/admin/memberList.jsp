<%@page import="java.util.List"%>
<%@page import="com.yogi.hoxy.dtos.YHDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>권한 리스트</title>
<style type = "text/css">
	table{
		width:80%;
		margin:auto;
		height: 100px;
		text-align: center;
	}
</style>
</head>
<%
	List<YHDto> list = (List<YHDto>) request.getAttribute("list");
%>
<body>

<form method="post">
	<table border="1">
		<th colspan="8">회원 리스트</th>
		<tr>
			<td>아이디</td>
			<td>이름</td>
			<td>비밀번호</td>
			<td>전화번호</td>
			<td>이메일</td>
			<td>가입일</td>
			<td>누구인가?</td>
			<td colspan="1">버튼</td>
		</tr>
		<%
		if(list == null){
			%>
			<tr><td colspan="6">회원이 없습니다 ㅠㅠ</td></tr>
			<%
		}else {
			for(YHDto dto : list){
		%>
		<tr>
			<td width="50px"><a href="memDetail.do?id=<%=dto.getId()%>"><%=dto.getId() %></a></td>
			<td width="50px"><%=dto.getName() %></td>
			<td width="50px"><%=dto.getPwd() %></td>
			<td width="50px"><%=dto.getTel() %></td>
			<td width="50px"><%=dto.getEmail() %></td>
			<td width="50px"><%=dto.getRegDate() %></td>
			<td width="50px"><%if(dto.getWho() == 0){
								out.println("관리자");
								} else if(dto.getWho() == 1) {
									out.println("구매자");
								} else {
									out.println("판매자");
								}
								%>
								</td>
			<td width="30px"><input type="submit" value="삭제" formaction="delete.do?id=<%=dto.getId()%>"></td>
		</tr>
		<%	}		
		}
		%>			
	</table>
</form>
<a href=".">메인 홈페이지</a>
<a href="admin.do">회원 승인페이지</a>	
</body>
</html>