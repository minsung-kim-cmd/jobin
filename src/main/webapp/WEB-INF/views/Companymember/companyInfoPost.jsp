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
	<a href="#"><p class="float_right"><img src="resources/heart.png">관심기업</p></a>
</div>

	<div class="content">
		<h3>기업채용공고</h3>
		<span id="Regist">등록일순▼</span>
		<c:if test="${empty jobpostList}">
			<div class="content-posting">
				<h3>등록된 채용공고가 없습니다</h3>
			</div>
		</c:if>
		<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" var="today" />
		<c:set var="jobpostLength" value="${fn:length(jobpostList)}"/> 
		<c:set var="a" value="false"/>
		
		<div id="aa" style="display:block">
		<c:forEach var="jobpostList" items="${jobpostList}">
		<fmt:formatDate value="${jobpost.closing}" pattern="yyyyMMdd" var="closing" />
		<c:if test="${jobpostList.regStatus eq 'n '&&today <= closing}">
			<jsp:useBean id="toDay" class="java.util.Date" />
					<div class="content-posting">
						<div class="posting-cnt">
							<span>조회수</span>
							<span class="cnt">${jobpostList.readCnt}</span>
						</div>
						<div class="posting-top">
							<span>${jobpostList.cName}</span>
							<div><a href="#">${jobpostList.jSubject}</a></div>
							<span>접수기간 ${jobpostList.jRegister} ~ ${jobpostList.closing}</span>
						</div>
					</div>
					<c:set var="a" value="true"/>
				</c:if>
			</c:forEach>
		</div>
			
		<div id="bb" style="display:none">
		<c:forEach items="${jobpostList}" varStatus="status">
			<fmt:formatDate value="${jobpost.closing}" pattern="yyyyMMdd" var="closing" />
			<c:set var="i" value="${jobpostLength-status.count}"/>
			<c:if test="${jobpostList[i].regStatus eq 'n '&&today <= closing[i]}">
					<div class="content-posting">
						<div class="posting-cnt">
							<span>조회수</span>
							<span class="cnt">${jobpostList[i].readCnt}</span>
						</div>
						<div class="posting-top">
							<span>${jobpostList[i].cName}</span>
							<div><a href="#">${jobpostList[i].jSubject}</a></div>
							<span>접수기간 ${jobpostList[i].jRegister} ~ ${jobpostList[i].closing}</span>
						</div>
					</div>
				<c:set var="a" value="true"/>
			</c:if>
		</c:forEach>
		</div> 
		
		<c:if test="${a==false}">
			<div class="content-posting">
				<h3>채용중인 채용공고가 없습니다</h3>
			</div>
		</c:if>
	</div>
</div>
</div>
</body>
<script type="text/javascript">
$(function() {
 	$('#Regist').click(function() {	
		if($("#aa").css("display") == "block"){
			$("#aa").hide();
			$("#bb").show();
			$("#Regist").text("등록일순▲");
		}else if($("#bb").css("display") == "block"){
			$("#aa").show();
			$("#bb").hide();
			$("#Regist").text("등록일순▼");
		}
	}); 
});
</script>
