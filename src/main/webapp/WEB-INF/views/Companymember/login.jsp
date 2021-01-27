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
//		alert("로그인성공");
	location.href = "companyInfo?companyCode="+${companyCode};  
// 	location.href = "allJobpost?companyCode="+${companyCode};  
//	location.href = "insertJobpostForm?companyCode="+${companyCode};
//	location.href = "postnApply?companyCode="+${companyCode};
	</script>
</c:if>
<c:if test="${result == 0 }">
	<script type="text/javascript">
		alert("로그인실패");
		history.go(-1);
	</script>
</c:if>
</body>
</html>