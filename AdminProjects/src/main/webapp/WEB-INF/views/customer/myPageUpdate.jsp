<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 수정하기</title>
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
		<td><input type="text" name="name" value="${dto.name }"></td>
		<td><input type="password" name="pwd" value="${dto.pwd }"></td>
		<td><input type="text" name="tel"  value="${dto.tel }"></td>
		<td><input type="email" name="email" value="${dto.email }"></td>
		<td>${dto.regDate }</td>
	</tr>
</table>
<input type="hidden" name="power" value=${dto.power }>
<input type="hidden" name="who" value=${dto.who }>
<input type="hidden" name="shopName" value=${dto.shopName }>
<input type="hidden" name="shopAdd" value=${dto.shopAdd }>
<input type="hidden" name="local" value=${dto.local }>
<input type="hidden" name="businessnum" value=${dto.businessNum }>
<input type="hidden" name="shopId" value=${dto.shopId }>

<input type="submit" value="수정하기" formaction="myPageUpdate.do?id=${dto.id }">
</form>
</body>
</html>