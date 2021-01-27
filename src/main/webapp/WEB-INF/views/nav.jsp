<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/css/main.css">
</head>
<body>
	<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="${path}/main"><img alt="JobIn!" src="${path}/images/logo.png" width="140px" height="50px"></a>
				</div>
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						
						<li><a href="${path }/nList">공지사항</a></li>
					</ul>

					<ul class="nav navbar-nav navbar-right">
						<c:if test="${empty mId && empty cId}">
							<li><a href="${path}/mLoginForm">로그인</a></li>
							<li><a href="${path}/mJoinForm">회원가입</a></li>
						</c:if>
						<c:if test="${not empty mId && mId ne 'master'}">
							<li><a href="${path}/mLogout">로그아웃</a></li>
							<li><a href="${path}/Mypage">마이페이지</a></li>
						</c:if>
						<c:if test="${not empty cId}">
							<li><a href="${path}/cLogout">로그아웃</a></li>
						</c:if>
						<c:if test="${mId eq 'master'}">
							<li><a href="${path}/qList">문의내역</a></li>
							<li><a href="${path}/mList">개인회원관리</a></li>
							<li><a href="${path}/cList">기업회원관리</a></li>
							<li><a href="${path}/mLogout">로그아웃</a></li>
						</c:if>
					</ul>
				</div>
			</div>
		</nav>
</body>
</html>