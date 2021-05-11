<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<style type = "text/css">
	table{
		width:80%;
		margin:auto;
		height: 100px;
		text-align: center;
	}
</style>
<script type="text/javascript">
	function updateForm(id) {
		location.href="myPageUpdateForm.do?id="+id;
	}
</script>
</head>
<body>
<form method="post">
<table border="1">
	<th colspan="6">회원정보</th>
	<tr>
		<td>아아디</td>
		<td>이름</td>
		<td>비밀번호</td>
		<td>전화번호</td>
		<td>이메일</td>
		<td>가입일</td>
	</tr>
	<tr>
		<td>${dto.id }</td>
		<td>${dto.name }</td>
		<td>${dto.pwd }</td>
		<td>${dto.tel }</td>
		<td>${dto.email }</td>
		<td><fmt:formatDate pattern="yyyy-MM-dd" value="${dto.regDate }" /></td>
	</tr>
	<tr>
		<td colspan="6">
			<input type="hidden" name="shopName" value=${dto.shopName }>
			<input type="hidden" name="shopAdd" value=${dto.shopAdd }>
			<input type="hidden" name="local" value=${dto.local }>
			<input type="hidden" name="businessnum" value=${dto.businessNum }>
			<input type="hidden" name="shopId" value=${dto.shopId }>
		
		<c:if test="${'1' eq dto.del }">
			<input type="submit" value="회원 탈퇴 취소" formaction='myPageCan.do?id=${dto.id }'>
		</c:if>
		<c:if test="${'0' eq dto.del}">			
			<input type='submit' value='수정' formaction='myPageUpdateForm.do?id=${dto.id}'>
			<input type='submit' value='삭제' formaction='myPageDelete.do?id=${dto.id}'>
		</c:if>	
		</td>
	</tr>
</table>
</form>
<a href=".">메인페이지</a>
</body>
</html>