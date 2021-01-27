<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../scr.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="insertJobPost" method="post">
	<h2>채용공고</h2>
<table>
	<caption>인사담당자의 정보를 입력해주세요</caption>
	<tr>
		<th>담당자 성함</th>
		<td><input type="text" name="managerName" required="required" autofocus="autofocus"></td>
	</tr>
	<tr>
		<th>연락처</th>
		<td><input type="tel" name="managerTel" required="required"	pattern="\d{3}-\d{3,4}-\d{4}" placeholder="xxx-xxxx-xxxxx"
		title="전화번호 형식 xxx-xxxx-xxxx"></td>
	</tr>
	<tr>
		<th>이메일</th>
		<td><input type="email" name="managerEmail" required="required"></td>
	</tr>
</table>
<table>
	<caption>어떤 인재를 찾으시나요?</caption>
	<!-- 직종 START -->
	<tr>
		<th>직종</th>
		<td><div id="occup"></div></td>
		<td><a href="#ex2" id="oo" rel="modal:open">수정/추가하기</a>
			<div id="ex2" class="modal">
			<table>
				<tr><td>
				<label for="o0">웹개발</label>
				<input type="checkbox" name="occupation" value="웹개발" id="o0"><p>
				<label for="o1">응용프로그램개발</label>
				<input type="checkbox" name="occupation" value="응용프로그램개발" id="o1"><p>
				<label for="o2">시스템개발</label>
				<input type="checkbox" name="occupation" value="시스템개발" id="o2"><p>
				<label for="o3">서버/네트워크/보안</label>
				<input type="checkbox" name="occupation" value="서버/네트워크/보안" id="o3"><p>
				<label for="o4">ERP/시스템분석/설계</label>
				<input type="checkbox" name="occupation" value="ERP/시스템분석/설계" id="o4"><p>
				<label for="o5">데이터베이스/DBA</label>
				<input type="checkbox" name="occupation" value="데이터베이스/DBA" id="o5"><p>
				<label for="o6">퍼블리싱/UI개발</label>
				<input type="checkbox" name="occupation" value="퍼블리싱/UI개발" id="o6"><p>
				<label for="o7">웹디자인</label>
				<input type="checkbox" name="occupation" value="웹디자인" id="o7"><p>
				<label for="o8">웹기획</label>
				<input type="checkbox" name="occupation" value="웹기획" id="o8"><p>
				<label for="o9">웹마스터/QA/테스터</label>
				<input type="checkbox" name="occupation" value="웹마스터/QA/테스터" id="o9"><p>
				<label for="o10">컨텐츠/사이트운영</label>
				<input type="checkbox" name="occupation" value="컨텐츠/사이트운영" id="o10"><p>
				<label for="o11">게임</label>
				<input type="checkbox" name="occupation" value="게임" id="o11"><p>
				<label for="o12">인공지능(AI)/빅데이터</label>
				<input type="checkbox" name="occupation" value="인공지능(AI)/빅데이터" id="o12"><p>
				<label for="o13">하드웨어/소프트웨어</label>
				<input type="checkbox" name="occupation" value="하드웨어/소프트웨어" id="o13"><p>
				<label for="o14">통신/모바일</label>
				<input type="checkbox" name="occupation" value="통신/모바일" id="o14"><p>
				<label for="o15">IT/디자인/컴퓨터교육</label>
				<input type="checkbox" name="occupation" value="IT/디자인/컴퓨터교육" id="o15"><p>
				</td>
				</tr>
			</table>
				 <a href="#" id="conf1" rel="modal:close">확인</a>
				 <a href="#" id="cancel1" rel="modal:close">닫기</a>
				 <a href="#" id="init1">초기화</a>
			</div>
		</td>
	</tr>
	<!-- 직종 END -->
	<!-- 경력여부 START -->	
	<tr>
		<th>경력</th>
		<td>
			<label for="c0">신입</label>
			<input type="checkbox" name="career" value="신입" id="c0">
			<label for="c1">경력</label>
			<input type="checkbox" name="career" value="경력" id="c1">
			<label for="c2">경력무관</label>
			<input type="checkbox" name="career" value="경력무관" id="c2">
		</td>
	</tr>
	<!-- 경력여부 END -->
	<!-- 고용형태 START -->
	<tr>
		<th>고용형태</th>
		<td>
			<label for="j0">정규직</label>
			<input type="checkbox" name="jobtype" value="정규직" id="j0">
			<label for="c1">계약직</label>
			<input type="checkbox" name="jobtype" value="계약직" id="c1">
			<label for="c2">인턴</label>
			<input type="checkbox" name="jobtype" value="인턴" id="c2">
			<label for="c0">파견직</label>
			<input type="checkbox" name="jobtype" value="파견직" id="c0">
			<label for="c1">도급</label>
			<input type="checkbox" name="jobtype" value="도급" id="c1">
			<label for="c2">프리랜서</label>
			<input type="checkbox" name="jobtype" value="프리랜서" id="c2">
			<label for="c2">아르바이트</label>
			<input type="checkbox" name="jobtype" value="아르바이트" id="c2">
			<label for="c2">연수생/교육생</label>
			<input type="checkbox" name="jobtype" value="연수생/교육생" id="c2">
			<label for="c2">병역특례</label>
			<input type="checkbox" name="jobtype" value="병역특례" id="c2">
			<label for="c2">위촉직/개인사업자</label>
			<input type="checkbox" name="jobtype" value="위촉직/개인사업자" id="c2">
		</td>
	</tr>
	<!-- 고용형태 END -->
	<!-- 모집인원START -->
	<tr>
		<th>모집인원</th>
		<td>
			<input type="radio" id="onoff" name="numOfPeo">
			<label for="onoff">직접입력</label>
    		<input type="text" id="text" name="numOfPeo"/>
			<input type="radio" class="nO" id="n1" name="numOfPeo" value="O명">
			<label for="n1">O명</label>
			<input type="radio" class="nO" id="n2" name="numOfPeo" value="OO명">
			<label for="n2">OO명</label>
			<input type="radio" class="nO" id="n3" name="numOfPeo" value="OOO명">
			<label for="n3">OOO명</label>
		</td>
	</tr>
	<!-- 모집인원END -->
	<!-- 직급/직책 START -->
	<tr>
		<th>직급/직책</th>
		<td><div id="jobs"></div></td>
		<td><a href="#ex1" id="mo" rel="modal:open">수정/추가하기</a>
			<div id="ex1" class="modal">
			<table>
				<tr><td>
				<label for="p0">사원</label>
				<input type="checkbox" name="job" value="사원" id="p0"><p>
				<label for="p1">주임</label>
				<input type="checkbox" name="job" value="주임" id="p1"><p>
				<label for="p2">계장</label>
				<input type="checkbox" name="job" value="계장" id="p2"><p>
				<label for="p3">대리</label>
				<input type="checkbox" name="job" value="대리" id="p3"><p>
				<label for="p4">과장</label>
				<input type="checkbox" name="job" value="과장" id="p4"><p>
				<label for="p5">차장</label>
				<input type="checkbox" name="job" value="차장" id="p5"><p>
				<label for="p6">부장</label>
				<input type="checkbox" name="job" value="부장" id="p6"><p>
				<label for="p7">이사</label>				
				<input type="checkbox" name="job" value="이사" id="p7"><p>
				<label for="p8">상무</label>				
                <input type="checkbox" name="job" value="상무" id="p8"><p>
				<label for="p9">실장</label>
				<input type="checkbox" name="job" value="실장" id="p9"><p>
				</p></td></tr>
				<tr><td>
				<label for="p10">임원</label>
				<input type="checkbox" name="job" value="임원" id="p10"><p>
				<label for="p11">이사</label>
				<input type="checkbox" name="job" value="이사" id="p11"><p>
				<label for="p12">상무</label>
				<input type="checkbox" name="job" value="상무" id="p12"><p>
				<label for="p13">임원</label>
				<input type="checkbox" name="job" value="임원" id="p13"><p>
				<label for="p14">전무</label>				
                <input type="checkbox" name="job" value="전무" id="p14"><p>
				<label for="p15">부사장</label>
				<input type="checkbox" name="job" value="부사장" id="p15"><p>
				<label for="p16">사장</label>
				<input type="checkbox" name="job" value="사장" id="p16"><p>
				<label for="p17">연구원</label>
				<input type="checkbox" name="job" value="연구원" id="p17"><p>
				<label for="p18">주임연구원</label>
				<input type="checkbox" name="job" value="주임연구원" id="p18"><p>
				<label for="p19">선임연구원</label>
				<input type="checkbox" name="job" value="선임연구원" id="p19"><p>
				<label for="p20">책임연구원</label>
				<input type="checkbox" name="job" value="책임연구원" id="p20"><p>
				<label for="p21">수석연구원</label>
				<input type="checkbox" name="job" value="수석연구원" id="p21"><p>
				<label for="p22">연구소장</label>
				<input type="checkbox" name="job" value="연구소장" id="p22"><p>
				</td>
				</tr>
			</table>
				 <a href="#" id="conf" rel="modal:close">확인</a>
				 <a href="#" id="cancel" rel="modal:close">닫기</a>
				 <a href="#" id="init">초기화</a>
			</div>
		</td>
	</tr>
	<!-- 직급/직책 END -->
