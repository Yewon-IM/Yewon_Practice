<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<td>${dto.regDate }</td>
	</tr>
	<tr>
		<td colspan="6">
			<input type="hidden" name="shopName" value=${dto.shopName }>
			<input type="hidden" name="shopAdd" value=${dto.shopAdd }>
			<input type="hidden" name="local" value=${dto.local }>
			<input type="hidden" name="businessnum" value=${dto.businessnum }>
			<input type="hidden" name="shopId" value=${dto.shopId }>
			
			<a href="myPageUpdateForm.do?id=${dto.id }">수정</a>
			<a href="myPageDelete.do?id=${dto.id }">삭제</a>
			<input type="button" value="수정" onclick="updateForm(${dto.id})">
			<input type="button" value="삭제" onclick="myPageDelete(${dto.id})">
		</td>
	</tr>
</table>
<a href=".">메인페이지</a>
</body>
</html>