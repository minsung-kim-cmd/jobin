<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JobIn!</title>
<link rel="stylesheet" href="${path}/css/main.css">
<style type="text/css">
	
</style>
</head>
<body>
	<div class="container" style="padding-top: 50px;">
		<c:import url="./nav.jsp"/>
<div class="col-sm-9">
	<div class="panel panel-primary">
		<div class="panel-heading">채용 공고 검색</div>
		<form action="${path}/main/pageNum/${pageNum}" method="GET" id="search-form">
		<table class="table table-bordered" style="margin-bottom: -14px;">
			<tr>
				<td>
				<input type="search" list="cArea" placeholder="지역" class="searchInput form-control" style="float:left;margin-right:8px;">
				<input type="search" list="keyword" placeholder="업무능력" class="searchInput form-control" style="float:left;margin-right:8px;">
	<datalist id="cArea">
	<option value="서울">서울</option>
	<option value="경기">경기</option>
	<option value="인천">인천</option>
	<option value="대전">대전</option>
	<option value="세종">세종</option>
	<option value="충남">충남</option>
	<option value="충북">충북</option>
	<option value="광주">광주</option>
	<option value="전남">전남</option>
	<option value="전북">전북</option>
	<option value="대구">대구</option>
	<option value="경북">경북</option>
	<option value="경남">경남</option>
	<option value="부산">부산</option>
	<option value="울산">울산</option>
	<option value="강원">강원</option>
	<option value="제주">제주</option>
	</datalist>
	
	<select class="searchSelect form-control" style="float:left;margin-right:8px;">
	<optgroup label="경력여부">
	<option hidden="">상세조건</option>
	<option value="신입">신입</option>
	<option value="경력">경력</option>
	</optgroup>
	<optgroup label="고용형태">
	<option value="정규직">정규직</option>
	<option value="계약직">계약직</option>
	<option value="인턴">인턴</option>
	<option value="프리랜서">프리랜서</option>
	</optgroup>
	</select>
	<table style="width:180px;"><tr>
	<td><input type="number" placeholder="연봉" class="searchInput form-control" style="float:left;"></td><td style="float:left;width:70px;">만원 이상</td>
	</tr>
	</table>
	<datalist id="keyword">
	<option>C</option>
	<option>C++</option>
	<option>C#</option>
	<option>object C</option>
	<option>Java</option>
	<option>JSP</option>
	<option>spring</option>
	<option>spring boot</option>
	<option>JavaScript</option>
	<option>React</option>
	<option>React Native</option>
	<option>Angular</option>
	<option>Vue</option>
	<option>Node</option>
	<option>Go</option>
	<option>PHP</option>
	<option>Ruby</option>
	<option>Android</option>
	<option>IOS</option>
	</datalist>
				</td>
			</tr>
			<tr>
				<td>
				<div style="float:left;">
					<input type="text" name="searchKeyword" value="${jobpost.searchKeyword}" class="form-control input-lg" placeholder="키워드 검색" style="width:360px" />
				</div>
				<button type="submit" class="btn btn-lg btn-success" style="float:left;margin:0 10px;">검색</button>
				<!-- <button class="btn btn-lg btn-default">검색조건저장</button> -->
				</td>
			</tr>
		</table>
		</form>
	</div>
<div>

<div class="row">
<c:forEach var="job" items="${list}" varStatus="i">
	  <c:if test="${i.index<=5 }">
	  <div class="col-sm-6 col-md-4">
	  
	    <div class="thumbnail">
	      <img src="${path}/images/${job.cLogo}" alt="이미지" style="width:244px;height:100px;">
	      <div class="caption">
	        <h6><a href="${path}/companyInfo?companyCode=${job.companyCode}">${job.cName}</a></h6>
	        <p class="jobpostSubject"><a href="${path}/jobpost?jobPostCode=${job.jobPostCode}">${job.jSubject}</a></p>
	        <p>
	        <a href="${path}/jobpost/${job.jobPostCode}/${pageNum}" target="_blank" class="btn btn-info btn-sm">지원하기</a>
	        <a href="#" class="btn btn-warning btn-sm">스크랩</a>
	        <!-- <a href="#" class="btn btn-warning btn-sm">관심기업</a> -->
	        </p>
	      </div>
	    </div>
	  </div>
	  </c:if>
</c:forEach>
	  
