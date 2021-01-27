<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>회원가입</title>
<!-- <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script> -->
<script type="text/javascript">
/* 	var element_layer = document.getElementById('layer');
	//주소 검색 닫아주기
	function closeDaumPostcode() {
		//iframe을 넣은 element를 안보이게 한다.
		element_layer.style.display = 'none';
	}
	//주소 검색 열어주기
	function openDaumPostcode(userZipCode, userFirstAddr, userSecondAddr) {
		new daum.Postcode({
			oncomplete : function(data) {
				document.getElementById(userZipCode).value = data.zonecode;
				document.getElementById(userFirstAddr).value = data.address;
				document.getElementById(userSecondAddr).focus();
				element_layer.style.display = 'none';
			},
			width : '100%',
			height : '100%'
		}).embed(element_layer);
		element_layer.style.display = 'block';
		initLayerPosition();
	}
	//팝업창 세부 설정
	function initLayerPosition() {
		var width = 300; //우편번호서비스가 들어갈 element의 width
		var height = 460; //우편번호서비스가 들어갈 element의 height
		var borderWidth = 5; //샘플에서 사용하는 border의 두께
		//위에서 선언한 값들을 실제 element에 넣는다.
		element_layer.style.width = width + 'px';
		element_layer.style.height = height + 'px';
		element_layer.style.border = borderWidth + 'px solid';
		//실행되는 순간의 화면 너비와 높이 값을 가져와서 중앙에 뜰 수 있도록 위치를 계산한다.
		element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width) / 2 - borderWidth)
				+ 'px';
		element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height) / 2 - borderWidth)
				+ 'px';
	} */
	function idChk() {
		if (!frm.mId.value) {
			alert("아이디를 입력해 주세요");
			frm.mId.focus();
			return false;
		}
		$.post('${path}/idChk', 'id=' + frm.mId.value, function(data) {
			$('#disp').html(data);
		});
	}
	function chk() {
		if (frm.mPassword.value != frm.mPassword2.value) {
			alert("암호와 암호확인이 다릅니다");
			frm.mPassword.focus();
			frm.mPassword.value = "";
			return false;
		}
	}
</script>
</head>
<body>
<div class="container">
<c:import url="../nav.jsp"></c:import>
 <div class="col-sm-12">
<form action="${path}/mJoin" method="post" name="frm" onsubmit="return chk()">
<table class="table table-bordered table-hover">
<caption>개인 회원 가입</caption>
	<tr><td>아이디</td><td><input type="text" name="mId" required="required"
		autofocus="autofocus"> <input type="button" onclick="idChk()" value="중복체크">
		<span id="disp"></span></td></tr>
	<tr><td>이름</td><td><input type="text" name="mName" required="required"></td></tr>
	<tr><td>암호</td><td><input type="password" name="mPassword"required="required"></td></tr>
	<tr><td>암호 확인</td><td><input type="password" name="mPassword2"required="required"></td></tr>
	<tr><td>이메일</td><td><input type="email" name="mEmail" required="required"></td></tr>
				<!-- <tr><th rowspan="3">주소</th><td colspan="2"><input type="addr" id="postcode" name="mAddress" placeholder="우편번호" autocomplete="off">
		<input type="button" onclick="execDaumPostcode()" value="우편번호 찾기" style="width:120pt; float:right;  position:fixed;"></td></tr>
		<tr><td colspan="2" style="border-top:0"><input type="text" id="address" name="address" placeholder="주소" autocomplete="off"></td></tr>	
		<tr><td colspan="2" style="border-top:0"><input type="text" id="detailAddress" name="detailAddress" placeholder="상세주소" autocomplete="off">
		<div style="display: none;"><input type="text" id="extraAddress" name="extraAddress" placeholder="참고항목" autocomplete="off"></div></td></tr> -->
	<tr><th>전화</th><td colspan="2"><input type="tel" name="mTel" 
		required="required" pattern="\d{3}-\d{3,4}-\d{4}" placeholder="xxx-xxxx-xxxx" 
		title="전화번호 형식 xxx-xxxx-xxxx"autocomplete="off"></td></tr>
	<!-- <tr><td>추천 받을 키워드</td><td><input type="text" name="mKeyword" required="required"></td></tr> -->
	<tr><th colspan="2"><input type="submit" class="btn btn-primary" value="가입하기"></th></tr>
</table>
</form>
<a href="${path}/mLoginForm"  class="btn btn-default">로그인</a>
</div>
</div>
</body>
</html>