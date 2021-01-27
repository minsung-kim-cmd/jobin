<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<script type="text/javascript">
	alert("등록");
</script>
<c:if test="${result >0 }">
<script type="text/javascript">
location.href="";
</script>
</c:if>
<c:if test="${result == 0 }">
<script type="text/javascript">
location.href="";
</script>
</c:if>
</body>
</html>