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
	<th colspan="6">상점 정보</th>
	<tr>
		<td>상점 이름</td>
		<td>상점 전화번호</td>
		<td>상점 주소</td>
		<td>상점 지역</td>
		<td>상점 사업자번호</td>
	</tr>
	<tr>
		<td><input type="text" name="shopName" value="${sdto.shopName }"></td>
		<td><input type="text" name="shopTel" value="${sdto.shopTel }"></td>
		<td><input type="text" name="shopAdd"  value="${sdto.shopAdd }"></td>
		<td><select name="local">
						<option value="강서구">강서구</option>
						<option value="영등포구">영등포구</option>
			</select>
		</td>
		<td><input type="text" name="businessNum" value="${sdto.businessNum }"></td>
	</tr>
</table>
<input type="hidden" name="id" value="${sdto.id}">
<input type="submit" value="수정하기" formaction="myShopUpdate.do?shopId=${sdto.shopId }">
</form>
</body>
</html>