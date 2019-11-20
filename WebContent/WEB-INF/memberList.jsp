<%@page import="dbpkg.MemberVO" %>
<%@page import="java.util.ArrayList" %>
<%@page import = "dbpkg.ShopDAO" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쇼핑몰회원관리</title>
<link rel="stylesheet" href="style.css?a=a" type="text/css">

</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
ShopDAO mem_dao = ShopDAO.getInstance();
ArrayList<MemberVO> mList = mem_dao.memList();


%>
<header>쇼핑몰 회원관리 ver1.0</header>
<nav>
<ul>
<li><a href="isnert.jsp">회원등록</a></li>
<li><a href="memberList.jsp">회원목록조회/수정</a></li>
<li><a href="priceList.jsp"></a></li>
<li><a href="index.jsp">홈으로</a></li>


</ul></nav>
<section>
<p>회원목록조회/수정
<table border="1">
<tr>
<td>회원번호</td>
<td>회원성명</td>
<td>전화번호</td>
<td>주소</td>
<td>가입일자</td>
<td>고객등급</td>
<td>거주지역</td>
</tr>
<%
 for(MemberVO e:mList) {
%>
<td><a href="update.jsp?custno=<%=e.get.Custno() %>"><% %></a></td>
	<td><%=e.getCustname() %></td>
	<td><%=e.getPhone() %></td>
	<td><%=e.getAddress() %></td>
	<td><%=e.getJoindate() %></td>
	<td><%=e.getGrade() %></td>
	<td><%=e.getCity() %></td>
	</tr>	
</table>

</section>
<footer>HRDKREA COPYRIGTH&COPY:2015 ALL RIGTH RESERC


</footer>



</body>
</html>