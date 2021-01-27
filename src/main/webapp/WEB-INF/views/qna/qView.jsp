<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>문의하기</title>
<style type="text/css">
	th, td{border:1px solid black;text-align:center !important;}
	caption{font-size:x-large;}
	table{margin-left:auto;margin-right:auto; width:800px;font-size:18px;}
</style>
<!-- <script type="text/javascript">
	$(function() {
		$('#qListDisp').load('qList','pageNum=${pageNum}');
	});
</script> -->
</head><body>
<div class="container">
<c:import url="../nav.jsp"></c:import>
<div class="col-sm-12">
<table class="table table-bordered table-hover">
	<caption>문의</caption>
	<tr><td>제목</td><td>${qna.qSubject }</td></tr>
	<tr><td>작성일</td><td>${qna.qRegister }</td></tr>
	<tr><td>작성자</td><td>${qna.qWriter }</td></tr>
	<tr><td>내용</td><td>${qna.qContent }</td></tr>
	<tr><td colspan="2">
		<a href="qList?pageNum=${pageNum }" class="btn btn-warning">게시글 목록</a></td></tr>
	<tr><td><a href="${path }/qUpdateForm?qnaCode=${qna.qnaCode }&
			pageNum=${pageNum }" class="btn btn-info">수정</a></td>
		<td><a href="${path }/qDeleteForm?qnaCode=${qna.qnaCode }&
			pageNum=${pageNum }" class="btn btn-primary">삭제</a></td></tr>
		<tr><c:if test="${mId == 'master' }">
		<td colspan="2"><a href="${path }/qInsertForm?qnaCode1=${qna.qnaCode }&
			pageNum=${pageNum }" class="btn btn-default">답변달기</a></td>
		</c:if></tr>
</table>
<!-- <div id="qListDisp"></div> -->
</div>
</div>
</body>
</html>