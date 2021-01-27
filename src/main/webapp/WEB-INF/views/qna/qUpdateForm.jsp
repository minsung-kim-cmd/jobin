<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>수정</title>
<script type="text/javascript">
	function chk() {
		if (frm.mPassword.value != frm.mPassword2.value){
			alert('암호와 암호확인이 달라 수정이 불가능 합니다');
			frm.mPassword.focus(); frm.mPassword.value="";
			return false;
		}
	}
</script>
</head><body>
<div class="container">
<c:import url="../nav.jsp"></c:import>
<form action="${path }/qUpdate" method="post" name="frm"
	onsubmit="return chk()">
	<input type="hidden" name="qnaCode" value="${qna.qnaCode }">
	<input type="hidden" name="pageNum" value="${pageNum }">
	<input type="hidden" name="mPassword2" value="${qna.mPassword }">
<table class="table table-bordered table-hover">
	<caption>수정하기</caption>
	<tr><td>제목</td><td><input type="text" name="qSubject"
		required="required" autofocus="autofocus"
		value="${qna.qSubject }"></td></tr>
	<tr><td>작성자</td><td><input type="text" name="qWriter"
		required="required" value="${qna.qWriter }"></td></tr>
	<tr><td>암호</td><td><input type="text" name="mPassword"
		required="required"></td></tr>
	<tr><td>내용</td><td><textarea rows="5" cols="40"
		name="qContent" required="required">${qna.qContent }
	</textarea></td></tr>
	<tr><td colspan="2"><input type="submit" class="btn btn-primary" value="수정하기"></td></tr>
</table>
</form>
</div>
</body>
</html>