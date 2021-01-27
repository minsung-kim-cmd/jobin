<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<title>회원 목록</title></head><body>
<div class="container">
<c:import url="../nav.jsp"></c:import>
 <div class="col-sm-12">
<table class="table table-bordered table-hover">
<caption>회원목록</caption>
<c:if test="${empty list}">
	<tr>
		<th colspan="4">회원이 없습니다</th>
	</tr>
</c:if>
	<c:if test="${not empty list}">
	<tr>
		<th>회원코드</th>
		<th>아이디</th>
		<th>이름</th>
		<th>탈퇴여부</th>
	</tr>
		<c:forEach var="companymem" items="${list }">
			<tr>
				<td>${companymem.companyCode}</td>
				<td><a href="${path }/cView?companyCode=${companymem.companyCode}&pageNum=${pageNum}">${companymem.cId}</a></td>
				<td><a href="${path }/cView?companyCode=${companymem.companyCode}&pageNum=${pageNum}">${companymem.cName}</a></td>
				<td>${companymem.cDel}</td>
			</tr>
		</c:forEach>
	</c:if>
</table>
</div>
</div>
</body>
</html>