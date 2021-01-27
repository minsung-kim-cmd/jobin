<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function chk() {
		if(frm.mPassword.value != frm.mPassword2.value){
			alert('암호와 암호확인이 달라 수정이 불가능 합니다');
			frm.mPassword.focus(); frm.mPassword.value="";
			return false;
		}
		
	} 
</script>
</head><body>
<div class="container">
<c:import url="../nav.jsp"></c:import>
<form action="${path }/nUpdate" method="post" name="frm"
	onsubmit="return chk()">
	<input type="hidden" name="noticeCode" value="${notice.noticeCode}">
	<input type="hidden" name="pageNum" value="${pageNum}">
	<input type="hidden" name="mPassword" value="${notice.mPassword}">
<table class="table table-bordered table-hover">
 	<caption>게시글 입력</caption>
 	<tr><td>제목</td><td><input type="text" name="nSubject"
 		required="required" autofocus="autofocus" 
 		value="${notice.nSubject }"></td></tr>
 	<tr><td>작성자</td><td><input type="text" name="nWriter"
		required="required" value="${notice.nWriter }"></td></tr>
	<tr><td>암호</td><td><input type="password" name="mPassword"
		required="required"></td></tr>
	<tr><td>내용</td><td><textarea rows="5" cols="40"
		name="nContent" required="required">${notice.nContent}
	</textarea></td></tr>
	<tr><td colspan="2"><input type="submit" class="btn btn-primary" value="수정하기"></td></tr>
</table>
</form>
</div>
</body>
</html>