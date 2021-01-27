<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>채용 정보 상세</title>
<link rel="stylesheet" href="${path}/css/main.css">
<style> 
.detail th{
    text-align:center;border:1px solid lightgray;border-top:2px solid #337ab7;border-bottom:2px solid #337ab7;
}
.detail td{
    border:1px solid lightgray;
}
</style>
<script type="text/javascript">
function support(jobPostCode,cName,jSubject,companyCode) {
	var option ="width=700,height=600,top=200,left=600,locaion=no";
	var url ="rsmSelect?jobPostCode="+jobPostCode+"&cName="+cName+"&jSubject="+jSubject;
	window.open(url,"이력서 선택",option)
}
</script>
</head>
<body>
<div class="container" style="padding-top: 50px;">
		<c:import url="../nav.jsp"></c:import>
</div>

<div class="container">
            <div style="font-size:large"><b>채용정보</b></div>
            <div class="col-sm-8" style="border:1px solid lightgray;border-top:2px solid black;">
                <div style="font-size:large;">${jobpost.cName}</div>
                <div style="font-size:x-large;">${jobpost.jSubject}</div>
                <hr>
                <div class="col-sm-6">
                <table><caption>지원자격</caption>
                    <tr><td style="width:65px;">경력</td><td style="width:250px;">&nbsp&nbsp&nbsp&nbsp${jobpost.career}</td></tr>
                    <tr><td style="width:65px;">학력</td><td style="width:250px;">&nbsp&nbsp&nbsp&nbsp${jobpost.finalEdu}</td></tr>
                    <!-- <tr><td style="width:65px;">우대</td><td style="width:250px;">&nbsp&nbsp&nbsp&nbsp기타데이터</td></tr> -->
                </table>
                </div>
                <div class="col-sm-6">
                <table><caption>근무조건</caption>
                    <tr><td style="width:65px;">고용형태</td><td style="width:250px;">&nbsp&nbsp&nbsp&nbsp${jobpost.jobtype}</td></tr>
                    <tr><td style="width:65px;">급여</td><td style="width:250px;">&nbsp&nbsp&nbsp&nbsp연봉 ${jobpost.sal}만원</td></tr>
                    <tr><td style="width:65px;">지역</td><td style="width:250px;">&nbsp&nbsp&nbsp&nbsp${jobpost.workarea}</td></tr>
                    <tr><td style="width:65px;">시간</td><td style="width:250px;">&nbsp&nbsp&nbsp&nbsp${jobpost.workTime}</td></tr>
                    <tr><td style="width:65px;">직급</td><td style="width:250px;">&nbsp&nbsp&nbsp&nbsp${jobpost.position}</td></tr>
                </table>
                </div>
            </div>
            <div class="col-sm-4" style="border:1px solid lightgray;border-top:2px solid black; height:353px;">
                <img src="${path}/images/${jobpost.cLogo}" alt="..." style="width:100%;height:95px;overflow:hidden;">
                <table><caption>기업정보</caption>
                    <tr><td style="width:65px;">업종</td><td style="width:250px;">&nbsp&nbsp&nbsp&nbsp${jobpost.occupation}</td></tr>
                    <tr><td style="width:65px;">사원수</td><td style="width:250px;">&nbsp&nbsp&nbsp&nbsp${jobpost.numOfPeo}</td></tr>
                    <tr><td style="width:65px;">설립년도</td><td style="width:250px;">&nbsp&nbsp&nbsp&nbsp${jobpost.careerDateA}(${jobpost.careerDateB})</td></tr>
                    <tr><td style="width:65px;">기업형태</td><td style="width:250px;">&nbsp&nbsp&nbsp&nbsp${jobpost.dept}</td></tr>
                    <tr><td style="width:65px;">홈페이지</td><td style="width:250px;">&nbsp&nbsp&nbsp&nbsp${jobpost.cHomepage}</td></tr>
                </table>
            </div>
            <div class="col-sm-12" style="text-align:center;">
            <button class="btn btn-lg btn-info" onclick="support('${jobpost.jobPostCode}','${jobpost.cName }','${jobpost.jSubject }')">즉시지원</button>
            <button class="btn btn-lg btn-warning" onclick="location.href='scrapInsert?jobPostCode=${jobpost.jobPostCode}'">스크랩</button>
            </div>
        </div>
    
    
    <div class="container" style="margin-top:50px;border-top:3px;border:1px solid black;border-left:0;border-right:0;margin-bottom:30px;">
        <div style="font-size:xx-large;text-align:center;">${jobpost.jSubject}</div>
        <div class="col-sm-10" style="margin-top:20px;margin-bottom:20px;">
            <table class="detail" style="margin-left:10%;margin-right:50%;width:100%;"><caption style="color:black;font-size:x-large;font-weight:bold;"><img alt="" src="">모집부분 및 자격요건</caption>
                <tr><th style="border-left:0;width:15%">모집분야</th><th style="width:35%">담당업무</th><th style="width:35%">자격요건</th><th style="border-right:0;width:15%">모집인원</th></tr>
                <tr>
                <td style="text-align:center;border-left:0;">${jobpost.occupation}</td>
                <td><span>-${jobpost.keyword}<br></span></td>
                <td><span>-${jobpost.major}<br>-${jobpost.finalEdu}</span></td>
                <td style="text-align:center;border-right:0;">${jobpost.applicantNum}명</td>
                </tr>
            </table>
        </div>
        <div class="col-sm-10" style="margin-top:20px;margin-bottom:20px;">
            <table class="detail" style="margin-left:10%;margin-right:50%;width:100%;"><caption style="color:black;font-size:x-large;font-weight:bold;"><img alt="" src="">근무환경</caption>
                <tr><td style="border:0;"><span>-근무형태 : ${jobpost.jobtype}<br>
                    -근무지 : 근무지주소
                    <br>-복지 : ${jobpost.jWelfare}
                </span></td></tr>
            </table>
        </div>
        <div class="col-sm-10" style="margin-top:20px;margin-bottom:20px;">
            <table class="detail" style="margin-left:10%;margin-right:50%;width:100%;"><caption style="color:black;font-size:x-large;font-weight:bold;"><img alt="" src="">접수기간 및 방법</caption>
                <tr><td style="border:0;"><span>-마감일 : ${jobpost.closing}<br>
                    -제출서류 : 이력서, 자기소개서, 졸업증명서
                </span></td></tr>
            </table>
        </div>
        <div class="col-sm-12" style="text-align:center;margin-bottom:10px;">
            <button class="btn btn-lg btn-info" onclick="support('${jobpost.jobPostCode}','${jobpost.cName }','${jobpost.jSubject }')">즉시지원</button>
            <button class="btn btn-lg btn-warning"onclick="location.href='scrapInsert?jobPostCode=${jobpost.jobPostCode}'">스크랩</button>
            </div>
    </div>
</body>
</html>