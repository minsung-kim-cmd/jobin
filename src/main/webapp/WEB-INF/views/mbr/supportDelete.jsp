<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<c:if test="${result>0 }">
<script type="text/javascript">
alert("취소되었습니다.");
location.href="supportList";
</script></c:if>
<c:if test="${result == 0 }">
<script type="text/javascript">
alert("취소 실패. 다시 시도해주세요");
history.go(-1);
</script></c:if>
</head>
<body>
</body>
</html>