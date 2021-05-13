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
	<th colspan="11">상점 정보</th>
	<tr>
		<td width="40px">아이디</td>
		<td width="40px">상점 이름</td>
		<td width="40px">상점 우편번호</td>
		<td width="40px">상점 전화번호</td>
		<td width="40px">상점 주소</td>
		<td width="40px">상점 상세주소</td>
		<td width="40px">상점 지역</td>
		<td width="40px">상점 사업자번호</td>
		<td width="40px">상점 고유번호</td>
		<td width="30px">권한</td>
		<td width="30px">상태</td>
	</tr>
	<tr>
		<td><input type="text" name="id" value="${sdto.id }" readonly></td>
		<td><input type="text" name="shopName" value="${sdto.shopName }"></td>
		<td><input type="text" name="shopTel" value="${sdto.shopTel }"></td>
		<td><input type="text" name="shopOdd" value="${sdto.shopOdd}"></td>
		<td><input type="text" name="shopAdd"  value="${sdto.shopAdd }"></td>
		<td><input type="text" name="shopDetailAdd"  value="${sdto.shopDetailAdd }"></td>
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
		<td><input type="text" value="${sdto.shopId }" readonly></td>
		<td><select name="power">
				<option value= 1 ${sdto.power == 1 ? "selected" : ""}>승인</option>
				<option value= 0 ${sdto.power == 0 ? "selected" : ""}>미승인</option>
			</select>
		</td>
		<td><select name="del">
				<option value= 0 ${sdto.del == 0 ? "selected" : ""}>정상</option>
				<option value= 1 ${sdto.del == 1 ? "selected" : ""}>삭제요청</option>
			</select>
		</td>
	</tr>
</table>
<input type="submit" value="수정하기" formaction="shopUpdate.do?shopId=${sdto.shopId }">
</form>
</body>
</html>