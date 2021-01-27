<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>회원 정보</title></head><body>
<div class="container">
<c:import url="../nav.jsp"></c:import>
 <div class="col-sm-12">
<table class="table table-bordered table-hover">
<caption>${mbr.mId}님의 회원정보</caption>
	<tr><th>이름</th><td>${mbr.mName }</td></tr>
	<tr><th>전화</th><td>${mbr.mTel }</td></tr>
	<tr><th>이메일</th><td>${mbr.mEmail}</td></tr>
	<td colspan="2"><a href="${path }/mList?memberCode=${mbr.memberCode}&
					pageNum=${pageNum}" class="btn btn-primary" >회원 목록 보기</a></td>
</table>
</div>
</div>
</body>
</html>