</div>
</div>
</div>
<div class="col-sm-3" style="margin-left:-5px;">
         <c:if test="${empty mId && empty cId}">
         <table style="border:1px solid lightgray;">
         
            <tr>
               <th><input type="button" onclick="location.href='${path}/mLoginForm'"
                  value="개인회원&#13; 로그인" style="padding: 8px 1px;border:1px solid lightgray;" class="btn btn-success btn-lg"></th>
               <th><input type="button" onclick="location.href='${path}/cLoginForm'"
                  value="기업회원&#13; 로그인" style="padding: 8px 1px;border:1px solid lightgray;" class="btn btn-warning btn-lg"></th>
            </tr>
            <tr>
               <th class="text-center" style="padding: 10px 7px;border-right:0;"><a href="${path}/mJoinForm">회원가입</a></th>
               <th class="text-center" style="padding: 0px 7px;border-left:0;"><a href="${path }/mIdfindForm">ID</a>
                  / <a href="${path }/mPassfindForm">PW</a> 찾기</th>
            </tr>
         </table>
         </c:if>
         <c:if test="${not empty mId && mId ne 'master'}">
         
         <table style="text-align: center;border:1px solid lightgray;">
            <tr height="130px">
               <td><img src="${path}/images/Sample_men.PNG" height="100" style="margin-left:10px;"></td>
               <td rowspan="2">
               <button onclick="location.href='${path}/rsmList'" class="btn btn-md btn-primary" style="width:110px;margin-bottom:6px;">이력서 보기</button>
               <button onclick="location.href='${path}/attentionList'" class="btn btn-md btn-warning" style="width:110px;">관심 기업</button></td>
            <tr>
            <tr height="30px">
               <td>${mId }님</td>
            </tr>
           
         </table>
         
         </c:if>
         <c:if test="${not empty cId && cId ne 'master'}">
         <table style="text-align: center;border:1px solid lightgray;">
            <tr height="130px">
               <td><img src="${path}/images/Sample_men.PNG" height="100" style="margin-left:10px;"></td>
               <td rowspan="2">
               <button onclick="location.href='${path}/allApplicant?companyCode=${companyCode}'" class="btn btn-md btn-primary" style="width:110px;margin-bottom:6px;">지원자 관리</button>
               <button onclick="location.href='${path}/allJobpost?companyCode=${companyCode}'" class="btn btn-md btn-warning" style="width:110px;">공고보기</button></td>
            <tr>
            <tr height="30px">
               <td>${cId}님</td>
            </tr>
         </table>
         </c:if>
           <c:if test="${mId eq 'master' || cId eq 'master'}">
         <table style="text-align: center;border:1px solid lightgray;">
            <tr height="130px">
               <td><img src="${path}/resources/Sample_men.PNG" height="100" style="margin-left:10px;"></td>
               <td rowspan="2">
               <button onclick="location.href='${path}/mList'" class="btn btn-md btn-primary" style="width:110px;margin-bottom:6px;">개인회원 관리</button>
               <button onclick="location.href='${path}/cList'" class="btn btn-md btn-warning" style="width:110px;">기업회원 관리</button></td>
            <tr>
            <tr height="30px">
               <td>관리자님</td>
            </tr>
         </table>
         </c:if>
			<div style="margin-top:10px;text-align:center; width:273px;border:1px solid lightgray;">
         <div style="border-bottom:1px solid lightgray; padding: 8px;font-size:19px;">
         조회수 <b style="color:gold">BEST</b> 공고
         </div>
         <c:forEach var="best" items="${list}" varStatus="t">
         <c:if test="${best.jobPostCode>1000 }">
         <div style="text-align:left;margin-left:25%;"><a href="${path}/jobpost/${best.jobPostCode}/${pageNum}" target="_blank" style="color:black;font-size:16px;">${t.index+1}. ${best.cName}</a></div>
         </c:if>
         </c:forEach>
         
         </div>
		</div>
	
<div class="col-sm-12" style="border-top:1px solid #bbbbbb;padding-top:20px; margin-top:20px;">
	<c:if test="${empty list }">
	<div style="width:100%;height:100%;font-size:xx-large;">데이터가 없습니다</div>
</c:if>
<c:if test="${not empty list}">
	<c:forEach var="job" items="${list}">
	<div class="col-sm-6 col-md-3">
    <div class="thumbnail">
      <img src="${path}/images/${job.cLogo}" alt="이미지" style="width:244px;height:100px;">
      <div class="caption">
        <h6><a href="${path}/companyInfo?companyCode=${job.companyCode}">${job.cName}</a></h6>
        <p class="jobpostSubject"><a href="${path}/jobpost?jobPostCode=${job.jobPostCode}">${job.jSubject}</a></p>
        <p>
        <a href="${path}/jobpost/${job.jobPostCode}/${pageNum}" target="_blank" class="btn btn-info btn-sm">지원하기</a>
        <a href="#" class="btn btn-warning btn-sm">스크랩</a>
        <!-- <a href="#" class="btn btn-warning btn-sm">관심기업</a> -->
        </p>
      </div>
    </div>
  </div>
  </c:forEach>
  </c:if>
  <div class="col-sm-12 text-center">
  <nav>
	  <ul class="pagination">
	    <c:if test="${pb.startPage > pb.pagePerBlock}">
			<li><a href="${path}/main/pageNum/1?search=${jobpost.search}&searchKeyword=${jobpost.searchKeyword}">
					<span class="glyphicon glyphicon-backward"></span>
				</a></li>
			<li><a href="${path}/main/pageNum/${pb.startPage - 1}?search=${jobpost.search}&searchKeyword=${jobpost.searchKeyword}">
					<span class="glyphicon glyphicon-triangle-left"></span>
				</a></li>
		</c:if>
		<c:forEach var="i" begin="${pb.startPage}" end="${pb.endPage }">
			<c:if test="${i==pb.currentPage}">
				<li class="active"><a href="${path}/main/pageNum/${i}?search=${jobpost.search}&searchKeyword=${jobpost.searchKeyword}">${i}</a></li>
			</c:if>
			<c:if test="${i!=pb.currentPage}">
				<li><a href="${path}/main/pageNum/${i}?search=${jobpost.search}&searchKeyword=${jobpost.searchKeyword}">${i}</a></li>
			</c:if>		
		</c:forEach>
		<c:if test="${pb.endPage < pb.totalPage}">
			<li><a href="${path}/main/pageNum/${pb.endPage + 1}?search=${jobpost.search}&searchKeyword=${jobpost.searchKeyword}">
					<span class="glyphicon glyphicon-triangle-right"></span>
				</a></li>
			<li><a href="${path}/main/pageNum/${pb.totalPage}?search=${jobpost.search}&searchKeyword=${jobpost.searchKeyword}">
					<span class="glyphicon glyphicon-forward"></span>
				</a></li>
		</c:if>
	  </ul>
	</nav>
	</div>
</div>
</div>
</body>
</html>