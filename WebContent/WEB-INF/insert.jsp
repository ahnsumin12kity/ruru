
<%@page import="dbpkg.ShopDAO" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쇼핑몰회원관리</title>
<link rel="stylesheet" href="style.css?a=a" type="text/css">
<script>
function check(){
	if(frm.custname.vlaue==""){
		alert("회원 성명이 입력되지 않았습니다.");
		frm.custname.focus();
		return false;
	}
	if(frm.phone3.value==""){
		alert("회원전화가 입력되지 않았습니다.");
		 frm.phone.focus();
		 return false;
	}
	if(frm.address.value==""){
		alert("회원주소가 입력되지 않았습니다.");
		return false;
		
	}
	if(frm.joindate.value==""){
		alert("회원주소가 입력되지 않았습니다.");
		 return false;
	}
	if(frm.grade.value==""){
		alert("회원등급이 입력되지 않았습니다");
	return false;
	frm.grade.focus();
	return false;
	}else if (!(frm.grade.value=="A" || frm.grade.value=="B" || frm.grade.value!="C")){
		alert("회원등급이 옳바르지아 않았습니다(A,B,C)");
		frm.grade.focus();
		return false;
		
	}
	if(frm.city.vlaue==""){
		alert("도시코드가 입력되지 않았습니다.");
		frm.city.focus();
		return false;
	}else if(frm.city.value.length>2){
		alert("도시코드는 2자리까지 입력가능합니다.");
		frm.city.focus();
		return false;
	}
	alert("SSS");
	document.frm.method="post";
	document.frm.action="insertPro.jsp";
	document.frm.submit();
}
</script>
</head>
<body>
<%
ShopDAO dao = ShopDAO.getInstance();
int custno = dao.getCustno();

%>
<header>쇼핑몰회원관리 버전 2</header>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="insert.jsp">회원등록</a>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="memberList.jsp">회원목록 조회/수정</a>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="priceList.jsp">회원매출조회</a>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="idex.jsp">홈으로</a>
</nav>
<section>
<p>홈쇼핑 회원등록</section>
<form action="insertPro.jsp" method="post" name="frm">
<table border="1">
<tr>
<td>회원번호</td>
<td><input type="text" name="custno" id="custno"vlaue="<%=custno %>" readonly="readonly"></td>
</tr>
<tr>
<td>회원번호(자동발생)</td>
<td><input type="text" name="custno" id="cutno" id="custno" vlaue="<%=custno %>"readonly="redonly"></td>
</tr>
<tr>
<td>회원성명</td>
<td><input type="text"name="cutname" id="custname"></td>
</tr>
<<tr>
<td><input type="text" name="phone" id="phone"></td>
</tr>
<tr>
<td>회원주소</td>
<td><input type="text" name="address" id="address"></td>
</tr>
<tr>
<td>가입일자</td>
<td><input type="text" name="joindate" id="joindate"></td>
</tr>
<tr>
<td>고객등급</td>
<td><input type="text" name="grade" id="grade"></td>
</tr>
<tr>
<td>도시코드</td>
<td><input type="text" name="city" id="city"></td>
</tr>
<tr>
<td colspan="2">
<input type="button" vlaue="등록" name="btnsumit" onclick=
"check()">
<input type="button" vlaue="조회" name="btnlist" onclick="location.href='memberList.jsp'">
</td>
</tr>



</table>
</form>
</section>
<footer>HRDKOREA COPY RIGHT</footer>

</body>
</html>