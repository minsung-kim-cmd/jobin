<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">@import url("resources/company.css");</style>
<style type="text/css">@import url("resources/reset.css");</style>
</head>
<body>
<div class="container" style="width:1290px;">
<c:import url="../nav.jsp"/>
<div class="company_warp" >
	<div class="jobpost-management">
		공고 관리
	</div>
	<div class="allview"><a href="allJobpost?companyCode=${companyCode}">전체보기</a></div>
	<div class="content">
	<div class="content-all">
	<c:forEach var="jobpost" items="${jobpostList}">
		<c:set var="i" value="${i+1}"/>
		<c:if test="${i<=6}">
		<div class="content-jobpost">
			<ul>
				<c:forTokens var="career" items="${jobpost.career}" delims=",">
					<li class="rsm-career">${career}</li>
				</c:forTokens>
				<li class="rsm-jSubject"><a href="jobpost?jobPostCode=${jobpost.jobPostCode}">${jobpost.jSubject}</a></li>
				<li class="rsm-occupation">${jobpost.occupation}</li>
				<li class="rsm-regist">${jobpost.jRegister} ~ ${jobpost.closing}</li>
			</ul>
		</div>
		</c:if>
	</c:forEach>
	</div>
	<c:if test="${empty jobpostList}">
		<div class="content-posting">
			<h3>채용중인 공고가 없습니다</h3>
		</div>
	</c:if>
	</div>
	<div class="apply-management">
		지원자 관리
	</div>
	<div class="allview"><a href="allApplicant?companyCode=${companyCode}">전체보기</a></div>
	<div class="content">
	<div class="content-all">
	<c:forEach var="sup" items="${applyList}">
		<c:set var="j" value="${j+1}"/>
		<c:if test="${j<=6}">
			<div class="content-jobpost">
				<div class="apply-picture"><img src="resources/${sup.rPicture}"></div>
				<div class="apply-applyName">${sup.rName}<span>
				<c:if test="${sup.rGender=='m'}">
				(남)
				</c:if>
				<c:if test="${sup.rGender=='w'}">
				(여)
				</c:if>
				</span></div>
				<div class="apply-career">${sup.rCareer}</div>
				<div class="apply-subject"><a href="supportStatusOpen?sNum=${sup.sNum}">${sup.rSubject}</a></div>
				<div class="apply-wishjob">${sup.rWishjob}</div>
			</div>
		</c:if>
	</c:forEach>
	</div>
		<c:if test="${empty applyList}">
		<div class="content-posting">
			<h3>지원자가 없습니다</h3>
		</div>
	</c:if>
</div>
</div>
</div>
</body>
</html>