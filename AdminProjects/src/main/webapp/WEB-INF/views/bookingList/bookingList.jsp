<%@page import="com.yogi.hoxy.dtos.BookDto"%>
<%@page import="java.util.List"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	// core, BOM, DOM  3가지 영역으로 나눔
 	function allSel(val){
 		//val --> input객체--> Element객체 안에 구현 여러 속성들이 있음 그중에 tagName을 사용해봄
//  		alert(val.tagName);
//  		alert(val);
		// getElementById(), getElementsByTagName(), ...className ....등 
 		var chks=document.getElementsByName("seq");//[chk,chk,chk...]
 		for(var i=0;i<chks.length;i++){
 			chks[i].checked=val;
 		}
//  		val.parentNode.style.backgroundColor="red";
 	}
	
	$(function(){  // window.onload=function(){ }  //page가 로딩되는 작업을 이벤트로 인식
		//form태그에서 submit이벤트가 발생하면 함수실행
		$("form").submit(function(){
			var bool=true;
			var count=$(this).find("input[name=seq]:checked").length;
			if(count==0){
				alert("최소하나이상 체크하세요!!!");
				bool=false;
			}else if(confirm("정말 삭제할 건가요??")){
				bool=true;
			}else{
				bool=false;
			}
			return bool;
		});		
	
	
		//체크박스 처리: 전체선택 체크박스 체크/해제를 자동으로 하는 기능
		var chks=document.getElementsByName("seq");//[chk,chk,chk,....]
		for(var i =0;i<chks.length;i++){
			chks[i].onclick=function(){ //체크박스에서 클릭이벤트가 발생하면 함수를 실행해라
				var checkedObjs=document.querySelectorAll("input[name=seq]:checked");
				if(checkedObjs.length==chks.length){
					document.getElementsByName("all")[0].checked=true;//체크해줌
				}else{
					document.getElementsByName("all")[0].checked=false;//체크해줌
				}
			}
		}
	})
</script>
</head>
<% List<BookDto> bList = (List<BookDto>) request.getAttribute("bList"); %>
<body>
<form>
<table border="1">
	<col width="50px">
	<col width="50px">
	<col width="250px">
	<col width="150px">
	<col width="150px">
	<col width="50px">
	<col width="200px">
	<tr>
		<th><input type="checkbox" name="all" onclick="allSel(this.checked)" /></th>
		<th>번호</th>
		<th>주소</th>
		<th>상품이름</th>
		<th>카테고리</th>
		<th>재고</th>
		<th>날짜</th>
	</tr>
	<%
		if(bList==null||bList.size()==0){
			out.print("<tr><td colspan='5'>---작성된 일정이 없습니다.---</td></tr>");
		}else{
			for(BookDto dto: bList){
				%>
				<tr>
					<td><input type="checkbox" name="seq" value="<%=dto.getSeq()%>"/></td>
					<td><%=dto.getSeq()%></td>
					<td><a href="<%=dto.getUrl()%>"><%=dto.getUrl()%></a></td>
					<td></td>
					<td><%=dto.getCategory() %></td>
					<td><%=dto.getStock()%> </td>					
					<td><fmt:formatDate pattern="yyyy-MM-dd" value="<%=dto.getRegDate()%>"/> </td>
				</tr>
				<%
			}
		}
	%>
	<tr>
		<td colspan="7">
			<input type="submit" value="삭제"/>
		</td>
	</tr>
</table>
</form>
</body>
</html>