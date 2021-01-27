<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인정보 수정</title>
</head>
<body>
<c:if test="${result>0 }">
<script type="text/javascript">
	location.href="mbrForm";
</script></c:if>
<c:if test="${result == 0 }">
<script type="text/javascript">
	alert("잘못된 비밀번호입니다. 다시 입력해주세요.");
	history.go(-1);
</script></c:if>
</body>
</html>