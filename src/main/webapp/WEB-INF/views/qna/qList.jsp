<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	th, td{border:1px solid black;text-align:center !important;}
	caption{font-size:x-large;}
	table{margin-left:auto;margin-right:auto; width:800px;font-size:18px;}
</style>
</head><body>
<div class="container">
<c:import url="../nav.jsp"></c:import>
 <div class="col-sm-12">
<c:set var="qnaCode" value="${no }"></c:set>
<table class="table table-bordered table-hover">
	<caption>문의하기</caption>
	<tr><th>번호</th><th>제목</th><th>작성자</th><th>조회수</th>
		<th>작성일</th></tr>
<c:if test="${empty list }">
	<tr><th colspan="5">게시글이 없습니다</th></tr>
</c:if>
<c:if test="${not empty list }">
<c:forEach var="qna" items="${list }">
	<tr><td>${qnaCode }
		<c:set var="qnaCode" value="${qnaCode-1 }"></c:set></td>
		<c:if test="${qna.qDel=='y' }">
			<td colspan="4">삭제된 글입니다</td>
		</c:if>
			<c:if test="${qna.qDel != 'y' }">
			<td title="${qna.qSubject }">
			<!-- 답변글 -->
			<c:if test="${qna.qRe_level > 0}">
				<img src="${path}/images/level.gif" height="5" 
					width="${qna.qRe_level * 10}"> <!-- 들여쓰기 -->
				<img src="${path}/images/re.gif">			
			</c:if>
			<c:if test="${qna.qReadcount > 30 }">
				<img alt="" src="${path}/images/hot.gif">
			</c:if>
				<a href="${path }/qView?qnaCode=${qna.qnaCode}&pageNum=${pb.currentPage}">
					${qna.qSubject }</a></td>
					<td>${qna.qWriter }</td>
					<td>${qna.qReadcount }</td>
					<td>${qna.qRegister }</td>
			</c:if>
</c:forEach></c:if></table>
<c:if test="${not empty mId }">
<a href="${path }/qInsertForm" class="btn btn-primary">문의하기</a>
</c:if>
</div>
</div>
</body>
</html>