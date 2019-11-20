<%@page import="dbpkg.MemberVO" %>
<%@page import="dbpkg.ShopDAO" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쇼핑몰회원관리</title>
<link rel="stylesheet" href="style.css?a=a"type="text="text/css">
<script>
function check(){
	if(frm.custname.value==""){
		alert("회원성명이 입력되지 않았습니다.");
		frm.custname.focus();
		return false;
	}
	if(frm.phone.value==""){
		alert("회원전화가 입력되지 않았습니다.");
		frm.phone.focus();
		return false;
	}
	if(frm.joindate.value==""){
		alert("회원주소가 입력되지 않았습니다.");
		frm.joindate.focus();
		return false;
	}
	if(frm.grade.value=""){
		alert("회원등급이 입력되지 않았습니다.");
		frm.grade.focus();
		return false;
	}else if (!frm)
}

</script>
</head>
<body>

</body>
</html>