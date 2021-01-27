<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
	<div class="company_top">
		<h2>전체 채용 공고</h2>
	</div>
	<div class="job_regStatus">
		<span><a href="allJobpost?companyCode=${companyCode}">진행중</a></span><span><a href="allJobpostPro?companyCode=${companyCode}">접수마감</a></span><span style="font-weight: bold; font-size:35px;"><a href="allJobpostEnd?companyCode=${companyCode}">채용종료</a></span>	</div>
	<div class="content">
		<span id="Regist">등록일순▼</span>
		<c:if test="${empty jobpostList}">
			<div class="content-posting">
				<h3>등록된 채용공고가 없습니다</h3>
			</div>
		</c:if>
		<jsp:useBean id="now" class="java.util.Date"/>
		<fmt:formatDate value="${now}" pattern="yyyyMMdd" var="today" />
		<c:set var="jobpostLength" value="${fn:length(jobpostList)}"/> 
		<c:set var="a" value="false"/>
		
		<div id="aa" style="display:block">
		<c:forEach var="jobpostList" items="${jobpostList}">
		<fmt:formatDate value="${jobpostList.closing}" pattern="yyyyMMdd" var="closing" />
		<c:if test="${jobpostList.regStatus eq 'y '}">
			<jsp:useBean id="toDay" class="java.util.Date"/>
					<div class="content-posting">
						<div class="posting-cnt">
							<span>조회수</span>
							<span class="cnt">${jobpostList.readCnt}</span>
						</div>
						<div class="posting-top">
							<span>${jobpostList.cName}</span>
							<div>${jobpostList.jSubject}</div>
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
			<c:if test="${jobpostList[i].regStatus eq 'y '}">
					<div class="content-posting">
						<div class="posting-cnt">
							<span>조회수</span>
							<span class="cnt">${jobpostList[i].readCnt}</span>
						</div>
						<div class="posting-top">
							<span>${jobpostList[i].cName}</span>
							<div>${jobpostList[i].jSubject}</div>
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
</html>