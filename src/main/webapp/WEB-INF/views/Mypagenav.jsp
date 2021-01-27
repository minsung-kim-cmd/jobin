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
						<li><a href="#">지역별</a></li>
						<li><a href="#">언어별</a></li>
						<li><a href="#">HOT6</a></li>
						<li><a href="${path }/nList">공지사항</a></li>
					</ul>

					<ul class="nav navbar-nav navbar-right">
						<li><a href="${path}/mLogout">로그아웃</a></li>
						<li><a href="Mypage">마이페이지</a></li>
						<li><a href="mbrChkForm">개인정보 수정</a></li>
						<li><a href="supportList">지원내역</a></li>
						<li><a href="qnaList">문의내역</a></li>
					</ul>
				</div>
			</div>
		</nav>
</body>
</html>