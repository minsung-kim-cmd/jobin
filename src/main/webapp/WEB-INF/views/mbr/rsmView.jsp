<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이력서 보기</title>
<style type="text/css">
.content {
	background-color: #FAFAFA;
	width: 870px;
}
td{
	padding: 5px;
}
#rsmtable{
	width: 800px;text-align: center;
}

#rsmtable th{
	text-align: center;
	width: 200px;
}
hr{
	background-color: #5882FA;
}
.main,.content{
	width : 870px;
	margin: 20px;
	padding: 15px;
}
#careertb,#awardtb,#licentb,#porttb,#selftb,#wishtb,#edutb{
	width : 870px;
	border-top: 1px solid black;
}
#careertb th,#edutb th,#licentb th,#porttb th{
	font-weight: normal;
	width: 200px;
}
#rsmtable td{
	text-align: center;
	height: 50px;
}
</style>
</head>
<body>
<div class="container" style="padding-top: 50px;">
		<c:import url="../Mypagenav.jsp"></c:import>
</div>
	<div class="container main">		
		<span id="brr"></span>				
			<div class="content">
				<h2>${rsm.rSubject }</h2><br>
				<p>${rsm.rName }&nbsp;&nbsp; ${rsm.rBirth }&nbsp;&nbsp;  <c:if test="${rsm.rGender eq 'f'}">여성</c:if>
				<c:if test="${rsm.rGender eq 'm' }">남성</c:if>&nbsp;&nbsp;<c:if test="${rsm.rMilitary eq 'y'}">군필</c:if>
				<c:if test="${rsm.rMilitary eq 'n'}">미필</c:if><c:if test="${rsm.rMilitary eq 'x'}">해당없음</c:if>
				&nbsp;&nbsp;<c:if test="${rsm.rOpenwhether eq 'n' }">비공개</c:if>
				<c:if test="${rsm.rOpenwhether eq 'y' }">공개</c:if><br><br>
				Email&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp; ${rsm.rEmail }&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;휴대폰
				&nbsp;&nbsp;|&nbsp;&nbsp;${rsm.rTel }&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;주소&nbsp;&nbsp;|&nbsp;&nbsp;${rsm.rAddress }</p><br>
				<table id="rsmtable"><tr><th>학력</th><th>경력</th><th>자격증</th><th>사용언어</th></tr>
				<tr><td><c:if test="${rsm.rUniname == null }">${rsm.rHighname }</c:if>
				<c:if test="${rsm.rUniname != null }">${rsm.rUniname }</c:if>
				<c:if test="${rsm.rUniname == null && rsm.rHighname ==null }">-</c:if></td>
				<td>${rsm.rCareer }</td>
				<td><c:if test="${!empty licen }"><c:forEach var="licen" items="${licen }">${licen.rLicense}<br></c:forEach></c:if>
				<c:if test="${empty licen }">-</c:if></td>
				<td><c:if test="${!empty rsm.keyword }">${rsm.keyword }</c:if>
				<c:if test="${empty rsm.keyword }">-</c:if></td></tr>
				</table>
			</div>
			<c:if test="${rsm.rUniname != null || rsm.rHighname !=null}">
			<div class="content">
				<h3>학력</h3>			
				<table id="edutb">
				<c:if test="${rsm.rHighname != null}">
					<c:if test="${rsm.rHighname eq 'ged' }">
						<tr><td>고등학교 검정고시 졸업</td></tr>
					</c:if>
					<c:if test="${rsm.rHighname ne 'ged' }">
					<tr><th>${rsm.rHighadmi } - ${rsm.rHighgradu }</th>
					<td>${rsm.rHighname }  ${rsm.rHighmajor }</td></tr>
					<tr></tr></c:if>
				</c:if>
				<c:if test="${rsm.rUniname != null}">
					<tr><th>${rsm.rUniadmi } - ${rsm.rUnigradu }</th>
					<td>${rsm.rUniname }   ${rsm.rUnimajor }</td></tr>
					<tr><th></th><td>학점&nbsp;&nbsp;	|&nbsp;&nbsp;${rsm.rUnicredit }</td></tr>
					<tr><th></th><td>졸업논문&nbsp;&nbsp;|&nbsp;&nbsp;${rsm.rUnithesis }</td></tr>
				</c:if>
				</table>
				
			</div></c:if>
			<div class="content" id="career">
				<h3>경력</h3>
				<table id="careertb">
					<c:forEach var="career" items="${career }">
					<tr><th>${career.rWorkstart } - ${career.rWorkend }</th>
					<td>${career.rCompanyname } ${career.rJobtype } ${career.rPosition } ${career.rDept }</td></tr>
					<tr><th>담당업무</th><td>${career.rCharge }</td></tr>
					<tr><th>퇴사사유</th><td>${career.rResignation }</td></tr></c:forEach>
				</table>
			</div>
			<c:if test="${!empty licen}">
			<div class="content" id="license">
				<h3>자격증</h3>
				<table id="licentb">
					<c:forEach var="licen" items="${licen }">
						<tr><th>${licen.rLicenseacq }</th><td style="font-weight: bold;">${licen.rLicense }</td>
						<td>${licen.rLicenseissuer }</td></tr>
					</c:forEach>
				</table>
			</div></c:if>
			<c:if test="${!empty award }">
			<div class="content" id="award">
				<h3>수상</h3>
				<table id="awardtb">
					<c:forEach var="award" items="${award }">
					<tr><th rowspan="2">${award.rAwarddate }</th><td>${award.rAwards } ${award.rAwardissuer }</td></tr>
					<tr><td>${award.rAwarded }</td></tr></c:forEach>
				</table>
			</div></c:if>
			<c:if test="${!empty port }">
			<div class="content" id="portfilo">
				<h3>포토폴리오</h3>
				<table id="porttb">
					<c:forEach var="port" items="${port }">
						<tr><th>포토폴리오</th><td>${port.rPortfolio }</td></tr>
						<tr><th>url</th><td>${port.url }</td></tr>
					</c:forEach>
				</table>
			</div></c:if>
			<c:if test="${!empty self }">
			<div class="content"id="self">
				<h3>자기소개서</h3>
				<table id="selftb">
					<c:forEach var="self" items="${self }">
						<tr><td>[${self.selfSubject}]</td></tr>
						<tr><td>${self.selfContent }</td></tr>
					</c:forEach>
				</table>
			</div></c:if>
			<div class="content" id="wish">
				<h3>희망근무조건</h3>
				<table id="wishtb">
					<tr><th>고용형태</th><td>${rsm.rWishjobtype }</td></tr>
					<tr><th>희망근무지</th><td>${rsm.rWisharea }</td></tr>
					<tr><th>희망연봉</th><td>${rsm.rWishsal }만원</td></tr>
					<tr><th>지원분야</th><td>${rsm.rWishjob }</td></tr>
				</table>
			</div>

	</div>
</body>
</html>