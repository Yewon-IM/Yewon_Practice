<%@page import="java.util.List"%>
<%@page import="com.yogi.hoxy.dtos.sellerDto"%>
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
	List<sellerDto> sList = (List<sellerDto>) request.getAttribute("sList");
%>
<body>

<form method="post">
	<table border="1">
		<th colspan="10">상점 리스트</th>
		<tr>
			<td>아이디</td>
			<td>상점 이름</td>
			<td>상점 전화번호</td>
			<td>상점 주소</td>
			<td>상점 지역</td>
			<td>상점 사업자번호</td>
			<td>상점 고유번호</td>
			<td>상태</td>
			<td colspan="2">버튼</td>
		</tr>
		<%
		if(sList == null){
			out.println("<tr><td colspan='10'>상점이 없습니다 ㅠㅠ</td></tr>");
		}else {
			for(sellerDto sdto : sList){
		%>
		<tr>
			<td width="50px"><%=sdto.getId() %></td>
			<td width="50px"><%=sdto.getShopName() %></td>
			<td width="50px"><%=sdto.getShopTel() %></td>
			<td width="50px"><%=sdto.getShopAdd() %></td>
			<td width="50px"><%=sdto.getLocal() %></td>
			<td width="50px"><%=sdto.getBusinessNum() %></td>
			<td width="50px"><%=sdto.getShopId() %></td>
			<td width="50px"><% if(sdto.getDel().equals("0")){
							out.println("정상 운영");
							} else {
								out.println("삭제 요청");
							}
							%>
			</td>
			
			<td width="50px"><input type="submit" value="수정" formaction="shopUpdateForm.do?id=<%=sdto.getId() %>&shopId=<%=sdto.getShopId() %>"></td>
			<td width="30px"><input type="submit" value="삭제" formaction="shopDelete.do?shopId=<%=sdto.getShopId()%>"></td>
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