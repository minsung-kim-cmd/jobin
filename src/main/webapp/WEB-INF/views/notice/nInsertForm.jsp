<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>공지 작성</title></head><body>
<div class="container">
<c:import url="../nav.jsp"></c:import>
<form action="${path }/nInsert" method="post" name="frm">
<table class="table table-bordered table-hover">
	<caption>공지 입력</caption>
	<tr><td>제목</td><td><input type="text" name="nSubject"
		required="required" autofocus="autofocus"></td></tr>
	<tr><td>작성자</td><td><input type="text" name="nWriter"
		required="required"></td></tr>
	<tr><td>내용</td><td><textarea rows="5" cols="40"
		name="nContent" required="required"></textarea></td></tr>
	<tr><td colspan="2"><input type="submit" value="등록" class="btn btn-primary"></td></tr>
</table>
</form>
</div>
</body>
</html>