</table>
<table>
	<caption>지원자격은 어떤것들이 있나요?</caption>
	<!-- 학력 START -->
	<tr>
		<th>학력</th>
		<td>
			<select name="finalEdu">
				<option value="고등학교졸업">고등학교졸업</option>
				<option value="대학졸업(2,3년)이상">대학졸업(2,3년)이상</option>
				<option value="대학졸업(4년)이상">대학졸업(4년)이상</option>
				<option value="석사졸업">석사졸업</option>
				<option value="박사졸업">박사졸업</option>
			</select>
			<label for="f0">졸업예정자 가능</label>
			<input type="checkbox" id="f0" name="finalEdu" value="">
		</td>
	</tr>
	<tr>
		<th>우대조건</th>
		<td>
			
		</td>
	</tr>
	<!-- 학력 END -->
	<!-- 외국어 START -->
	<tr>
		<th>외국어</th>
	<td><div id="langs"></div>
  <div class="dropdown">
  <button type="button" class="dropbtn" onclick="myFunction()">수정/추가하기
    <i class="fa fa-caret-down"></i>
  </button>
  <div class="dropdown-content" id="myDropdown">
<div class="tab">
  <button type="button" class="tablinks" onclick="openLang(event, 'English')" id="defaultOpen">English</button>
  <button type="button" class="tablinks" onclick="openLang(event, 'Japanese')">Japanese</button>
  <button type="button" class="tablinks" onclick="openLang(event, 'Chinese')">Chinese</button>
  <button type="button" class="tablinks" onclick="openLang(event, 'German')">German</button>
  <button type="button" class="tablinks" onclick="openLang(event, 'French')">French</button>
