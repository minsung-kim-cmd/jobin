<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이력서 보기</title>
<style type="text/css">

.apply-conf{
    text-align:center;
}
.apply-conf span{
    padding:10px 5px;
}
.apply-conf button{
    font-weight:bold;
    font-size:20px;
    padding:10px 20px;
}
.content-picture img{
    position:absolute;
border:1px solid #a6a6a6;
top:10px;
right:35px;
	width:120px;
	height:150px;
}
.content {
	background-color: #FAFAFA;
	width: 870px;
    position:relative;
}
td{
	padding: 5px;
}
#applytable{
	width: 800px;text-align: center;
}

#applytable th{
	text-align: center;
	width: 200px;
}
hr{
	background-color: #5882FA;
}
div{
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
#applytable td{
	text-align: center;
	height: 50px;
}

</style>
</head>
<body>
	<div class="container">		
		<span id="brr"></span>				
			<div class="content">
				<h2>${apply.subject}</h2><br>
				<p>${apply.rName }&nbsp;&nbsp; ${apply.rBirth}&nbsp;&nbsp;  <c:if test="${apply.rGender eq 'f'}">여성</c:if>
				<c:if test="${apply.rGender eq 'm'}">남성</c:if>&nbsp;&nbsp;<br><br>
				Email&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp; ${apply.rEmail }&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;휴대폰
				&nbsp;&nbsp;|&nbsp;&nbsp;${apply.rTel }&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;주소&nbsp;&nbsp;|&nbsp;&nbsp;${apply.rAddress }
				<span class="content-picture"><img src="${path}/resources/${apply.rPicture}"></span>
				</p>
				<table id="applytable"><tr><th>학력</th><th>경력</th><th>자격증</th><th>사용언어</th></tr>
				<tr><td><c:if test="${apply.rUniname == null }">${apply.rHighname }</c:if>
				<c:if test="${apply.rUniname != null }">${apply.rUniname }</c:if>
				<c:if test="${apply.rUniname == null && apply.rHighname ==null }">-</c:if></td>
				<td>${apply.rCareer }</td>
				<td><c:if test="${!empty licen }"><c:forEach var="licen" items="${licen }">${licen.rLicense}<br></c:forEach></c:if>
				<c:if test="${empty licen }">-</c:if></td>
				<td><c:if test="${!empty apply.keyword }">${apply.keyword }</c:if>
				<c:if test="${empty apply.keyword }">-</c:if></td></tr>
				</table>
			</div>
			<c:if test="${apply.rUniname != null || apply.rHighname !=null}">
			<div class="content">
				<h3>학력</h3>			
				<table id="edutb">
				<c:if test="${apply.rHighname != null}">
					<c:if test="${apply.rHighname eq 'ged' }">
						<tr><td>고등학교 검정고시 졸업</td></tr>
					</c:if>
					<c:if test="${apply.rHighname ne 'ged' }">
					<tr><th>${apply.rHighadmi } - ${apply.rHighgradu }</th>
					<td>${apply.rHighname }  ${apply.rHighmajor }</td></tr>
					<tr></tr></c:if>
				</c:if>
				<c:if test="${apply.rUniname != null}">
					<tr><th>${apply.rUniadmi } - ${apply.rUnigradu }</th>
					<td>${apply.rUniname }   ${apply.rUnimajor }</td></tr>
					<tr><th></th><td>학점&nbsp;&nbsp;	|&nbsp;&nbsp;${apply.rUnicredit }</td></tr>
					<tr><th></th><td>졸업논문&nbsp;&nbsp;|&nbsp;&nbsp;${apply.rUnithesis }</td></tr>
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
						<tr><th>포토폴리오</th><td>포토폴리오파일이름</td></tr>
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
					<tr><th>고용형태</th><td>${apply.rWishjobtype }</td></tr>
					<tr><th>희망근무지</th><td>${apply.rWisharea }</td></tr>
					<tr><th>희망연봉</th><td>${apply.rWishsal }만원</td></tr>
					<tr><th>지원분야</th><td>${apply.rWishjob }</td></tr>
				</table>
			</div>
			<div class="apply-conf">
			<c:if test="${apply.pass != 'y '&&apply.pass != 'n ' }">
				<span><button type="button" onclick="location.href='applypass?sNum=${apply.sNum}'">합격</button></span>
				<span><button type="button" onclick="location.href='applyfail?sNum=${apply.sNum}'">불합격</button></span>
			</c:if>
				<span><button type="button" onclick="location.href='allApplicant?companyCode=${companyCode}'">취소</button></span>
			</div>

	</div>
</body>
</html>