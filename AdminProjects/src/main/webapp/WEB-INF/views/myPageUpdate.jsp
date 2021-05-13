<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>  
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
		<td>지역</td>
		<td>우편번호</td>
		<td>주소</td>
		<td>상세주소</td>
		<td>가입일</td>
	</tr>
	<tr>
		<td>${dto.id }</td>
		<td><input type="text" name="name" value="${dto.name }"></td>
		<td><input type="password" name="pwd" value="${dto.pwd }"></td>
		<td><input type="text" name="tel"  value="${dto.tel }"></td>
		<td><input type="email" name="email" value="${dto.email }"></td>
		<td><input type="text" name="local" value="${dto.local }"></td>
		<td><input type="text" name="oAdd" value="${dto.oAdd }"></td>
		<td><input type="text" name="add" value="${dto.add }"></td>
		<td><input type="text" name="detailAdd" value="${dto.detailAdd }"></td>
		<td><fmt:formatDate pattern="yyyy-MM-dd" value="${dto.regDate }" /></td>
	</tr>
</table>
<input type="hidden" name="power" value=${dto.power }>
<input type="hidden" name="who" value=${dto.who }>
<input type="hidden" name="del" value=${dto.del }>

<input type="submit" value="수정하기" formaction="myPageUpdate.do?id=${dto.id }">
</form>
</body>
</html>