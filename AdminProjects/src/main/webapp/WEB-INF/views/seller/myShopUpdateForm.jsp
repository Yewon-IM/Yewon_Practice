<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
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
						<option ${sdto.local == "강남구"? "selected" : "" }>강남구</option>
						<option ${sdto.local == "강동구"? "selected" : "" }>강동구</option>
						<option ${sdto.local == "강북구"? "selected" : "" }>강북구</option>
						<option ${sdto.local == "강서구"? "selected" : "" }>강서구</option>	
						<option ${sdto.local == "관악구"? "selected" : "" }>관악구</option>
						<option ${sdto.local == "광진구"? "selected" : "" }>광진구</option>
						<option ${sdto.local == "구로구"? "selected" : "" }>구로구</option>
						<option ${sdto.local == "금천구"? "selected" : "" }>금천구</option>
						<option ${sdto.local == "노원구"? "selected" : "" }>노원구</option>
						<option ${sdto.local == "도봉구"? "selected" : "" }>도봉구</option>
						<option ${sdto.local == "동대문구"? "selected" : "" }>동대문구</option>
						<option ${sdto.local == "동작구"? "selected" : "" }>동작구</option>											
						<option ${sdto.local == "마포구"? "selected" : "" }>마포구</option>
						<option ${sdto.local == "서대문구"? "selected" : "" }>서대문구</option>
						<option ${sdto.local == "서초구"? "selected" : "" }>서초구</option>
						<option ${sdto.local == "성동구"? "selected" : "" }>성동구</option>	
						<option ${sdto.local == "성북구"? "selected" : "" }>성북구</option>
						<option ${sdto.local == "송파구"? "selected" : "" }>송파구</option>
						<option ${sdto.local == "양천구"? "selected" : "" }>양천구</option>
						<option ${sdto.local == "영등포구"? "selected" : "" }>영등포구</option>
						<option ${sdto.local == "용산구"? "selected" : "" }>용산구</option>
						<option ${sdto.local == "은평구"? "selected" : "" }>은평구</option>
						<option ${sdto.local == "종로구"? "selected" : "" }>종로구</option>
						<option ${sdto.local == "중구"? "selected" : "" }>중구</option>	
						<option ${sdto.local == "중랑구"? "selected" : "" }>중랑구</option>
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