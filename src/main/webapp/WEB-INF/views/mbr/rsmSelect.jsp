<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이력서 목록</title>
<style type="text/css">
th{
	 height:40px;
	background-color: #F2F2F2;
	text-align: center;
	font-size: 12px;
	border-top: 1px solid gray;
}

td{
	height:60px;
	text-align: center;
}
a{
	cursor: pointer;
	color:black;
}
</style>
<script type="text/javascript"></script>
</head>
<body>
<div class=container>
	<h2>이력서 관리</h2>
	<table>
	<tr><th width="600px" colspan="2">이력서 제목</th></tr>
	<c:if test="${!empty rsmsubList }">
	<c:forEach var="rsmcodeList" items="${rsmcodeList }" varStatus="status">
	<tr style="border-bottom: 1px solid gray"><td>${rsmsubList[status.index]}</td><td style="text-align: center;">
	<input type="button" onclick="location.href='supportInsert?resumeCode=${rsmcodeList}&jobPostCode=${jobPostCode }&cName=${cName }&jSubject=${jSubject }'" value="선택">
	</td></tr></c:forEach></c:if>
	<c:if test="${empty rsmsubList }">
	<tr><td colspan="2">등록하신 이력서가 없습니다.</td></tr>
	</c:if>
	</table>
</div>
</body>
</html>