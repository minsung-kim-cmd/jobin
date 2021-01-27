<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>회원 정보</title></head><body>
<div class="container">
<c:import url="../nav.jsp"></c:import>
 <div class="col-sm-12">
<table class="table table-bordered table-hover">
<caption>${companymem.cId}님의 회원정보</caption>
	<tr><th>대표자명</th><td>${companymem.cRepresentative }</td></tr>
	<tr><th>기업연락처</th><td>${companymem.cTel }</td></tr>
	<tr><th>이메일</th><td>${companymem.cEmail}</td></tr>
	<tr><th>기업명</th><td>${companymem.cName}</td></tr>
	<tr><th>사업자등록번호</th><td>${companymem.cRegistrationNum}</td></tr>
	<td colspan="2"><a href="${path }/cList?companyCode=${companymem.companyCode}&
					pageNum=${pageNum}" class="btn btn-primary">회원 목록 보기</a></td>
</table>
</div>
</div>
</body>
</html>