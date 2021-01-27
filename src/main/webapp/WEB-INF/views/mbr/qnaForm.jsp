<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의 내역</title>
<style type="text/css">
div.container{
	text-align:center;
}
	p{
	margin-top: 30px;
	margin-bottom:10px;
	font-size: 12px;
}
	th{
	width:100px;
	 height:40px;
	background-color: #F2F2F2;
	text-align: center;
	font-size: 12px;
}
input{
	margin: 10px;
}
textarea{
	margin: 10px;
}
#cancle{
	border : 1px solid gray;
	background-color: white;
		width: 100px;
	height: 40px;
}

#insert{
	color:white;
	border : 1px solid gray;
	background-color: #045FB4;
	width: 100px;
	height: 40px;
	margin: 10px;
}
tr{
	border-bottom: 1px solid gray;
	border-top: 1px solid gray;
}
table{
	margin-left:auto;
	margin-right:auto;
}
</style>
</head>
<body>
<div class="container" style="padding-top: 50px;">
		<c:import url="../Mypagenav.jsp"></c:import>
</div>
	<div class="container">
		<h2>문의 내역</h2>
		<table>
			<tr><th>제목</th><td>${qna.qSubject }</td></tr>
			<tr><th>내용</th><td><pre><textarea rows="5" cols="53" name="qContent" readonly="readonly">${qna.qContent }</textarea></pre></td></tr>
		</table>
	</div>
</body>
</html>