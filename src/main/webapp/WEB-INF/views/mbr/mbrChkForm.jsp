<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인정보 수정</title>
<style type="text/css">
div.container{
	text-align:center;
}
table{
	margin-left:auto;
	margin-right:auto;
	text-align:center;
}
th{
	background-color: #F2F2F2;
	height: 50px;
	width: 150px;
	font-weight: normal;
	padding: 10px;
	text-align:center !important;
}
tr{
	border-top: 1px solid #D8D8D8;
}
td{
	padding: 15px;
	width: 300px;
}
input[type=password]{
	border: 1px solid #D8D8D8;
	width: 280;
	height: 40px;
}
input[type=submit]{
	width: 150px;
}
</style>
</head>
<body>
<div class="container" style="padding-top: 50px;">
		<c:import url="../Mypagenav.jsp"></c:import>
</div>
<div class="container">
	<h2>개인정보 수정</h2>
	<h4>비밀번호를 입력해주세요</h4>
	<form action="mbrChk">
	<table>
		<tr><th>비밀번호</th><td><input type="password" name="mPassword" class="form-control"></td></tr>
		<tr><td colspan="2" style="padding-top:15px;"><input type="submit" value="확인" class="btn btn-lg btn-primary"></td></tr>
	</table></form>
</div>
</body>
</html>