<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<style type="text/css">
a,i{
	cursor: pointer;
	color:black;
}
div.container{
	text-align:center;
}
label{
	border: 1px solid gary;
	background-color: white;
	border-radius: 3px;
	color : tomato;
}
#profile {
	width: 120px;
	height: 250px;
	float: left;
	border: 1px solid gray;
	/* margin-left:120px; */
	margin-right: 80px;
}

#content {
	margin-left:30px;
	width: 600px;
	height: 700px;
	float: left;
}

#post td{
	text-align: left;
}

td {
	text-align: center;
}

div.tab{
	margin-top: 50px;
}

ul.tabs{
	margin: 0px;
	padding: 0px;
	list-style: none;
}

ul.tabs li{
	text-align: center;
	width:190px;
  	display: inline-block;
  	border:0; 
	/* background: #898989; */
	color: gray;
	padding: 10px 15px;
	cursor: pointer;
}
.tab-link.current{
	color:#337ab7;
	border-bottom : 1px solid #337ab7;
}
.tab-content{
  display: none;
	padding: 12px;
}

.tab-content.current{
	display: inherit;
}
.probtn{
	background-color: white;
	border: 1px solid gray;
	border-radius: 3px;
}
</style>
<script type="text/javascript">
	function support(jobPostCode,cName,jSubject,companyCode) {
		var option ="width=700,height=600,top=200,left=600,locaion=no";
		var url ="rsmSelect?jobPostCode="+jobPostCode+"&cName="+cName+"&jSubject="+jSubject;
		window.open(url,"이력서 선택",option)
	}
	function jobpost(jobPostCode,jSubject) {
		var option ="width=1000,height=800,top=100,left=500,locaion=no";
		var url ="jobpost?jobPostCode="+jobPostCode;
		window.open(url,jSubject,option)
	}
</script>
</head>
<body>
<script type="text/javascript">
$(document).ready(function(){
	
	$('ul.tabs li').click(function(){
		var tab_id = $(this).attr('data-tab');

		$('ul.tabs li').removeClass('current');
		$('.tab-content').removeClass('current');

		$(this).addClass('current');
		if(tab_id == 'tab-1'){
			$("#tab-1").addClass('current');
			$("#supoort").css('color','#337ab7');
			$("#supoort").css('border-bottom','1px solid #337ab7');
			$("#screp").css('border','0');
			$("#screp").css('color','gray');
			$("#open").css('border','0');
			$("#open").css('color','gray');
		}
		else if(tab_id == 'tab-2'){
			$("#tab-2").addClass('current');
			$("#screp").css('border-bottom','1px solid #337ab7');
			$("#screp").css('color','#337ab7');
			$("#supoort").css('border','0');
			$("#supoort").css('color','gray');
			$("#open").css('border','0');
			$("#open").css('color','gray');
		}
		else{
			$("#tab-3").addClass('current');
			$("#open").css('border-bottom','1px solid #337ab7');
			$("#open").css('color','#337ab7');
			$("#supoort").css('border','0');
			$("#supoort").css('color','gray');
			$("#screp").css('border','0');
			$("#screp").css('color','gray');
		}
		
	})

});
</script>
	
	<div class="container" style="padding-top: 50px;">
		<c:import url="../Mypagenav.jsp"></c:import>
