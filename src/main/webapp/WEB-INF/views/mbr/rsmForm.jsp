<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="rsmFormscr.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이력서 등록</title>
<style type="text/css">@import url("resources/rsmFormcss.css");</style>

</head>
<body>
<div class="container" style="padding-top: 50px;">
		<c:import url="../Mypagenav.jsp"></c:import>
</div>
	<div class="container">

		<span id="brr"></span>
		<form action="rsmInsert" method="post" enctype="multipart/form-data">
			<input style="font-size: 25px; margin-bottom: 10px" size="60"
				type="text" name="rSubject" required="required"
				placeholder="기업에게 나에 대해 알려줍시다.">
			<div class="all">
			<div class="content">
				<h3>인적사항</h3>
				<table>
					<tr>
						<td><input type="text" name="rName" placeholder="이름"
							size="15"></td>
						<td><input type="date" name="rBirth" placeholder="생년월일"
							size="15"></td>

						<td><input type="email" name="rEmail" placeholder="이메일"
							size="15"></td>
						<td><input type="text" name="rTel" placeholder="휴대폰번호"
							size="15" height="3"></td>
						<td rowspan="2"><label for="ex_file" id="upload">사진
								업로드</label> <input id="ex_file" type="file" name="rPicture"></td>

					</tr>
					<tr>
						<td colspan="2"><input onclick="execDaumPostcode()" type="text"
							name="address" id="address" placeholder="주소" size="35"></td>
						<td><input type="text" id="detailAddress"
							name="detailAddress" placeholder="상세주소" size="15"></td>
						<td><select name="rGender" style="width: 100px;">
								<option value="">성별</option>
								<option value="f">여성</option>
								<option value="m">남성</option>
						</select>
						<select name="rMilitary" style="width: 100px;">
								<option value="">병역</option>
								<option value="n">미필</option>
								<option value="y">군필</option>
								<option value="x">해당없음</option>
						</select></td>
					</tr>
				</table>
			</div>
			<div class="content">
				<h3>학력</h3>
				<table>
					<caption>
						고등학교<br> <input style="text-align: right;" type="checkbox"
							name="rHighname" value="ged">검정고시 졸업
					</caption>
					<tr>
						<td><input type="text" name="rHighname" placeholder="학교명"
							size="40"></td>
						<td><input type="date" name="rHighadmi" placeholder="입학년월"
							size="10"><input type="date" name="rHighgradu"
							placeholder="졸업년월" size="10"></td>
						<td><select name="rHighmajor" style="width: 150px;">
								<option value="">전공 계열</option>
								<option value="이과계열">이과계열</option>
								<option value="문과계열">문과계열</option>
								<option value="전문(실업)계">전문(실업)계</option>
								<option value="예체능계">예체능계</option>
								<option value="특성화/마이스터">특성화/마이스터</option>
						</select></td>
					</tr>
				</table>
				<table>
					<caption>대학교</caption>
					<tr>
						<td><select name="rUnidivi">
								<option value="">대학구분</option>
								<option value="대학교(4년)">대학교(4년)</option>
								<option value="대학교(2/3년)">대학교(2/3년)</option>
						</select></td>
						<td><input type="text" name="rUniname" placeholder="학교명"
							size="20"></td>
						<td><input type="date" name="rUniadmi" placeholder="입학년월"
							size="10"><input type="date" name="rUnigradu"
							placeholder="졸업년월" size="10"></td>
					</tr>
					<tr>
						<td colspan="2"><input type="text" name="rUnimajor"
							placeholder="전공과목" size="35"></td>
						<td><input type="text" name="rUnicredit" placeholder="학점"
							size="10"> <input type="radio" name="rUnitime" value="a">주간
							<input type="radio" name="rUnitime" value="p">야간</td>
					</tr>
					<tr>
						<td colspan="3" style="text-align: center;"><input
							type="button" onclick="Uniminor()" value="다른 전공 +"> <input
							type="button" onclick="Unithesis()" value="졸업작품 +"></td>
					</tr>
				</table>
				<input type="hidden" id="rUniminor" name="rUniminor"
					placeholder="부전공과목" size="25"> <input type="hidden"
					id="rUnithesis" name=rUnithesis placeholder="졸업작품&졸업논문" size="50">
			</div>
			<div class="content" id="career">
				<h3>경력</h3>
				<input type="button" value="신입" onclick="hidecr()"><input
					type="button" onclick="entercr()" value="경력"> <input
					type="hidden" name=rCareer id="rCareer">
				<table id="crcontent" style="display: none;">
					<tr>
						<td style="width: 380px;"><input type="text"
							name="rCompanyname" placeholder="회사명" size="35"></td>
						<td style="width: 300px;"><input type="date"
							name="rWorkstart" placeholder="입사년월" size="10"><input
							type="date" name="rWorkend" placeholder="퇴사년월" size="10"></td>
						<td><input type="text" name="rSal" placeholder="연봉" size="10"><label>만원</label></td>
					</tr>
					<tr>
						<td colspan="3">
							<h5 onclick="plusposi()">직급 선택</h5>
							<div id="psmodal" class="positionModal" style="display: none">
								<div class="modal-content">
									<table id="posi">
										<tr>
											<td><input type="radio" name="rPosition" value="인턴/수습">인턴/수습</td>
											<td><input type="radio" name="rPosition" value="사원">사원</td>
											<td><input type="radio" name="rPosition" value="주임">주임
											</td>
											<td><input type="radio" name="rPosition" value="계장">계장</td>
											<td><input type="radio" name="rPosition" value="대리">대리</td>
										</tr>
										<tr>
											<td><input type="radio" name="rPosition" value="과장">과장</td>
											<td><input type="radio" name="rPosition" value="차장">차장</td>
											<td><input type="radio" name="rPosition" value="부장">부장</td>
											<td><input type="radio" name="rPosition" value="이사">이사</td>
											<td><input type="radio" name="rPosition" value="상무">상무</td>
										</tr>
										<tr>
											<td><input type="radio" name="rPosition" value="전무">전무</td>
											<td><input type="radio" name="rPosition" value="부사장">부사장</td>
											<td><input type="radio" name="rPosition" value="사장">사장</td>
											<td><input type="radio" name="rPosition" value="임원">임원</td>
											<td><input type="radio" name="rPosition" value="연구원">연구원</td>
										</tr>
										<tr>
											<td><input type="radio" name="rPosition" value="주임연구원">주임연구원</td>
											<td><input type="radio" name="rPosition" value="선임연구원">선임연구원</td>
											<td><input type="radio" name="rPosition" value="책임연구원">책임연구원</td>
											<td><input type="radio" name="rPosition" value="수석연구원">수석연구원</td>
											<td><input type="radio" name="rPosition" value="연구소장">연구소장</td>
										</tr>
									</table>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-primary"
										onclick="closePsModal();">확인</button>
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<h5 onclick="plustype()">직종 선택</h5>
							<div id="typemodal" class="typeModal" style="display: none">
								<div class="modal-content">
									<table id="type">
										<tr>
											<td><input type="radio" name="rJobtype" value="웹개발">웹개발</td>
											<td><input type="radio" name="rJobtype" value="응용프로그램개발">응용프로그램
												개발</td>
											<td><input type="radio" name="rJobtype" value="시스템개발">시스템개발
											</td>
											<td><input type="radio" name="rJobtype"
												value="서버/네트워크/보안">서버/네트워크/보안</td>
										</tr>
										<tr>
											<td><input type="radio" name="rJobtype"
												value="ERP/시스템분석/설계">ERP/시스템분석/설계</td>
											<td><input type="radio" name="rJobtype"
												value="데이터베이스/DBA">데이터베이스/DBA</td>
											<td><input type="radio" name="rJobtype"
												value="퍼블리싱/UI개발">퍼블리싱/UI개발</td>
											<td><input type="radio" name="rJobtype" value="웹디자인">웹디자인</td>
										</tr>
										<tr>
											<td><input type="radio" name="rJobtype" value="웹기획/PM">웹기획/PM</td>
											<td><input type="radio" name="rJobtype"
												value="웹마스터/QA/테스터">웹마스터/QA/테스터</td>
											<td><input type="radio" name="rJobtype"
												value="컨텐츠/사이트운영">컨텐츠/사이트운영</td>
											<td><input type="radio" name="rJobtype" value="게임/Game">게임/Game</td>
										</tr>
										<tr>
											<td><input type="radio" name="rJobtype"
												value="인공지능(AI)/빅데이터">인공지능(AI)/빅데이터</td>
											<td><input type="radio" name="rJobtype"
												value="하드웨어/소프트웨어">하드웨어/소프트웨어</td>
											<td><input type="radio" name="rJobtype" value="통신/모바일">통신/모바일</td>
											<td><input type="radio" name="rJobtype"
												value="IT/디자인/컴퓨터교육">IT/디자인/컴퓨터교육</td>
										</tr>
									</table>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-primary"
										onclick="closeTyModal();">확인</button>
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<td colspan="3"><textarea rows="3" name="rCharge" cols="100"
								placeholder="담당하신 업무와 성과에 대해 간단명료하게 적어주세요"></textarea>
					<tr>
						<td style="width: 200px;"><input size="20" type="text"
							name="rDept" placeholder="근무 부서"></td>
						<td colspan="2"><input type="text" name="rResignation"
							placeholder="퇴사 사유" size="60"></td>
					</tr>
					<tr>
						<td colspan="3" style="text-align: center"><input
							id="addcareer" type="button" value="추가" onclick="pluscr()"></td>
					</tr>
				</table>
			</div>
			<div class="content" id="license">
				<h3>자격증</h3>
				<table id="enterli">
				</table>
			</div>
			<div class="content" id="award">
				<h3>수상</h3>
				<table id="enteraw">
				</table>
			</div>
			<div class="content" id="portfolio">
				<h3>포토폴리오</h3>
				<table id="enterport">
				</table>
			</div>
			<div class="content" id="self">
				<h3>자기소개서</h3>
				<table id="enterself">
				</table>
			</div>
			<div class="content" id="wish">
				<h3>희망근무조건</h3>
				<table>
					<tr>
						<td style="width: 420px"><select name="rWishjobtype"
							style="width: 400px;">
								<option value="">고용형태</option>
								<option value="정규직">정규직</option>
								<option value="계약직">계약직</option>
								<option value="병역특례">병역특례</option>
								<option value="프리랜서">프리랜서</option>
								<option value="헤드헌팅">헤드헌팅</option>
								<option value="파견대행">파견대행</option>
								<option value="인턴직">인턴직</option>
						</select></td>
						<td><input type="text" name="rWishsal" placeholder="희망연봉"
							style="width: 200px"></td>
					</tr>
					<tr><th>근무지역</th></tr>
				<tr><td colspan="2"><div id="wa"></div>
							<div class="dropdown_wa"><button type="button" class="dropbtn_wa"onclick="myFunction_wa()">
									수정/추가하기 <i class="fa fa-caret-down"></i></button>
								<div class="dropdown_wa-content" id="myDropdown_wa">
									<div class="tab">
										<button type="button" class="tablinks_wa"
											onclick="openDropdown_wa(event, 'Seoul')" id="defaultOpen_wa">서울</button>
										<button type="button" class="tablinks_wa"
											onclick="openDropdown_wa(event, 'Gyeonggi')">경기</button>
										<button type="button" class="tablinks_wa"
											onclick="openDropdown_wa(event, 'Incheon')">인천</button>
										<button type="button" class="tablinks_wa"
											onclick="openDropdown_wa(event, 'Daejeon')">대전</button>
										<button type="button" class="tablinks_wa"
											onclick="openDropdown_wa(event, 'Sejong')">세종</button>
										<button type="button" class="tablinks_wa"
											onclick="openDropdown_wa(event, 'Chungnam')">충남</button>
										<button type="button" class="tablinks_wa"
											onclick="openDropdown_wa(event, 'Chungbuk')">충북</button>
										<button type="button" class="tablinks_wa"
											onclick="openDropdown_wa(event, 'Gwangju')">광주</button>
										<button type="button" class="tablinks_wa"
											onclick="openDropdown_wa(event, 'Jeonnam')">전남</button>
										<button type="button" class="tablinks_wa"
											onclick="openDropdown_wa(event, 'Jeonbuk')">전북</button>
										<button type="button" class="tablinks_wa"
											onclick="openDropdown_wa(event, 'Daegu')">대구</button>
										<button type="button" class="tablinks_wa"
											onclick="openDropdown_wa(event, 'Gyeongbuk')">경북</button>
										<button type="button" class="tablinks_wa"
											onclick="openDropdown_wa(event, 'Busan')">부산</button>
										<button type="button" class="tablinks_wa"
											onclick="openDropdown_wa(event, 'Ulsan')">울산</button>
										<button type="button" class="tablinks_wa"
											onclick="openDropdown_wa(event, 'Gyeongnam')">경남</button>
										<button type="button" class="tablinks_wa"
											onclick="openDropdown_wa(event, 'Kangwon')">강원</button>
										<button type="button" class="tablinks_wa"
											onclick="openDropdown_wa(event, 'Jeju')">제주</button>
										<button type="button" class="tablinks_wa"
											onclick="openDropdown_wa(event, 'Allarea')">전국</button>
									</div>
									<div id="Seoul" class="tabcontent_wa">
										<label for="wa0">강남구</label> <input type="checkbox"
											name="workarea" value="서울 강남구" id="wa0">
										<p>
											<label for="wa1">강동구</label> <input type="checkbox"
												name="workarea" value="서울 강동구" id="wa1">
										<p>
											<label for="wa2">강북구</label> <input type="checkbox"
												name="workarea" value="서울 강북구" id="wa2">
										<p>
											<label for="wa3">강서구</label> <input type="checkbox"
												name="workarea" value="서울 강서구" id="wa3">
										<p>
											<label for="wa4">관악구</label> <input type="checkbox"
												name="workarea" value="서울 관악구" id="wa4">
										<p>
											<label for="wa5">광진구</label> <input type="checkbox"
												name="workarea" value="서울 광진구" id="wa5">
										<p>
											<label for="wa6">구로구</label> <input type="checkbox"
												name="workarea" value="서울 구로구" id="wa6">
										<p>
											<label for="wa7">금천구</label> <input type="checkbox"
												name="workarea" value="서울 금천구" id="wa7">
										<p>
											<label for="wa8">노원구</label> <input type="checkbox"
												name="workarea" value="서울 노원구" id="wa8">
										<p>
											<label for="wa10">도봉구</label> <input type="checkbox"
												name="workarea" value="서울 도봉구" id="wa10">
										<p>
											<label for="wa11">동대문구</label> <input type="checkbox"
												name="workarea" value="서울 동대문구" id="wa11">
										<p>
											<label for="wa12">동작구</label> <input type="checkbox"
												name="workarea" value="서울 동작구" id="wa12">
										<p>
											<label for="wa13">마포구</label> <input type="checkbox"
												name="workarea" value="서울 마포구" id="wa13">
										<p>
											<label for="wa14">서대문구</label> <input type="checkbox"
												name="workarea" value="서울 서대문구" id="wa14">
										<p>
											<label for="wa15">서초구</label> <input type="checkbox"
												name="workarea" value="서울 서초구" id="wa15">
										<p>
											<label for="wa16">성동구</label> <input type="checkbox"
												name="workarea" value="서울 성동구" id="wa16">
										<p>
											<label for="wa17">성북구</label> <input type="checkbox"
												name="workarea" value="서울 성북구" id="wa17">
										<p>
											<label for="wa18">송파구</label> <input type="checkbox"
												name="workarea" value="서울 송파구" id="wa18">
										<p>
											<label for="wa19">영등포구</label> <input type="checkbox"
												name="workarea" value="서울 영등포구" id="wa19">
										<p>
											<label for="wa20">용산구</label> <input type="checkbox"
												name="workarea" value="서울 용산구" id="wa20">
										<p>
											<label for="wa21">은평구</label> <input type="checkbox"
												name="workarea" value="서울 은평구" id="wa21">
										<p>
											<label for="wa22">종로구</label> <input type="checkbox"
												name="workarea" value="서울 종로구" id="wa22">
										<p>
											<label for="wa23">중구</label> <input type="checkbox"
												name="workarea" value="서울 중구" id="wa23">
										<p>
											<label for="wa24">중랑구</label> <input type="checkbox"
												name="workarea" value="서울 중랑구" id="wa24">
										<p>
											<label for="wa227">전체</label> <input type="checkbox"
												name="workarea" value="서울 전체" id="wa227">
										<p>
									</div>

									<div id="Gyeonggi" class="tabcontent_wa">
										<label for="wa25">가평군</label> <input type="checkbox"
											name="workarea" value="경기 가평군" id="wa25">
										<p>
											<label for="wa26">고양</label> <input type="checkbox"
												name="workarea" value="경기 고양" id="wa26">
										<p>
											<label for="wa27">과천</label> <input type="checkbox"
												name="workarea" value="경기 과천" id="wa27">
										<p>
											<label for="wa28">광명</label> <input type="checkbox"
												name="workarea" value="경기 광명" id="wa28">
										<p>
											<label for="wa29">광주</label> <input type="checkbox"
												name="workarea" value="경기 광주" id="wa29">
										<p>
											<label for="wa30">구리</label> <input type="checkbox"
												name="workarea" value="경기 구리" id="wa30">
										<p>
											<label for="wa31">군포</label> <input type="checkbox"
												name="workarea" value="경기 군포" id="wa31">
										<p>
											<label for="wa32">김포</label> <input type="checkbox"
												name="workarea" value="경기 김포" id="wa32">
										<p>
											<label for="wa33">남양주</label> <input type="checkbox"
												name="workarea" value="경기 남양주" id="wa33">
										<p>
											<label for="wa34">동두천</label> <input type="checkbox"
												name="workarea" value="경기 동두천" id="wa34">
										<p>
											<label for="wa35">부천</label> <input type="checkbox"
												name="workarea" value="경기 부천" id="wa35">
										<p>
											<label for="wa36">성남</label> <input type="checkbox"
												name="workarea" value="경기 성남" id="wa36">
										<p>
											<label for="wa37">수원</label> <input type="checkbox"
												name="workarea" value="경기 수원" id="wa37">
										<p>
											<label for="wa38">시흥</label> <input type="checkbox"
												name="workarea" value="경기 시흥" id="wa38">
										<p>
											<label for="wa39">안산</label> <input type="checkbox"
												name="workarea" value="경기 안산" id="wa39">
										<p>
											<label for="wa40">안성</label> <input type="checkbox"
												name="workarea" value="경기 안성" id="wa40">
										<p>
											<label for="wa41">안양</label> <input type="checkbox"
												name="workarea" value="경기 안양" id="wa41">
										<p>
											<label for="wa42">양주</label> <input type="checkbox"
												name="workarea" value="경기 양주" id="wa42">
										<p>
											<label for="wa43">양평군</label> <input type="checkbox"
												name="workarea" value="경기 양평군" id="wa43">
										<p>
											<label for="wa44">여주</label> <input type="checkbox"
												name="workarea" value="경기 여주" id="wa44">
										<p>
											<label for="wa45">연천군</label> <input type="checkbox"
												name="workarea" value="경기 연천군" id="wa45">
										<p>
											<label for="wa46">오산</label> <input type="checkbox"
												name="workarea" value="경기 오산" id="wa46">
										<p>
											<label for="wa47">용인</label> <input type="checkbox"
												name="workarea" value="경기 용인" id="wa47">
										<p>
											<label for="wa48">의왕</label> <input type="checkbox"
												name="workarea" value="경기 의왕" id="wa48">
										<p>
											<label for="wa49">이천</label> <input type="checkbox"
												name="workarea" value="경기 이천" id="wa49">
										<p>
											<label for="wa50">파주</label> <input type="checkbox"
												name="workarea" value="경기 파주" id="wa50">
										<p>
											<label for="wa51">평택</label> <input type="checkbox"
												name="workarea" value="경기 평택" id="wa51">
										<p>
											<label for="wa52">포천</label> <input type="checkbox"
												name="workarea" value="경기 포천" id="wa52">
										<p>
											<label for="wa53">하남</label> <input type="checkbox"
												name="workarea" value="경기 하남" id="wa53">
										<p>
											<label for="wa54">화성</label> <input type="checkbox"
												name="workarea" value="경기 화성" id="wa54">
										<p>
											<label for="wa228">전체</label> <input type="checkbox"
												name="workarea" value="경기 전체" id="wa228">
										<p>
									</div>

									<div id="Incheon" class="tabcontent_wa">
										<label for="wa55">강화군</label> <input type="checkbox"
											name="workarea" value="인천 강화군" id="wa55">
										<p>
											<label for="wa56">계양구</label> <input type="checkbox"
												name="workarea" value="인천 계양구" id="wa56">
										<p>
											<label for="wa57">미추홀구</label> <input type="checkbox"
												name="workarea" value="인천 미추홀구" id="wa57">
										<p>
											<label for="wa58">남동구</label> <input type="checkbox"
												name="workarea" value="인천 남동구" id="wa58">
										<p>
											<label for="wa59">동구</label> <input type="checkbox"
												name="workarea" value="인천 동구" id="wa59">
										<p>
											<label for="wa60">부평구</label> <input type="checkbox"
												name="workarea" value="인천 부평구" id="wa60">
										<p>
											<label for="wa61">서구</label> <input type="checkbox"
												name="workarea" value="인천 서구" id="wa61">
										<p>
											<label for="wa62">연수구</label> <input type="checkbox"
												name="workarea" value="인천 연수구" id="wa62">
										<p>
											<label for="wa63">옹진군</label> <input type="checkbox"
												name="workarea" value="인천 옹진군" id="wa63">
										<p>
											<label for="wa64">중구</label> <input type="checkbox"
												name="workarea" value="인천 중구" id="wa64">
										<p>
											<label for="wa229">전체</label> <input type="checkbox"
												name="workarea" value="인천 전체" id="wa229">
										<p>
									</div>

									<div id="Daejeon" class="tabcontent_wa">
										<label for="wa65">대덕구</label> <input type="checkbox"
											name="workarea" value="대전 대덕구" id="wa65">
										<p>
											<label for="wa66">동구</label> <input type="checkbox"
												name="workarea" value="대전 동구" id="wa66">
										<p>
											<label for="wa67">서구</label> <input type="checkbox"
												name="workarea" value="대전 서구" id="wa67">
										<p>
											<label for="wa68">유성구</label> <input type="checkbox"
												name="workarea" value="대전 유성구" id="wa68">
										<p>
											<label for="wa69">중구</label> <input type="checkbox"
												name="workarea" value="대전 중구" id="wa69">
										<p>
											<label for="wa230">전체</label> <input type="checkbox"
												name="workarea" value="대전 전체" id="wa230">
										<p>
									</div>

									<div id="Sejong" class="tabcontent_wa">
										<label for="wa70">세종</label> <input type="checkbox"
											name="workarea" value="세종 전체" id="wa70">
										<p>
									</div>

									<div id="Chungnam" class="tabcontent_wa">
										<label for="wa71">공주</label> <input type="checkbox"
											name="workarea" value="충남 공주" id="wa71">
										<p>
											<label for="wa72">금산군</label> <input type="checkbox"
												name="workarea" value="충남 금산군" id="wa72">
										<p>
											<label for="wa73">논산시</label> <input type="checkbox"
												name="workarea" value="충남 논산시" id="wa73">
										<p>
											<label for="wa74">당진시</label> <input type="checkbox"
												name="workarea" value="충남 당진시" id="wa74">
										<p>
											<label for="wa75">보령시</label> <input type="checkbox"
												name="workarea" value="충남 보령시" id="wa75">
										<p>
											<label for="wa76">부여군</label> <input type="checkbox"
												name="workarea" value="충남 부여군" id="wa76">
										<p>
											<label for="wa77">서산시</label> <input type="checkbox"
												name="workarea" value="충남 서산시" id="wa77">
										<p>
											<label for="wa78">아산시</label> <input type="checkbox"
												name="workarea" value="충남 아산시" id="wa78">
										<p>
											<label for="wa79">예산군</label> <input type="checkbox"
												name="workarea" value="충남 예산군" id="wa79">
										<p>
											<label for="wa80">천안시</label> <input type="checkbox"
												name="workarea" value="충남 천안시" id="wa80">
										<p>
											<label for="wa81">청양군</label> <input type="checkbox"
												name="workarea" value="충남 청양군" id="wa81">
										<p>
											<label for="wa82">태안군</label> <input type="checkbox"
												name="workarea" value="충남 태안군" id="wa82">
										<p>
											<label for="wa83">홍성군</label> <input type="checkbox"
												name="workarea" value="충남 홍성군" id="wa83">
										<p>
											<label for="wa84">계룡시</label> <input type="checkbox"
												name="workarea" value="충남 계룡시" id="wa84">
										<p>
											<label for="wa231">전체</label> <input type="checkbox"
												name="workarea" value="충남 전체" id="wa231">
										<p>
									</div>

									<div id="Chungbuk" class="tabcontent_wa">
										<label for="wa85">괴산군</label> <input type="checkbox"
											name="workarea" value="충북 괴산군" id="wa85">
										<p>
											<label for="wa86">단양군</label> <input type="checkbox"
												name="workarea" value="충북 단양군" id="wa86">
										<p>
											<label for="wa87">보은군</label> <input type="checkbox"
												name="workarea" value="충북 보은군" id="wa87">
										<p>
											<label for="wa88">영동군</label> <input type="checkbox"
												name="workarea" value="충북 영동군" id="wa88">
										<p>
											<label for="wa89">옥천군</label> <input type="checkbox"
												name="workarea" value="충북 옥천군" id="wa89">
										<p>
											<label for="wa90">음성군</label> <input type="checkbox"
												name="workarea" value="충북 음성군" id="wa90">
										<p>
											<label for="wa91">제천시</label> <input type="checkbox"
												name="workarea" value="충북 제천시" id="wa91">
										<p>
											<label for="wa92">진천군</label> <input type="checkbox"
												name="workarea" value="충북 진천군" id="wa92">
										<p>
											<label for="wa93">청주시</label> <input type="checkbox"
												name="workarea" value="충북 청주시" id="wa93">
										<p>
											<label for="wa94">충주시</label> <input type="checkbox"
												name="workarea" value="충북 충주시" id="wa94">
										<p>
											<label for="wa95">증평군</label> <input type="checkbox"
												name="workarea" value="충북 증평군" id="wa95">
										<p>
											<label for="wa232">전체</label> <input type="checkbox"
												name="workarea" value="충북 전체" id="wa232">
										<p>
									</div>

									<div id="Gwangju" class="tabcontent_wa">
										<label for="wa96">광산구</label> <input type="checkbox"
											name="workarea" value="광주 광산구" id="wa96">
										<p>
											<label for="wa97">남구</label> <input type="checkbox"
												name="workarea" value="광주 남구" id="wa97">
										<p>
											<label for="wa98">동구</label> <input type="checkbox"
												name="workarea" value="광주 동구" id="wa98">
										<p>
											<label for="wa99">북구</label> <input type="checkbox"
												name="workarea" value="광주 북구" id="wa99">
										<p>
											<label for="wa100">서구</label> <input type="checkbox"
												name="workarea" value="광주 서구" id="wa100">
										<p>
											<label for="wa233">전체</label> <input type="checkbox"
												name="workarea" value="광주 전체" id="wa233">
										<p>
									</div>

									<div id="Jeonnam" class="tabcontent_wa">
										<label for="wa101">강진군</label> <input type="checkbox"
											name="workarea" value="전남 강진군" id="wa101">
										<p>
											<label for="wa102">고흥군</label> <input type="checkbox"
												name="workarea" value="전남 고흥군" id="wa102">
										<p>
											<label for="wa103">곡성군</label> <input type="checkbox"
												name="workarea" value="전남 곡성군" id="wa103">
										<p>
											<label for="wa104">광양시</label> <input type="checkbox"
												name="workarea" value="전남 광양시" id="wa104">
										<p>
											<label for="wa105">구례군</label> <input type="checkbox"
												name="workarea" value="전남 구례군" id="wa105">
										<p>
											<label for="wa106">나주시</label> <input type="checkbox"
												name="workarea" value="전남 나주시" id="wa106">
										<p>
											<label for="wa107">목포시</label> <input type="checkbox"
												name="workarea" value="전남 목포시" id="wa107">
										<p>
											<label for="wa108">무안군</label> <input type="checkbox"
												name="workarea" value="전남 무안군" id="wa108">
										<p>
											<label for="wa109">보성군</label> <input type="checkbox"
												name="workarea" value="전남 보성군" id="wa109">
										<p>
											<label for="wa110">순천시</label> <input type="checkbox"
												name="workarea" value="전남 순천시" id="wa110">
										<p>
											<label for="wa111">신안군</label> <input type="checkbox"
												name="workarea" value="전남 신안군" id="wa111">
										<p>
											<label for="wa112">여수시</label> <input type="checkbox"
												name="workarea" value="전남 여수시" id="wa112">
										<p>
											<label for="wa113">영광군</label> <input type="checkbox"
												name="workarea" value="전남 영광군" id="wa113">
										<p>
											<label for="wa114">영암군</label> <input type="checkbox"
												name="workarea" value="전남 영암군" id="wa114">
										<p>
											<label for="wa115">완도군</label> <input type="checkbox"
												name="workarea" value="전남 완도군" id="wa115">
										<p>
											<label for="wa116">장성군</label> <input type="checkbox"
												name="workarea" value="전남 장성군" id="wa116">
										<p>
											<label for="wa117">장흥군</label> <input type="checkbox"
												name="workarea" value="전남 장흥군" id="wa117">
										<p>
											<label for="wa118">진도군</label> <input type="checkbox"
												name="workarea" value="전남 진도군" id="wa118">
										<p>
											<label for="wa119">함평군</label> <input type="checkbox"
												name="workarea" value="전남 함평군" id="wa119">
										<p>
											<label for="wa120">해남군</label> <input type="checkbox"
												name="workarea" value="전남 해남군" id="wa120">
										<p>
											<label for="wa121">화순군</label> <input type="checkbox"
												name="workarea" value="전남 화순군" id="wa121">
										<p>
											<label for="wa234">전체</label> <input type="checkbox"
												name="workarea" value="전남 전체" id="wa234">
										<p>
									</div>

									<div id="Jeonbuk" class="tabcontent_wa">
										<label for="wa122">고창군</label> <input type="checkbox"
											name="workarea" value="전북 고창군" id="wa122">
										<p>
											<label for="wa123">군산시</label> <input type="checkbox"
												name="workarea" value="전북 군산시" id="wa123">
										<p>
											<label for="wa124">김제시</label> <input type="checkbox"
												name="workarea" value="전북 김제시" id="wa124">
										<p>
											<label for="wa125">남원시</label> <input type="checkbox"
												name="workarea" value="전북 남원시" id="wa125">
										<p>
											<label for="wa126">무주군</label> <input type="checkbox"
												name="workarea" value="전북 무주군" id="wa126">
										<p>
											<label for="wa127">부안군</label> <input type="checkbox"
												name="workarea" value="전북 부안군" id="wa127">
										<p>
											<label for="wa128">순창군</label> <input type="checkbox"
												name="workarea" value="전북 순창군" id="wa128">
										<p>
											<label for="wa129">완주군</label> <input type="checkbox"
												name="workarea" value="전북 완주군" id="wa129">
										<p>
											<label for="wa130">익산시</label> <input type="checkbox"
												name="workarea" value="전북 익산시" id="wa130">
										<p>
											<label for="wa131">임실군</label> <input type="checkbox"
												name="workarea" value="전북 임실군" id="wa131">
										<p>
											<label for="wa132">장수군</label> <input type="checkbox"
												name="workarea" value="전북 장수군" id="wa132">
										<p>
											<label for="wa133">전주시</label> <input type="checkbox"
												name="workarea" value="전북 전주시" id="wa133">
										<p>
											<label for="wa134">정읍시</label> <input type="checkbox"
												name="workarea" value="전북 정읍시" id="wa134">
										<p>
											<label for="wa135">진안군</label> <input type="checkbox"
												name="workarea" value="전북 진안군" id="wa135">
										<p>
											<label for="wa235">전체</label> <input type="checkbox"
												name="workarea" value="전북 전체" id="wa235">
										<p>
									</div>

									<div id="Daegu" class="tabcontent_wa">
										<label for="wa136">남구</label> <input type="checkbox"
											name="workarea" value="대전 남구" id="wa136">
										<p>
											<label for="wa137">달서구</label> <input type="checkbox"
												name="workarea" value="대전 달서구" id="wa137">
										<p>
											<label for="wa138">달성군</label> <input type="checkbox"
												name="workarea" value="대전 달성군" id="wa138">
										<p>
											<label for="wa139">동구</label> <input type="checkbox"
												name="workarea" value="대전 동구" id="wa139">
										<p>
											<label for="wa140">북구</label> <input type="checkbox"
												name="workarea" value="대전 북구" id="wa140">
										<p>
											<label for="wa141">서구</label> <input type="checkbox"
												name="workarea" value="대전 서구" id="wa141">
										<p>
											<label for="wa142">수성구</label> <input type="checkbox"
												name="workarea" value="대전 수성구" id="wa142">
										<p>
											<label for="wa143">중구</label> <input type="checkbox"
												name="workarea" value="대전 중구" id="wa143">
										<p>
											<label for="wa236">전체</label> <input type="checkbox"
												name="workarea" value="대전 전체" id="wa236">
										<p>
									</div>


									<div id="Gyeongbuk" class="tabcontent_wa">
										<label for="wa144">경산시</label> <input type="checkbox"
											name="workarea" value="경북 경산시" id="wa144">
										<p>
											<label for="wa145">경주시</label> <input type="checkbox"
												name="workarea" value="경북 경주시" id="wa145">
										<p>
											<label for="wa146">고령군</label> <input type="checkbox"
												name="workarea" value="경북 고령군" id="wa146">
										<p>
											<label for="wa147">구미시</label> <input type="checkbox"
												name="workarea" value="경북 구미시" id="wa147">
										<p>
											<label for="wa148">군위군</label> <input type="checkbox"
												name="workarea" value="경북 군위군" id="wa148">
										<p>
											<label for="wa149">김천시</label> <input type="checkbox"
												name="workarea" value="경북 김천시" id="wa149">
										<p>
											<label for="wa150">문경시</label> <input type="checkbox"
												name="workarea" value="경북 문경시" id="wa150">
										<p>
											<label for="wa151">봉화군</label> <input type="checkbox"
												name="workarea" value="경북 봉화군" id="wa151">
										<p>
											<label for="wa152">상주시</label> <input type="checkbox"
												name="workarea" value="경북 상주시" id="wa152">
										<p>
											<label for="wa153">성주군</label> <input type="checkbox"
												name="workarea" value="경북 성주군" id="wa153">
										<p>
											<label for="wa154">안동시</label> <input type="checkbox"
												name="workarea" value="경북 안동시" id="wa154">
										<p>
											<label for="wa155">영덕군</label> <input type="checkbox"
												name="workarea" value="경북 영덕군" id="wa155">
										<p>
											<label for="wa156">영양군</label> <input type="checkbox"
												name="workarea" value="경북 영양군" id="wa156">
										<p>
											<label for="wa157">영주시</label> <input type="checkbox"
												name="workarea" value="경북 영주시" id="wa157">
										<p>
											<label for="wa158">영천시</label> <input type="checkbox"
												name="workarea" value="경북 영천시" id="wa158">
										<p>
											<label for="wa159">예천군</label> <input type="checkbox"
												name="workarea" value="경북 예천군" id="wa159">
										<p>
											<label for="wa160">울릉군</label> <input type="checkbox"
												name="workarea" value="경북 울릉군" id="wa160">
										<p>
											<label for="wa161">울진군</label> <input type="checkbox"
												name="workarea" value="경북 울진군" id="wa161">
										<p>
											<label for="wa162">의성군</label> <input type="checkbox"
												name="workarea" value="경북 의성군" id="wa162">
										<p>
											<label for="wa163">청도군</label> <input type="checkbox"
												name="workarea" value="경북 청도군" id="wa163">
										<p>
											<label for="wa164">청송군</label> <input type="checkbox"
												name="workarea" value="경북 청송군" id="wa164">
										<p>
											<label for="wa165">칠곡군</label> <input type="checkbox"
												name="workarea" value="경북 칠곡군" id="wa165">
										<p>
											<label for="wa166">포항시</label> <input type="checkbox"
												name="workarea" value="경북 포항시" id="wa166">
										<p>
											<label for="wa237">전체</label> <input type="checkbox"
												name="workarea" value="경북 전체" id="wa237">
										<p>
									</div>

									<div id="Busan" class="tabcontent_wa">
										<label for="wa167">강서구</label> <input type="checkbox"
											name="workarea" value="부산 강서구" id="wa167">
										<p>
											<label for="wa168">금정구</label> <input type="checkbox"
												name="workarea" value="부산 금정구" id="wa168">
										<p>
											<label for="wa169">기장군</label> <input type="checkbox"
												name="workarea" value="부산 기장군" id="wa169">
										<p>
											<label for="wa170">남구</label> <input type="checkbox"
												name="workarea" value="부산 남구" id="wa170">
										<p>
											<label for="wa171">동구</label> <input type="checkbox"
												name="workarea" value="부산 동구" id="wa171">
										<p>
											<label for="wa172">동래구</label> <input type="checkbox"
												name="workarea" value="부산 동래구" id="wa172">
										<p>
											<label for="wa173">부산진구</label> <input type="checkbox"
												name="workarea" value="부산 부산진구" id="wa173">
										<p>
											<label for="wa174">북구</label> <input type="checkbox"
												name="workarea" value="부산 북구" id="wa174">
										<p>
											<label for="wa175">사상구</label> <input type="checkbox"
												name="workarea" value="부산 사상구" id="wa175">
										<p>
											<label for="wa176">사하구</label> <input type="checkbox"
												name="workarea" value="부산 사하구" id="wa176">
										<p>
											<label for="wa177">서구</label> <input type="checkbox"
												name="workarea" value="부산 서구" id="wa177">
										<p>
											<label for="wa178">수영구</label> <input type="checkbox"
												name="workarea" value="부산 수영구" id="wa178">
										<p>
											<label for="wa179">연제구</label> <input type="checkbox"
												name="workarea" value="부산 연제구" id="wa179">
										<p>
											<label for="wa180">영도구</label> <input type="checkbox"
												name="workarea" value="부산 영도구" id="wa180">
										<p>
											<label for="wa181">중구</label> <input type="checkbox"
												name="workarea" value="부산 중구" id="wa181">
										<p>
											<label for="wa182">해운대구</label> <input type="checkbox"
												name="workarea" value="부산 해운대구" id="wa182">
										<p>
											<label for="wa238">전체</label> <input type="checkbox"
												name="workarea" value="부산 전체" id="wa238">
										<p>
									</div>
									<div id="Ulsan" class="tabcontent_wa">
										<label for="wa183">남구</label> <input type="checkbox"
											name="workarea" value="울산 남구" id="wa183">
										<p>
											<label for="wa184">동구</label> <input type="checkbox"
												name="workarea" value="울산 동구" id="wa184">
										<p>
											<label for="wa185">북구</label> <input type="checkbox"
												name="workarea" value="울산 북구" id="wa185">
										<p>
											<label for="wa186">을주군</label> <input type="checkbox"
												name="workarea" value="울산 을주군" id="wa186">
										<p>
											<label for="wa187">중구</label> <input type="checkbox"
												name="workarea" value="울산 중구" id="wa187">
										<p>
											<label for="wa239">전체</label> <input type="checkbox"
												name="workarea" value="울산 전체" id="wa239">
										<p>
									</div>

									<div id="Gyeongnam" class="tabcontent_wa">
										<label for="wa188">거제시</label> <input type="checkbox"
											name="workarea" value="경남 거제시" id="wa188">
										<p>
											<label for="wa189">거창군</label> <input type="checkbox"
												name="workarea" value="경남 거창군" id="wa189">
										<p>
											<label for="wa190">고성군</label> <input type="checkbox"
												name="workarea" value="경남 고성군" id="wa190">
										<p>
											<label for="wa191">김해시</label> <input type="checkbox"
												name="workarea" value="경남 김해시" id="wa191">
										<p>
											<label for="wa192">남해군</label> <input type="checkbox"
												name="workarea" value="경남 남해군" id="wa192">
										<p>
											<label for="wa193">밀양시</label> <input type="checkbox"
												name="workarea" value="경남 밀양시" id="wa193">
										<p>
											<label for="wa194">사천시</label> <input type="checkbox"
												name="workarea" value="경남 사천시" id="wa194">
										<p>
											<label for="wa195">산청군</label> <input type="checkbox"
												name="workarea" value="경남 산청군" id="wa195">
										<p>
											<label for="wa196">양산시</label> <input type="checkbox"
												name="workarea" value="경남 양산시" id="wa196">
										<p>
											<label for="wa197">의령군</label> <input type="checkbox"
												name="workarea" value="경남 의령군" id="wa197">
										<p>
											<label for="wa198">진주시</label> <input type="checkbox"
												name="workarea" value="경남 진주시" id="wa198">
										<p>
											<label for="wa199">창녕군</label> <input type="checkbox"
												name="workarea" value="경남 창녕군" id="wa199">
										<p>
											<label for="wa200">창원시</label> <input type="checkbox"
												name="workarea" value="경남 창원시" id="wa200">
										<p>
											<label for="wa201">통영시</label> <input type="checkbox"
												name="workarea" value="경남 통영시" id="wa201">
										<p>
											<label for="wa202">하동군</label> <input type="checkbox"
												name="workarea" value="경남 하동군" id="wa202">
										<p>
											<label for="wa203">함안군</label> <input type="checkbox"
												name="workarea" value="경남 함안군" id="wa203">
										<p>
											<label for="wa204">함양군</label> <input type="checkbox"
												name="workarea" value="경남 함양군" id="wa204">
										<p>
											<label for="wa205">합천군</label> <input type="checkbox"
												name="workarea" value="경남 합천군" id="wa205">
										<p>
											<label for="wa240">전체</label> <input type="checkbox"
												name="workarea" value="경남 전체" id="wa240">
										<p>
									</div>

									<div id="Kangwon" class="tabcontent_wa">
										<label for="wa206">강릉시</label> <input type="checkbox"
											name="workarea" value="강원 강릉시" id="wa206">
										<p>
											<label for="wa207">고성군</label> <input type="checkbox"
												name="workarea" value="강원 고성군" id="wa207">
										<p>
											<label for="wa208">동해시</label> <input type="checkbox"
												name="workarea" value="강원 동해시" id="wa208">
										<p>
											<label for="wa209">삼척시</label> <input type="checkbox"
												name="workarea" value="강원 삼척시" id="wa209">
										<p>
											<label for="wa210">속초시</label> <input type="checkbox"
												name="workarea" value="강원 속초시" id="wa210">
										<p>
											<label for="wa211">양구군</label> <input type="checkbox"
												name="workarea" value="강원 양구군" id="wa211">
										<p>
											<label for="wa212">양양군</label> <input type="checkbox"
												name="workarea" value="강원 양양군" id="wa212">
										<p>
											<label for="wa213">영월군</label> <input type="checkbox"
												name="workarea" value="강원 영월군" id="wa213">
										<p>
											<label for="wa214">원주시</label> <input type="checkbox"
												name="workarea" value="강원 원주시" id="wa214">
										<p>
											<label for="wa215">인제군</label> <input type="checkbox"
												name="workarea" value="강원 인제군" id="wa215">
										<p>
											<label for="wa216">정선군</label> <input type="checkbox"
												name="workarea" value="강원 정선군" id="wa216">
										<p>
											<label for="wa217">철원군</label> <input type="checkbox"
												name="workarea" value="강원 철원군" id="wa217">
										<p>
											<label for="wa218">춘천시</label> <input type="checkbox"
												name="workarea" value="강원 춘천시" id="wa218">
										<p>
											<label for="wa219">태백시</label> <input type="checkbox"
												name="workarea" value="강원 태백시" id="wa219">
										<p>
											<label for="wa220">평창군</label> <input type="checkbox"
												name="workarea" value="강원 평창군" id="wa220">
										<p>
											<label for="wa221">홍천군</label> <input type="checkbox"
												name="workarea" value="강원 홍천군" id="wa221">
										<p>
											<label for="wa222">화천군</label> <input type="checkbox"
												name="workarea" value="강원 화천군" id="wa222">
										<p>
											<label for="wa223">횡성군</label> <input type="checkbox"
												name="workarea" value="강원 횡성군" id="wa223">
										<p>
											<label for="wa241">전체</label> <input type="checkbox"
												name="workarea" value="강원 전체" id="wa241">
										<p>
									</div>

									<div id="Jeju" class="tabcontent_wa">
										<label for="wa224">서귀포시</label> <input type="checkbox"
											name="workarea" value="제주 서귀포시" id="wa224">
										<p>
											<label for="wa225">제주시</label> <input type="checkbox"
												name="workarea" value="제주 제주시" id="wa225">
										<p>
											<label for="wa242">전체</label> <input type="checkbox"
												name="workarea" value="제주 전체" id="wa242">
										<p>
									</div>

									<div id="Allarea" class="tabcontent_wa">
										<label for="wa226">전국</label> <input type="checkbox"
											name="workarea" value="전국" id="wa226">
										<p>
									</div>

									<div class="foot">
										<a id="conf3">확인</a> <a id="cancel3">닫기</a> <a id="init3">초기화</a>
									</div>
								</div>
							</div>
						</td>
					</tr>
					<tr><td colspan="2"><h5 onclick="wishjob()">직종 선택</h5>
							<div id="jobmodal" class="jobModal" style="display: none">
								<div class="modal-content">
									<table id="type">
										<tr>
											<td><input type="radio" name="rWishjob" value="웹개발">웹개발</td>
											<td><input type="radio" name="rWishjob" value="응용프로그램개발">응용프로그램
												개발</td>
											<td><input type="radio" name="rWishjob" value="시스템개발">시스템개발
											</td>
											<td><input type="radio" name="rWishjob"
												value="서버/네트워크/보안">서버/네트워크/보안</td>
										</tr>
										<tr>
											<td><input type="radio" name="rWishjob"
												value="ERP/시스템분석/설계">ERP/시스템분석/설계</td>
											<td><input type="radio" name="rWishjob"
												value="데이터베이스/DBA">데이터베이스/DBA</td>
											<td><input type="radio" name="rWishjob"
												value="퍼블리싱/UI개발">퍼블리싱/UI개발</td>
											<td><input type="radio" name="rWishjob" value="웹디자인">웹디자인</td>
										</tr>
										<tr>
											<td><input type="radio" name="rWishjob" value="웹기획/PM">웹기획/PM</td>
											<td><input type="radio" name="rWishjob"
												value="웹마스터/QA/테스터">웹마스터/QA/테스터</td>
											<td><input type="radio" name="rWishjob"
												value="컨텐츠/사이트운영">컨텐츠/사이트운영</td>
											<td><input type="radio" name="rWishjob" value="게임/Game">게임/Game</td>
										</tr>
										<tr>
											<td><input type="radio" name="rWishjob"
												value="인공지능(AI)/빅데이터">인공지능(AI)/빅데이터</td>
											<td><input type="radio" name="rWishjob"
												value="하드웨어/소프트웨어">하드웨어/소프트웨어</td>
											<td><input type="radio" name="rWishjob" value="통신/모바일">통신/모바일</td>
											<td><input type="radio" name="rWishjob"
												value="IT/디자인/컴퓨터교육">IT/디자인/컴퓨터교육</td>
										</tr>
									</table>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-primary"
										onclick="closejobModal();">확인</button>
								</div>
							</div></td></tr>
				</table>
			</div>
			</div>
			<div id="scrollmenu">
				<table class="menu">
					<tr>
						<td>자격증</td>
						<td><input type="button" value="추가" id="addlicense"
							onclick="viewli()"></td>
					</tr>
					<tr>
						<td>수상</td>
						<td><input type="button" value="추가" id="addaward"
							onclick="viewaw()"></td>
					</tr>
					<tr>
						<td>포토폴리오</td>
						<td><input type="button" value="추가" id="addport"
							onclick="viewport()"></td>
					</tr>
					<tr>
						<td>자기소개서</td>
						<td><input type="button" value="추가" id="addself"
							onclick="viewself()"></td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="checkbox" name="rOpenwhether" id="open">공개여부					
						</td>
					</tr>
					<tr>
						<td colspan="2"><input type="submit" value="작성 완료"></td>
					</tr>
				</table>
			</div>
		</form>
	</div>
</body>
</html>