<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../scr.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:if test="${result > 0 }">
	<script type="text/javascript">
		alert("기업리뷰를 수정했습니다");
		location.href = "companyInfoReview?companyCode="+${companyreview.companyCode};
	</script>
</c:if>
<c:if test="${result == 0 }">
	<script type="text/javascript">
		alert("등록실패");
		history.go(-1);
	</script>
</c:if>
</body>
</html>