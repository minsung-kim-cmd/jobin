<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입사 지원 관리</title>
<style type="text/css">
div.container{
	text-align:center;
}
th {
	border-top : 1px solid gray;
	background-color: #F2F2F2;
	text-align: center !important;
	font-size: 12px;
	height: 30px;
}
table{
	width: 750px;
	font-size: 15px;
	margin-left:auto;
	margin-right:auto;
}
td{
	padding-top: 10px;
	text-align: center;
	border-bottom: 1px solid gray;
}
input[type=button]{
	border-radius: 3px;
	padding:4px 10px;
}
</style>
<script type="text/javascript"></script>
</head>
<body>
<div class="container" style="padding-top: 50px;">
		<c:import url="../Mypagenav.jsp"></c:import>
</div>
<div class="container">
	<h2>입사지원 관리</h2>
	<table>
	<tr><th width="130px">지원일 ▼</th><th colspan="2">지원내역</th><th>이력서 열람</th><th>취소</th></tr>
	<c:if test="${!empty supList }">
	<c:forEach var="supList" items="${supList }">
	<tr height="30px"><td>${supList.applydate }</td>
	<td style="text-align: left;">${supList.companyname }</td><td>${supList.subject }</td>
	<td>${supList.open }</td >
	<td><input type="button" onclick="location.href='supportDelete?sNum=${supList.sNum}&jobPostCode=${supList.jobPostCode }'" value="지원취소" class="btn btn-sm btn-warning"></td></tr></c:forEach></c:if>
	<c:if test="${empty supList }">
	<tr><td colspan="5">지원한 이력이 없습니다.</td></tr>
	</c:if>
	</table>
</div>
</body>
</html>