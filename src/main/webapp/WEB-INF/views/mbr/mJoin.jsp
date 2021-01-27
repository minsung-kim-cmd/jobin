<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>개인 회원 가입</title></head><body>
<c:if test="${result > 0 }">
	<script type="text/javascript">
		alert("가입을 환영합니다");
		location.href="mLoginForm";
	</script>
</c:if>
<c:if test="${result == 0 }">
	<script type="text/javascript">
		alert("가입에 실패하였습니다");
		history.go(-1);
	</script>
</c:if>
<c:if test="${result == -1 }">
	<script type="text/javascript">
		alert("중복된 아이디 입니다");
		history.go(-1);
	</script>
</c:if>
</body>
</html>