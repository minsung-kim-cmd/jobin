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
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
</head>
<body>
<div class="container" style="width:1290px;">
<c:import url="../nav.jsp"/>
<div class="company_warp">
	<div class="company_top" style="padding-top:40px;">
		<h2>전체 지원자</h2>
	</div>
	<div class="job_regStatus">
	<c:if test="${empty applyList}">
		<span>지원중 0</span>
		<span>지원마감 0</span>
	</c:if>
	<c:forEach var="applyList" items="${applyList}" >
		<c:set var="cnt1" value="0"/>
		<c:set var="cnt2" value="0"/>
			<span>지원중
		<c:if test="${applyList.pass!='y '&&applyList.pass!='n '}">
			<c:set var="cnt1" value="${cnt1+1}"/>
			</c:if> ${cnt1}</span>
			<span>지원마감
		<c:if test="${applyList.pass=='y '||applyList.pass=='n '}">
			<c:set var="cnt2" value="${cnt2+1}"/>
			</c:if> ${cnt2}</span>
	</c:forEach>
	</div>
	<div class="content">
	<span id="all" class="content-view">전체</span><span id="pass" class="content-view">합격자</span><span id="fail" class="content-view">불합격자</span>
	<div class="content-all">
		<!--전체보기START-->
		<div class="aa" style="display:block;">
			<c:forEach var="applyList" items="${applyList}">
				<c:set var="j" value="${j+1}"/>
				<c:if test="${j<=6}">
					<div class="content-apply">
						<div class="applylist-picture"><img src="resources/${applyList.rPicture}"></div>
						<div class="applylist-applyName">${applyList.rName}<span>(${applyList.rCareer})</span></div>
						<c:if test="${applyList.pass!='y '&&applyList.pass!='n '}">
						<div class="applylist-pass">대기중</div>
						</c:if>
						<c:if test="${applyList.pass=='y '}">
						<div class="applylist-pass">합격</div>
						</c:if>
						<c:if test="${applyList.pass=='n '}">
						<div class="applylist-pass">불합격</div>
						</c:if>
						<div class="applylist-subject">
						<a href="supportStatusOpen?sNum=${applyList.sNum}">${applyList.rSubject}</a>
						</div>
						<div class="applylist-rUnidivi">
						<c:if test="${!empty applyList.rUnidivi}">
						${applyList.rUnidivi} 졸업
						</c:if>
						<c:if test="${empty applyList.rUnidivi}">
						고등학교 졸업
						</c:if>
						</div>
						<div class="applylist-career">${applyList.keyword}</div>
						<c:forTokens var="rWishjob" items="${applyList.rWishjob}" delims=",">
							<div class="applylist-wishjob">${rWishjob}</div>
						</c:forTokens>
						<div class="applylist-applydate">지원일 : ${applyList.applydate}</div>
					</div>
				</c:if>
			</c:forEach>
			<c:if test="${empty applyList}">
				<div class="content-pass">
					<h3>지원자가 없습니다</h3>
				</div>
			</c:if>
		</div>
		<!-- 전체보기END -->
		<!-- 합격자보기START -->
		<div class="bb" style="display:none;">
			<c:forEach var="applyList" items="${applyList}">
				<c:if test="${applyList.pass=='y '}">
				<c:set var="j" value="${j+1}"/>
				<c:if test="${j<=6}">
					<div class="content-apply">
						<div class="applylist-picture"><img src="resources/${applyList.rPicture}"></div>
						<div class="applylist-applyName">${applyList.rName}<span>(${applyList.rCareer})</span></div>
						<div class="applylist-pass">합격</div>
						<div class="applylist-subject"><a href="supportStatusOpen?sNum=${applyList.sNum}">${applyList.rSubject}</a>
						</div>
						<div class="applylist-rUnidivi">
						<c:if test="${!empty applyList.rUnidivi}">
						${applyList.rUnidivi} 졸업
						</c:if>
						<c:if test="${empty applyList.rUnidivi}">
						고등학교 졸업
						</c:if>
						</div>
						<div class="applylist-career">${applyList.keyword}</div>
						<c:forTokens var="rWishjob" items="${applyList.rWishjob}" delims=",">
							<div class="applylist-wishjob">${rWishjob}</div>
						</c:forTokens>
						<div class="applylist-applydate">지원일 : ${applyList.applydate}</div>
					</div>
				</c:if>
			</c:if>
				<c:if test="${applyList.pass!='y '}">
					<div class="content-pass">
						<h3>합격자가 없습니다</h3>
					</div>
				</c:if>
			</c:forEach>
				<c:if test="${empty applyList}">
					<div class="content-pass">
						<h3>합격자가 없습니다</h3>
					</div>
				</c:if>
		</div>
		
		<!-- 합격자보기END -->
		<!-- 불합격자보기START -->
		<div class="cc" style="display:none;">
			<c:forEach var="applyList" items="${applyList}">
			<c:if test="${applyList.pass=='n '}">
				<c:set var="j" value="${j+1}"/>
				<c:if test="${j<=6}">
					<div class="content-apply">
						<div class="applylist-picture"><img src="resources/${applyList.rPicture}"></div>
						<div class="applylist-applyName">${applyList.rName}<span>(${applyList.rCareer})</span></div>
						<div class="applylist-pass">불합격</div>
						<div class="applylist-subject"><a href="supportStatusOpen?sNum=${applyList.sNum}">${applyList.rSubject}</a>
						</div>
						<div class="applylist-rUnidivi">
						<c:if test="${!empty applyList.rUnidivi}">
						${applyList.rUnidivi} 졸업
						</c:if>
						<c:if test="${empty applyList.rUnidivi}">
						고등학교 졸업
						</c:if>
						</div>
						<div class="applylist-career">${applyList.keyword}</div>
						<c:forTokens var="rWishjob" items="${applyList.rWishjob}" delims=",">
							<div class="applylist-wishjob">${rWishjob}</div>
						</c:forTokens>
						<div class="applylist-applydate">지원일 : ${applyList.applydate}</div>
					</div>
				</c:if>
			</c:if>
				<c:if test="${applyList.pass!='n '}">
					<div class="content-pass">
						<h3>불합격자가 없습니다</h3>
					</div>
				</c:if>
			</c:forEach>
			<c:if test="${empty applyList}">
				<div class="content-pass">
					<h3>불합격자가 없습니다</h3>
				</div>
			</c:if>
		</div>
		<!-- 불합격자보기END -->
	</div>
</div>
</div>
</div>
</body>
<script type="text/javascript">
$(function() {
 	$('#all').click(function() {
			$(".aa").show();
			$(".bb").hide();
			$(".cc").hide();
			$(".content-view").css("fontSize" , "40");
	}); 
 	$('#pass').click(function() {
			$(".aa").hide();
			$(".bb").show();
			$(".cc").hide();
			$(".content-view").css("fontSize" , "40");
	}); 
 	$('#fail').click(function() {
			$(".aa").hide();
			$(".bb").hide();
			$(".cc").show();
			$(".content-view").css("fontSize" , "40");
	}); 
});
</script>
</html>
