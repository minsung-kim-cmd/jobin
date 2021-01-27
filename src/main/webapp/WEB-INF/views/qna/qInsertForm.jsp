<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function chk() {
		if (frm.mPassword.value != frm.mPassword2.value){
			alert('암호와 암호확인이 다릅니다');
			frm.mPassword.focus(); frm.mPassword.value="";
			return false;
		}
	}
</script>
</head><body>
<div class="container">
<c:import url="../nav.jsp"></c:import>
 <div class="col-sm-12">
<form action="${path }/qInsert" method="post" name="frm"
	onsubmit="return chk()">
	<input type="hidden" name="qRef" value="${qRef}">
	<input type="hidden" name="qRe_level" value="${qRe_level}">
	<input type="hidden" name="qRe_step" value="${qRe_step}">
	<input type="hidden" name="qnaCode" value="${qnaCode}">
	<input type="hidden" name="pageNum" value="${pageNum}">
<table class="table table-bordered table-hover">
	<caption>문의 사항</caption>
<c:if test="${qnaCode==0}">
	<tr><td>제목</td><td><input type="text" name="qSubject"
		required="required" autofocus="autofocus" value="문의 합니다"></td></tr>
</c:if>
<c:if test="${qnaCode != 0}">
	<tr><td>제목</td><td><input type="text" name="qSubject"
		required="required" autofocus="autofocus" value="=>답변"></td></tr>
</c:if>
<%-- <c:if test="${qnaCode != 0}">
	<tr><td>작성자</td><td><input type="text" name="qWriter"
		required="required" autofocus="autofocus" value="관리자"></td></tr>
</c:if> --%>
	<tr><td>작성자</td><td><input type="text" name="qWriter"
		required="required"></td></tr>
	<tr><td>암호</td><td><input type="password" name="mPassword"
		required="required"></td></tr>
	<tr><td>암호 확인</td><td><input type="password" name="mPassword2"
		required="required"></td></tr>
	<tr><td>내용</td><td><textarea rows="5" cols="40"
		name="qContent" required="required"></textarea></td></tr>
	<tr><td colspan="2"><input type="submit" class="btn btn-primary" value="문의하기"></td></tr>
</table>
</form>
</div>
</div>
</body>
</html>