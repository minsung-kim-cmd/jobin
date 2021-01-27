<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>기업 회원 가입</title>
<script type="text/javascript">
	function idChk() {
		if (!frm.cId.value) {
			alert("아이디를 입력해 주세요");
			frm.cId.focus();
			return false;
		}
		$.post('${path}/idChk', 'id=' + frm.cId.value, function(data) {
			$('#disp').html(data);
		});
	}
	function chk() {
		if (frm.cPassword.value != frm.cPassword2.value) {
			alert("암호와 암호확인이 다릅니다");
			frm.cPassword.focus();
			frm.cPassword.value = "";
			return false;
		}
	}
</script>
</head>
<body>
<div class="container">
<c:import url="../nav.jsp"></c:import>
 <div class="col-sm-12">
<form action="${path}/join" method="post" name="frm"
	onsubmit="return chk()">
<table class="table table-bordered table-hover">
<caption>기업 회원 가입</caption>
	<tr><td>아이디</td><td><input type="text" name="cId" required="required"
		autofocus="autofocus"> <input type="button" onclick="idChk()" value="중복체크">
		<span id="disp"></span></td></tr>
	<tr><td>대표자명</td><td><input type="text" name="cRepresentative" required="required"></td></tr>
	<tr><td>암호</td><td><input type="password" name="cPassword"required="required"></td></tr>
	<tr><td>암호 확인</td><td><input type="password" name="cPassword2"required="required"></td></tr>
	<tr><td>기업명</td><td><input type="text" name="cName" required="required"></td></tr>
	<tr><td>사업자등록번호</td><td><input type="text" name="cRegistrationNum" required="required"></td></tr>
	<tr><td>기업형태</td><td><input type="text" name="cType" required="required"></td></tr>
<!-- 	<tr><td>기업주소</td><td><input type="text" name="cAddress" required="required"></td></tr> -->
	<tr><th>기업연락처</th><td colspan="2"><input type="tel" name="cTel"
		required="required" pattern="\d{3}-\d{3,4}-\d{4}" placeholder="xxx-xxxx-xxxx" 
		title="전화번호 형식 xxx-xxxx-xxxx"autocomplete="off"></td></tr>
	<tr><th colspan="2"><input type="submit" class="btn btn-primary" value="가입하기"></th></tr>
</table>
</form>
<a href="${path}/cLoginForm" class="btn btn-default">로그인</a>
</div>
</div>
</body>
</html>