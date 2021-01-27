<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관심 기업</title>
<style type="text/css">
th{
	border-top:1px solid gray;
	text-align: center !important;
	background-color: #F2F2F2;
	font-size: 12px;
	height: 30px;
}

td{
	height: 40px;
	text-align: center;
	border-bottom: 1px solid gray;
}
table{
	padding: 5px;
		margin-left:auto;
	margin-right:auto;
	text-align:center;
}
div.container{
	text-align:center;
}
</style>
<script type="text/javascript"></script>
</head>
<body>
<div class="container" style="padding-top: 50px;">
		<c:import url="../Mypagenav.jsp"></c:import>
</div>
<div class="container">
	<h2>관심기업</h2>
	<table>
		<tr><th width="500px">회사명</th><th width="150px">진행중 공고</th><th width="150px">삭제</th></tr>
		<c:if test="${!empty atcname}">
		<c:forEach var="atcname" items="${atcname }" varStatus="status">
			<tr><td>${atcname }</td><td style="font-size: 12px;">채용중 ${atjobcnt[status.index]}개</td><td>
		<input type="button" value="삭제" class="btn btn-sm btn-danger" onclick="location.href='attentionDelete?companyCode=${atcmpcode[status.index]}'"></td></tr>
		</c:forEach></c:if>
		<c:if test="${empty atcname}">
		<tr><td colspan="2">관심기업이 없습니다</td></tr></c:if>
	</table>
</div>
</body>
</html>