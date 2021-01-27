<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의 하기</title>
<style type="text/css">
div.container{
	text-align:center;
}
th{
	 height:40px;
	background-color: #F2F2F2;
	text-align: center !important;
	font-size: 12px;
	border-top: 1px solid gray;
}
table{
	margin-left:auto;
	margin-right:auto;
}
td{
	height:60px;
	text-align: center;
}
p{
	margin-top: 30px;
	margin-bottom:10px;
	font-size: 12px;
}
input[type=button]{
	color:white;
	border : 1px solid gray;
	background-color: #337ab7;
	width: 100px;
	height: 40px;
	text-align: center;
	border-top: 1px solid gray;
}
</style>

</head>
<body>
<div class="container" style="padding-top: 50px;">
		<c:import url="../Mypagenav.jsp"></c:import>
</div>
<!-- qRe_level,qRef -->
<div class="container">
<h2>내 문의 내역</h2>
<p>평일 09시에서 17시 까지 문의하신 내용은 당일 답변해드립니다.<br>
17시 이후에 문의하신 내용은 다음날에 답변, 주말에 문의하신 내용은 그 다음주 월요일에 답변해 드립니다.</p>
<table>
	<tr><th width="100px">날짜</th><th width="450px;">제목</th><th width="150px">답변상태</th></tr>
	<c:if test="${!empty qnaList }">
	<c:forEach items="${qnaList }" var="qna">
	<tr style="border-bottom: 1px solid gray"><td>${qna.qRegister }</td>
	<td><a href="qnaForm?qnaCode=${qna.qnaCode }">${qna.qSubject }</a></td>
	<c:if test="${qna.qRe_step>0 }"><td>답변완료</td></c:if>
	<c:if test="${qna.qRe_step == 0 }"><td>답변예정</td></c:if></tr>
	</c:forEach></c:if>
	<c:if test="${empty qnaList }">
	<tr><td colspan="3">문의하신 글이 없습니다.</td></tr>
	</c:if>
	<tr><td colspan="3">
	<input type="button" class="btn btn-lg btn-primary" onclick="location.href='qnaInsertForm'"value="문의하기"></td></tr>
</table>
</div>
</body>
</html>