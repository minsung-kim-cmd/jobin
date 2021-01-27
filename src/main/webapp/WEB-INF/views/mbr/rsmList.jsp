<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이력서 관리</title>
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
	 height:40px;
	background-color: #F2F2F2;
	text-align: center !important;
	font-size: 12px;
	border-top: 1px solid gray;
}

td{
	height:60px;
}
a{
	cursor: pointer;
	color:black;
}

</style>
<script type="text/javascript"></script>
</head>
<body>
<div class="container" style="padding-top: 50px;">
		<c:import url="../Mypagenav.jsp"></c:import>
</div>
<div class=container>
	<h2>이력서 관리</h2>
	<table>
	<tr><td colspan="2" style="font-size: 12px;">지원하기에 사용된 이력서를 수정/삭제해도 지원된 내용은 수정/삭제되지 않습니다.</td></tr>
	<tr><th width="600px">이력서 제목</th><th width="150px">이력서 관리</th></tr>
	<c:if test="${!empty rsmsubList }">
	<c:forEach var="rsmcodeList" items="${rsmcodeList }" varStatus="status">
	<tr style="border-bottom: 1px solid gray"><td><a onclick="location.href='rsmView?resumeCode=${rsmcodeList}'">
	${rsmsubList[status.index]}</a></td><td style="text-align: center;">
	<input type="button" value="수정" style="margin-right: 10px;"onclick="location.href='rsmUpdateForm?resumeCode=${rsmcodeList}'" class="btn btn-sm btn-warning">
	<input type="button" value="삭제"onclick="location.href='rsmDelete?resumeCode=${rsmcodeList}'" class="btn btn-sm btn-danger"></td></tr></c:forEach></c:if>
	<c:if test="${empty rsmsubList }">
	<tr><td colspan="2">등록하신 이력서가 없습니다.</td></tr>
	</c:if>
	<tr><td colspan="2" style="text-align: center;">
	<input type="button" value="이력서 등록" onclick="location.href='rsmForm'" class="btn btn-md btn-primary"></td></tr>
	</table>
</div>
</body>
</html>