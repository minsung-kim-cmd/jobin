<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../compInfo.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">@import url("resources/companyInfo.css");</style>
<style type="text/css">@import url("resources/reset.css");</style>
<style type="text/css">
nav.navbar.navbar-inverse{margin-bottom:0;}
</style>
</head>
<body>
<div class="container" style="width:1290px;">
<c:import url="../nav.jsp"/>
<div class="company_warp">
<div class="top">
	<p class="back"></p>
	<p class="logo"><img src="resources/Logo/${companymem.cLogo}"></p>
</div>

<div class="company_top">
	<h2>${companymem.cName}</h2>
	<p>${companymem.cSector}</p>
	<p><a href="${companymem.cHomepage}">${companymem.cHomepage}</a></p>
</div>
<div class="nav">
	<p><a href="companyInfo?companyCode=${companymem.companyCode}">소개</a></p>
	<p><a href="companyInfoReview?companyCode=${companymem.companyCode}">리뷰</a></p>
	<p><a href="companyInfoPost?companyCode=${companymem.companyCode}">채용공고</a></p>
	<c:if test="${!empty mId}">
	<a href="attentionInsert?companyCode=${companymem.companyCode}"><p class="float_right"><img src="resources/heart.png">관심기업</p></a>
	</c:if>
	<c:if test="${empty mId}">
	<a href="#"><p class="float_right"><img src="resources/heart.png">관심기업</p></a>
	</c:if>
</div>

<div class="content">
	<h3>기업정보</h3>
	<div class="content-company">
		
		<ul>
			<li>업종<br><span>${companymem.cSector}</span></li>
			<li>기업형태<br><span>${companymem.cType}</span></li>
			<li>사원수<br><span>${companymem.cEmpcount}</span></li>
			<li>설립일<br><span>${companymem.cEstablishDate}</span></li>
		</ul>
	
		
		<div class="company-detail">
			<p><span>대표</span><span>${companymem.cRepresentative}</span></p> 
			<p><span>매출액</span><span>${companymem.cSales}</span></p> 
			<p><span>주소</span><span>${companymem.cAddress}</span></p> 
			<p><span>웹사이트</span><span>${companymem.cHomepage}</span></p> 
			<p><span>사업내용</span><span>${companymem.cBusiness}</span></p> 
		</div>
	</div>
</div>
</div>
</div>
</body>
</html>