<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의 작성</title>
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
input[type=text]{
	height: 30px;
	border: 1px solid #D8D8D8;
}
textarea{
	margin: 10px;
/* 	border: 1px solid #D8D8D8; */
	border:0px;
}
#cancle{
	border : 1px solid gray;
	background-color: white;
		width: 100px;
	height: 40px;
	border-radius:3px; 
	margin: 10px;
}

#insert{
	color:white;
	border : 1px solid gray;
	background-color: #337ab7;
	width: 100px;
	height: 40px;
	border-radius:3px; 
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
		<h2>문의 작성</h2>
		<p>평일 09시에서 17시 까지 문의하신 내용은 당일 답변해드립니다.<br> 
		17시 이후에 문의하신 내용은 다음날에 답변, 주말에 문의하신 내용은 그 다음주 월요일에 답변해 드립니다.	</p>
		<form action="qnaInsert"><table>
			<tr><th>제목</th><td><input size="50"  type="text" name="qSubject"></td></tr>
			<tr><th>작성자</th><td><input size="50"  type="text" name="qWriter"></td></tr>
			<tr><th>내용</th><td><pre><textarea rows="12" cols="52" name="qContent"></textarea></pre></td></tr>
			<tr style="border-bottom:0; text-align: center; margin-top: 10px;"><td colspan="2">
			<input type="button" id="cancle" onclick="location.href='Mypage'" value="취소하기">
			<input type="submit" id="insert" value="문의하기"></td></tr>
		</table></form>
	</div>
</body>
</html>