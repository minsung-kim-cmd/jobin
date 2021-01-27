<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인 정보 수정</title>
<style type="text/css">
th{
	background-color: #F2F2F2;
	height: 50px;
	width: 150px;
	font-weight: normal;
	padding: 10px;
}
tr{
	border-top: 1px solid #D8D8D8;
}
td{
	padding: 15px;
	width: 300px;
}
input[type=text],input[type=tel],input[type=email]{
	border: 1px solid #D8D8D8;
	width: 280;
	height: 40px;
}
input[type=submit]{
	height: 40px;
	width: 150;
	background-color: white;
}
</style>
</head>
<body>
<div class="container" style="padding-top: 50px;">
		<c:import url="../Mypagenav.jsp"></c:import>
</div>
<!--mPassword,mName,mGender, mBirth,mEmail, mTel,mAddress-->
<div class=container>
	<h2>개인정보 수정</h2>
	<form action="mbrUpdate">
	<table id="mbrtb">
		<tr><th>이름</th><td>${mbr.mName }</td></tr>
		<tr><th>생년월일/성별</th><td>${mbr.mBirth}&nbsp;&nbsp;/
		<c:if test="${mbr.mGender eq 'm' }">남성</c:if>
		<c:if test="${mbr.mGender eq 'f' }">여성</c:if></td></tr>
		<tr><th>휴대폰</th><td><input type="tel" name="mTel" value="${mbr.mTel }"></td></tr>
		<tr><th>이메일</th><td><input type="email" name="mEmail" value="${mbr.mEmail }"></td></tr>
		<tr><th>주소</th><td>${mbr.mAddress }</td></tr>	
		<tr><td colspan="2" style="text-align: center;">
		<input type="submit" value="수정완료" ></td></tr>	
	</table></form>
</div>
</body>
</html>