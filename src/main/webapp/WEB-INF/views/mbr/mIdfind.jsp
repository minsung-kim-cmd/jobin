<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
<c:if test="${empty mbr }">
	<script type="text/javascript">
		alert("잘못된 정보를 입력하셨습니다.");
		history.go(-1);
	</script>
</c:if>	
<c:if test="${not empty mbr}">
	<h2>아이디 찾기</h2>
	회원가입시 사용한 아이디는 ${mbr.mId }입니다.<p>
	<button onclick="location.href='mLoginForm'">로그인 화면으로 돌아가기</button>
</c:if>
</body>
</html>