</div>

<div id="English" class="tabcontent">
	<label for="le0">TOEIC</label>
	<input type="checkbox" name="language" value="TOEIC" id="le0"><p>
	<label for="le1">TOEIC(Speaking)</label>
	<input type="checkbox" name="language" value="TOEIC(Speaking)" id="le1"><p>
	<label for="le2">TOEIC Speaking and Writing Tests</label>
	<input type="checkbox" name="language" value="TOEIC Speaking and Writing Tests" id="le2"><p>
	<label for="le3">TOEFL(PBT)</label>
	<input type="checkbox" name="language" value="TOEFL(PBT)" id="le3"><p>
	<label for="le4">TOEFL(iBT)</label>
	<input type="checkbox" name="language" value="TOEFL(iBT)" id="le4"><p>
	<label for="le5">TEPS</label>
	<input type="checkbox" name="language" value="TEPS" id="le5"><p>
	<label for="le6">IELTS</label>
	<input type="checkbox" name="language" value="IELTS" id="le6"><p>
	<label for="le7">G-TELP(GLT)</label>
	<input type="checkbox" name="language" value="G-TELP(GLT)" id="le7"><p>
	<label for="le8">G-TELP(GST)</label>
	<input type="checkbox" name="language" value="G-TELP(GST)" id="le8"><p>
	<label for="le9">FLEX 영어</label>
	<input type="checkbox" name="language" value="FLEX 영어" id="le9"><p>
