<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상점 추가</title>
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
	<form method="post" id="shop">
		<table border="1">
			<th colspan="5">상점 추가 </th>
			<tr>
				<td>상점 이름  <input type="text" name="shopname"></td>
				<td>상점 전화번호 <input type="text" name="shoptel"></td>
				<td>상점 주소 <input type="text" name="shopadd"></td>
				<td>상점 지역 <select name="local" form="shop">
								<option value="강서구">강서구</option>
								<option value="영등포구">영등포구</option>
							</select>
				</td>
				<td>상점 사업자번호 <input type="text" name="businessnum"></td>
			</tr>
		</table>
		<input type="hidden" name="id" value="${id}" />
		<input type="submit" value="상점 추가" formaction="myShopAdd.do">
	</form>
</body>
</html>