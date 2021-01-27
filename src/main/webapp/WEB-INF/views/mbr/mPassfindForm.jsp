<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
<div class="container">
<c:import url="../nav.jsp"></c:import>
<div class="col-sm-4"></div>
 <div class="col-sm-4">
<form action="${path }/mPassfind" method="post">
<table class="table table-bordered table-hover">
<caption><h2>비밀번호 찾기</h2></caption>
	<tr><th><input type="text" name="mId" placeholder="아이디" required="required" autofocus="autofocus" class="form-control"></th></tr>
	<tr><th><input type="text" name="mEmail" placeholder="이메일" required="required" class="form-control"></th></tr>
	<tr><th><input type="submit" class="btn btn-primary"  value="비밀번호 찾기"></th></tr>
</table>
</form>
</div>
<div class="col-sm-4"></div>
</div>
</body>
</html>