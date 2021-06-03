<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List" %>
<%@page import="com.mac.test.dtos.HelloDto" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<% List<HelloDto> list = (List<HelloDto>) request.getAttribute("list"); %>
</head>
<body>
<table>
	<tr>
		<td>아이디</td>
		<td>이름</td>
	</tr>
	<tr>
	<%if(list.size() == 0 || list == null){
		out.println("리스트가 비어있습니다.");
	} else {
		for(HelloDto dto : list){
		%> <td><%=dto.getId() %></td>
		<td><%=dto.getName() %></td>	
		<%	
		}
	}%>
	</tr>	
</table>
</body>
</html>