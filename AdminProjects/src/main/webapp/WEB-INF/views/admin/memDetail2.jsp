<%@page import="java.util.List"%>
<%@page import="com.yogi.hoxy.dtos.YHDto"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
		<th colspan="14">회원 세부정보</th>
		<tr>
			<td>아이디</td>
			<td>이름</td>
			<td>비밀번호</td>
			<td>전화번호</td>
			<td>이메일</td>
			<td>가입일</td>
			<td>누구인가?</td>
 			<td>승인여부</td> 
 			<td>가게이름</td> 
 			<td>가게주소</td> 
 			<td>지역</td> 
 			<td>사업자번호</td> 
 			<td>가게번호</td>
		</tr>
		<tr>
			<td width="50px"><a href="memUpdateForm.do?id=${dto.id }">${dto.id }</a></td>
			<td width="50px">${dto.name}</td>
			<td width="50px">${dto.pwd}</td>
			<td width="50px">${dto.tel}</td>
			<td width="50px">${dto.email}</td>
			<td width="50px">${dto.regDate}</td>
				<c:if test="${dto.who == 0}">
					<td width="50px">관리자</td>
				</c:if>
				<c:if test="${dto.who == 1}">
					<td width="50px">판매자</td>
				</c:if>			
				<c:if test="${dto.who == 2}">
					<td width="50px">구매자</td>
				</c:if>			
 			<td width="40px">${dto.power}</td> 
 			<td width="40px">${dto.shopName}</td> 
 			<td width="40px">${dto.shopAdd}</td> 
 			<td width="40px">${dto.local}</td> 
 			<td width="30px">${dto.businessnum}</td> 
 			<td width="30px">${dto.shopId}</td>			 
		</tr>
	</table>
<a href="main.do">메인 홈페이지</a>
<a href="memberList.do">회원 관리페이지</a>	
</body>
</html>