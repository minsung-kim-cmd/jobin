<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>게시글 상세 보기</title>
<style type="text/css">
	th, td{border:1px solid black;text-align:center !important;}
	caption{font-size:x-large;}
</style>
<!-- <script type="text/javascript">
	$(function() {
		$('#nListDisp').load('nList','pageNum=${pageNum}');
	});
</script> -->
</head><body>
<div class="container">
<c:import url="../nav.jsp"></c:import>
<div class="col-sm-12">
<table class="table table-bordered table-hover">
	<caption>공지</caption>
	<tr><td>제목 </td><td> ${notice.nSubject }</td></tr>
	<tr><td>작성일</td><td>${notice.nRegister }</td></tr>
	<tr><td>작성자 </td><td> ${notice.nWriter }</td></tr>
	<tr><td>내용 </td><td> ${notice.nContent }</td></tr>
	<%-- <tr><td>조회수</td><td>${notice.nReadcount }</td></tr> --%>
	<tr><td colspan="2">
		<a href="nList?pageNum=${pageNum }" class="btn btn-primary">게시글 목록</a></td>
		<tr><c:if test="${mId=='master' }">
		<td><a href="${path }/nUpdateForm?noticeCode=${notice.noticeCode }" 
			class="btn btn-default">수정</a></td>
		<td><a href="${path }/nDeleteForm?noticeCode=${notice.noticeCode }" 
			class="btn btn-info">삭제</a></td>
	</c:if></tr>
</table>
</div>
<!-- <div id="nListDisp"></div> -->
</div>
</body>
</html>