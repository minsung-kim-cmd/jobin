<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>공지 작성</title></head><body>
<c:if test="${result > 0}">
	<script type="text/javascript">
		alert("등록 되었습니다");
		location.href="nList";
	</script>
</c:if>
<c:if test="${result == 0}">
	<script type="text/javascript">
		alert("등록 실패");
		history.back();
	</script>
</c:if>
</body>
</html>