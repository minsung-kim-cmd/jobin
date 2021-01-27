<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function chk() {
		if(frm.mPassword.value!=frm.mPassword2.value){
			alert("암호가 다릅니다");
			frm.mPassword.focus();
			frm.mPassword.value="";
			return false;
		}
	}
</script>
</head><body>
<div class="container">
<c:import url="../nav.jsp"></c:import>
<form action="${path }/qDelete" name="frm" onsubmit="return chk()">
	<input type="hidden" name="qnaCode" value="${qna.qnaCode }">
	<input type="hidden" name="mPassword" value="${qna.mPassword }">
	<input type="hidden" name="pageNum" value="${pageNum }">
<table class="table table-bordered table-hover">
	<tr><th>암호</th><td><input type="password" name="mPassword"
		required="required" autofocus="autofocus"></td></tr>
	<tr><th colspan="2"><input type="submit"></th></tr>
</table>
</form>
</div>
</body>
</html>