<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<c:if test="${result >0 }">
<script type="text/javascript">
alert("성공적으로 스크랩되었습니다.");
history.go(-1);
</script>
</c:if>
<c:if test="${result == 0 }">
<script type="text/javascript">
alert("스크랩 실패. 다시 시도해주세요");
history.go(-1);
</script></c:if>
<c:if test="${result == -1 }">
<script type="text/javascript">
alert("이미 스크랩된 공고입니다.");
history.go(-1);
</script></c:if>
<body>
</body>
</html>