</div>

<div id="Japanese" class="tabcontent">
	<label for="lj0">JPL</label>
	<input type="checkbox" name="language" value="JPL" id="lj0"><p>
	<label for="lj1">JLPT</label>
	<input type="checkbox" name="language" value="JLPT" id="lj1"><p>
	<label for="lj2">新JLPT</label>
	<input type="checkbox" name="language" value="新JLPT" id="lj2"><p>
	<label for="lj3">JTRA</label>
	<input type="checkbox" name="language" value="JTRA" id="lj3"><p>
	<label for="lj4">NPT</label>
	<input type="checkbox" name="language" value="NPT" id="lj4"><p>
	<label for="lj5">SJPT</label>
	<input type="checkbox" name="language" value="SJPT" id="lj5"><p>
	<label for="lj6">OPIC</label>
	<input type="checkbox" name="language" value="OPIC" id="lj6"><p>
	<label for="lj7">FLEX 일본어</label>
	<input type="checkbox" name="language" value="FLEX 일본어" id="lj7"><p>
</div>

<div id="Chinese" class="tabcontent">
	<label for="lc0">HSK</label>
	<input type="checkbox" name="language" value="HSK" id="lc0"><p>
	<label for="lc1">新HSK</label>
	<input type="checkbox" name="language" value="新HSK" id="lc1"><p>
	<label for="lc2">HSK회화</label>
	<input type="checkbox" name="language" value="HSK회화" id="lc2"><p>
	<label for="lc3">新HSK회화</label>
	<input type="checkbox" name="language" value="新HSK회화" id="lc3"><p>
	<label for="lc4">TSC</label>
	<input type="checkbox" name="language" value="TSC" id="lc4"><p>
	<label for="lc5">OPIc</label>
	<input type="checkbox" name="language" value="OPIc" id="lc5"><p>
	<label for="lc6">BCT</label>
	<input type="checkbox" name="language" value="BCT" id="lc6"><p>
	<label for="lc7">CPT</label>
	<input type="checkbox" name="language" value="CPT" id="lc7"><p>
	<label for="lc8">FLEX 중국어</label>
	<input type="checkbox" name="language" value="FLEX 중국어" id="lc8"><p>
</div>

<div id="German" class="tabcontent">
	<label for="lg0">ZDAF</label>
	<input type="checkbox" name="language" value="ZDAF" id="lg0"><p>
	<label for="lg1">ZMP</label>
	<input type="checkbox" name="language" value="ZMP" id="lg1"><p>
	<label for="lg2">GDS</label>
	<input type="checkbox" name="language" value="GDS" id="lg2"><p>
	<label for="lg3">KDS</label>
	<input type="checkbox" name="language" value="KDS" id="lg3"><p>
	<label for="lg4">DSH</label>
	<input type="checkbox" name="language" value="DSH" id="lg4"><p>
	<label for="lg5">SD1</label>
	<input type="checkbox" name="language" value="SD1" id="lg5"><p>
	<label for="lg6">SD2</label>
	<input type="checkbox" name="language" value="SD2" id="lg6"><p>
	<label for="lg7">CT번역 능력 인정시험 독일어</label>
	<input type="checkbox" name="language" value="CT번역 능력 인정시험 독일어" id="lg7"><p>
	<label for="lg8">FLEX 독일어</label>
	<input type="checkbox" name="language" value="FLEX 독일어" id="lg8"><p>
</div>

<div id="French" class="tabcontent">
	<label for="lf0">DELF</label>
	<input type="checkbox" name="language" value="DELF" id="lf0"><p>
	<label for="lf1">DALF</label>
	<input type="checkbox" name="language" value="DALF" id="lf1"><p>
	<label for="lf2">FLEX프랑스어</label>
	<input type="checkbox" name="language" value="FLEX프랑스어" id="lf2"><p>
</div>
	<a id="conf2">확인</a>
	<a id="cancel2">닫기</a>
	<a id="init2">초기화</a>
  </div>
  </div>
		</td>
	</tr>
	<!-- 외국어 END -->
</table>
</form>
</body>
</html>