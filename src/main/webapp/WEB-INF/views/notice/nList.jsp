<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>공지 목록</title>
<style type="text/css">
	th, td{border:1px solid black;text-align:center !important;}
	caption{font-size:x-large;}
	table{margin-left:auto;margin-right:auto; width:800px;font-size:18px;}
</style>
</head><body>
<div class="container">
<c:import url="../nav.jsp"></c:import>
 <div class="container col-sm-12">
<table class="table table-bordered table-hover">
	<caption><center>게시글 목록</center></caption>
	<tr><th width="15%">글번호</th><th width="25%">제목</th><th width="15%">작성자</th><th width="15%">조회수</th><th width="30%">작성일</th></tr>
	<c:if test="${empty list }">
		<tr><th colspan="5" style="text-align: center">게시글이 없습니다</th>
	</c:if>
	<c:if test="${not empty list }">
		<c:forEach var="nt" items="${list }">
			<tr><td>${nt.noticeCode}</td>
			<c:if test="${nt.nDel == 'y' }">
				<td colspan="4">삭제된 글입니다</td>   
			</c:if>
			<c:if test="${nt.nDel != 'y' }">
				<td title="${nt.nSubject }">
				<a href="${path }/nView?noticeCode=${nt.noticeCode}&pageNum=${pb.currentPage}">
						${nt.nSubject }</a></td>
					<td>${nt.nWriter }</td>
					<td>${nt.nReadcount }</td>
					<td>${nt.nRegister }</td>
			</c:if>
		</c:forEach>
	</c:if>
</table>
<c:if test="${mId=='master' }">
<div style="text-align:center;padding-top:6px;">
<a href="${path }/nInsertForm" class="btn btn-primary" >공지 작성</a>
</div>
</c:if>
</div>
</div>
</body>
</html>