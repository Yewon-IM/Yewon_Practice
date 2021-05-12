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
				<td>상점 이름  <input type="text" name="shopName"></td>
				<td>상점 전화번호 <input type="text" name="shopTel"></td>
				<td>상점 주소 <input type="text" name="shopAdd"></td>
				<td>지역<select name="local">
						<option value="강남구">강남구</option>
						<option value="강동구">강동구</option>
						<option value="강북구">강북구</option>
						<option value="강서구">강서구</option>	
						<option value="관악구">관악구</option>
						<option value="광진구">광진구</option>
						<option value="구로구">구로구</option>
						<option value="금천구">금천구</option>
						<option value="노원구">노원구</option>
						<option value="도봉구">도봉구</option>
						<option value="동대문구">동대문구</option>
						<option value="동작구">동작구</option>											
						<option value="마포구">마포구</option>
						<option value="서대문구">서대문구</option>
						<option value="서초구">서초구</option>
						<option value="성동구">성동구</option>	
						<option value="성북구">성북구</option>
						<option value="송파구">송파구</option>
						<option value="양천구">양천구</option>
						<option value="영등포구">영등포구</option>
						<option value="용산구">용산구</option>
						<option value="은평구">은평구</option>
						<option value="종로구">종로구</option>
						<option value="중구">중구</option>	
						<option value="중랑구">중랑구</option>
					</select>
				</td>
				<td>상점 사업자번호 <input type="text" name="businessNum"></td>
			</tr>
		</table>
		<input type="hidden" name="id" value="${id}" />
		<input type="submit" value="상점 추가" formaction="myShopAdd.do">
	</form>
</body>
</html>