</div>
	<div class="container" style="margin-top: 50px;">
		<div id="profile">
			<table style="text-align: center; width: 120px;">
				<tr height="130px">
					<td width="100px"><img src="${path}/images/Sample_men.PNG" width="100" height="100"></td>
				<tr>
				<tr height="30px">
					<td>${mbr.mName }님</td>
				</tr>
				<tr height="40px">
					<td><button onclick="location.href='rsmList'" class="probtn">이력서 보기</button></td>
				</tr>
				<tr height="30px">
					<td><button onclick="location.href='attentionList'" class="probtn">관심 기업</button></td>
				</tr>
			</table>
		</div>
		<div id="content">
			<table >
				<tr height="80">
					<td width="150px" style="font-size: 50;">${rsmCnt }</td>
					<td width="150px" style="font-size: 50;">${supportCnt }</td>
					<td width="150px" style="font-size: 50;">${scrapCnt}</td>
					<td width="150px" style="font-size: 50;">${jobopenCnt }</td>
				</tr>
				<tr>
					<td>이력서</td>
					<td>지원한 공고</td>
					<td>스크랩</td>
					<td>최근 본 공고</td>
				</tr>
			</table>
			<div></div>
			<div class="tab">
				<ul class="tabs">
					<li class="tab-link current" data-tab="tab-1" id="supoort">지원한 공고</li>
					<li class="tab-link" data-tab="tab-2" id="screp">스크랩한 공고</li>
					<li class="tab-link" data-tab="tab-3" id="open">최근 본 공고</li>
				</ul>
				<div id="tab-1" class="tab-content current">
					<table id="post" style="text-align: left; width: 550px;">
						<c:if test="${supportCnt != 0 }">
						<c:forEach var="supList" items="${supList }">
						<tr><td height="50px" style="font-size: 25px;">${supList.cName }</td>
						<td style="text-align: right;">${supList.closing }</td></tr>
						<tr><td height="20px"><a onclick="jobpost('${supList.jobPostCode}','${supList.jSubject }')">${supList.jSubject }</a></td></tr>
						<tr><td colspan="2" height="30px" style="color:gray;">
						${supList.career} | ${supList.finalEdu} | ${supList.workarea} | ${supList.jobtype }</td></tr>
						</c:forEach></c:if>
						<c:if test="${supportCnt == 0 }">
						<tr><td colspan="2"> 지원한 공고가 없습니다.</td></tr>
						</c:if>
					</table>
				</div>
				<div id="tab-2" class="tab-content">
					<table id="post" style="text-align: left; width: 550px;">
					<c:if test="${scrapCnt != 0 }">
					<c:forEach var="scrapList" items="${scrapList }">
						<tr><td height="50px" style="font-size: 25px;">${scrapList.cName }&nbsp;&nbsp;
						<i class="material-icons"onclick="location.href='scrapDelete?scrapCode=${scrapList.scrapCode}'">&#xe888;</i></td>
						<td style="text-align: right;">${scrapList.closing }</td></tr>
						<tr><td height="20px"><a onclick="jobpost('${scrapList.jobPostCode}','${scrapList.jSubject }')">${scrapList.jSubject }</a></td>
						<td style="text-align: right;">
						<c:if test="${scrapList.regStatus eq 'y ' }"><label>지원마감</label></c:if>
						<c:if test="${scrapList.regStatus eq 'n ' }">
							<input type="button"class="btn btn-middle btn-warning" onclick="support('${scrapList.jobPostCode}','${scrapList.cName }','${scrapList.jSubject }')" value="즉시지원">
						</c:if></td></tr>
						<tr><td colspan="2" height="30px" style="color:gray;">
						${scrapList.career} | ${scrapList.finalEdu} | ${scrapList.workarea} | ${scrapList.jobtype }</td></tr>
						</c:forEach></c:if>
						<c:if test="${scrapCnt == 0 }">
						<tr><td colspan="2"> 스크랩한 공고가 없습니다.</td></tr>
						</c:if>
					</table>
				</div>
				<div id="tab-3" class="tab-content">
					<table id="post" style="text-align: left; width: 550px;">
					<c:if test="${jobopenCnt !=0 }">
						<c:forEach var="open" items="${openList }">
							<tr><td height="50px" style="font-size: 25px;">${open.cName }</td>
							<td style="text-align: right;">${open.closing }</td></tr>
							<tr><td height="20px"><a onclick="jobpost('${open.jobPostCode}','${open.jSubject }')">${open.jSubject }</a></td>
							<td style="text-align: right;">
							<c:if test="${open.regStatus == 'y '}">
								<label>지원마감</label>
							</c:if>
							<c:if test="${open.regStatus  == 'n ' }">
								<input type="button" class="btn btn-middle btn-warning" onclick="support('${open.jobPostCode}','${open.cName }','${open.jSubject }')" value="즉시지원">
							</c:if></td></tr>
							<tr><td colspan="2" height="30px" style="color:gray;">
							${open.career} | ${open.finalEdu} | ${open.workarea} | ${open.jobtype }</td></tr>
						</c:forEach></c:if>
						<c:if test="${jobopenCnt == 0 }">
							<tr><td colspan="2"> 최근 본 공고가 없습니다.</td></tr>
						</c:if>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
</html>