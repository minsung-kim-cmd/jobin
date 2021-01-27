<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../compInfo.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">@import url("resources/companyInfo.css");</style>
<style type="text/css">@import url("resources/reset.css");</style>
<style type="text/css">
nav.navbar.navbar-inverse{margin-bottom:0;}
</style>
<script type="text/javascript">
window.onload = function() {
	function onClick() {
		document.querySelector('.modal_wrap').style.display ='block';
		document.querySelector('.black_bg').style.display ='block';
		document.querySelector('body').style.overflow ='hidden';
	}
	function onClick1() {
		document.querySelector('.modal_wrap1').style.display ='block';
		document.querySelector('.black_bg1').style.display ='block';
		document.querySelector('body').style.overflow ='hidden';
	}
    function offClick() {
        document.querySelector('body').style.overflow ='scroll';
        document.querySelector('.modal_wrap').style.display ='none';
        document.querySelector('.black_bg').style.display ='none';
        document.querySelector('.modal_wrap1').style.display ='none';
        document.querySelector('.black_bg1').style.display ='none';
    }
	document.getElementById('modal_btn').addEventListener('click', onClick);
    document.getElementById('cancel').addEventListener('click', offClick);
    document.getElementById('cancel1').addEventListener('click', offClick);
}
$(function (){
	$("#modal_btn1").bind("click", function(){
		if($("input:radio[id=one1]").is(":checked")==true){
			$("#a").trigger("click");
		}
		if($("input:radio[id=two1]").is(":checked")==true){
			$("#b").trigger("click");
		}
		if($("input:radio[id=three1]").is(":checked")==true){
			$("#c").trigger("click");
		}
		if($("input:radio[id=four1]").is(":checked")==true){
			$("#d").trigger("click");
		}
		if($("input:radio[id=five1]").is(":checked")==true){
			$("#e").trigger("click");
		}
	});

	$('#starscore-cnt label').click(function(){
	    $(this).parent().children("label").removeClass("on");  /* 별점의 on 클래스 전부 제거 */ 
	    $(this).addClass("on").prevAll("label").addClass("on"); /* 클릭한 별과, 그 앞 까지 별점에 on 클래스 추가 */
	});
	$('#starscore-cnt1 label').click(function(){
	    $(this).parent().children("label").removeClass("on");  /* 별점의 on 클래스 전부 제거 */ 
	    $(this).addClass("on").prevAll("label").addClass("on"); /* 클릭한 별과, 그 앞 까지 별점에 on 클래스 추가 */
	});
	$("#cancel").click(function(){
		$('#starscore-cnt').children("label").removeClass("on");
	});
	$("#cancel1").click(function(){
		$('#starscore-cnt1').children("label").removeClass("on");
	});
	$("#conf").click(function(){
		if($("[name=vJob] > option:selected").val()=="0"){
			alert("직종을 선택해주세요");
			return false;
		}
		if($("input:radio[name=vStarscore]").is(":checked")==false){
			alert("재직여부를 체크해주세요");
			return false;
		}
		if($("[name=vWorkarea] > option:selected").val()=="0"){
			alert("근무지역을 선택해주세요");
			return false;
		}
		if($("input:radio[name=vStarscore]").is(":checked")==false){
			alert("만족도를 체크해주세요");
			return false;
		}
		if($("#vcontent").val()==""){
			alert("평가내용을 입력해주세요");
			return false;
		}
	});
	$("#conf1").click(function(){
		if($("[name=vJob] > option:selected").val()=="0"){
			alert("직종을 선택해주세요");
			return false;
		}
		if($("input:radio[name=vStarscore]").is(":checked")==false){
			alert("재직여부를 체크해주세요");
			return false;
		}
		if($("[name=vWorkarea] > option:selected").val()=="0"){
			alert("근무지역을 선택해주세요");
			return false;
		}
		if($("input:radio[name=vStarscore]").is(":checked")==false){
			alert("만족도를 체크해주세요");
			return false;
		}
		if($("#vcontent1").val()==""){
			alert("평가내용을 입력해주세요");
			return false;
		}
	});
});
</script>
</head>
<body>
<div class="container" style="width:1290px;">
<c:import url="../nav.jsp"/>
<form action="insertReview" method="post">
	<div class="black_bg"></div>
	<div class="modal_wrap">
	<div class="modal_close"><a href="#">close</a></div>
	<div class="modal_body">
	<input type="hidden" name="companyCode" value="${companymem.companyCode}">
	<table>
		<tr><td class="modal_subject">리뷰등록</td></tr>
		<tr><td class="modal_content">
		<div>
			<span class="review-class">직종</span>
			<span class="review-option">
				<select class="select" name="vJob" id="occu">
					<option value="0">--------직종선택--------</option>
					<option value="웹개발">웹개발</option>
					<option value="응용프로그램개발">응용프로그램개발</option>
					<option value="시스템개발">시스템개발</option>
					<option value="서버/네트워크/보안">서버/네트워크/보안</option>
					<option value="ERP/시스템분석/설계">ERP/시스템분석/설계</option>
					<option value="데이터베이스/DBA">데이터베이스/DBA</option>
					<option value="퍼블리싱/UI개발">퍼블리싱/UI개발</option>
					<option value="웹디자인">웹디자인</option>
					<option value="웹기획">웹기획</option>
					<option value="웹마스터/QA/테스터">웹마스터/QA/테스터</option>
					<option value="컨텐츠/사이트운영">컨텐츠/사이트운영</option>
					<option value="게임">게임</option>
					<option value="인공지능(AI)/빅데이터">인공지능(AI)/빅데이터</option>
					<option value="하드웨어/소프트웨어">하드웨어/소프트웨어</option>
					<option value="통신/모바일">통신/모바일</option>
					<option value="IT/디자인/컴퓨터교육">IT/디자인/컴퓨터교육</option>
				</select>
			</span>
		</div>
		<div>
			<span class="review-class">재직여부</span>
			<span class="review-option">
				<label for="vws1">현직원</label>
				<input type="radio" id="vws1" name="vWorkstatus" value="현직원">
				<label for="vws2">전직원</label>
				<input type="radio" id="vws2" name="vWorkstatus" value="전직원">
			</span>
		</div>
		<div>
			<span class="review-class">근무지역</span>
			<span class="review-option">
				<select class="select" name="vWorkarea">
					<option value="0">----근무지역----</option>
					<option value="서울">서울</option><option value="경기">경기</option>
					<option value="인천">인천</option><option value="부산">부산</option>
					<option value="대구">대구</option><option value="대전">대전</option>
					<option value="광주">광주</option><option value="울산">울산</option>
					<option value="경남">경남</option><option value="경북">경북</option>
					<option value="전남">전남</option><option value="전북">전북</option>
					<option value="충남">충남</option><option value="충북">충북</option>
					<option value="제주">제주</option>
				</select>
			</span>
		</div>
		<div>
			<span class="review-class">만족도</span>
			<span class="review-option" id="starscore">
				<input type="radio" name="vStarscore" id="one" value="1">
				<input type="radio" name="vStarscore" id="two" value="2">
				<input type="radio" name="vStarscore" id="three" value="3">
				<input type="radio" name="vStarscore" id="four" value="4">
				<input type="radio" name="vStarscore" id="five" value="5">
				<span id="starscore-cnt">
					<label for="one">★</label>
					<label for="two">★</label>
					<label for="three">★</label>
					<label for="four">★</label>
					<label for="five">★</label>
				</span>
			</span>
		</div>
		<div>
			<span class="review-class">기업평가</span>
			<span><textarea cols="90" rows="5" name="vContent" id="vcontent" required="required"></textarea></span>
		</div>
		</td>
		</tr>
	</table>
	</div>
	<div class="modal_conf">
		 <button id="conf" type="submit">등록하기</button>
		 <button id="cancel" type="reset">취소</button>
	</div>
	</div>
</form>
<div class="company_warp">
<div class="top">
	<p class="back"></p>
	<p class="logo"><img src="resources/Logo/${companymem.cLogo}"></p>
</div>

<div class="company_top">
	<h2>${companymem.cName}</h2>
	<p>${companymem.cSector}</p>
	<p><a href="${companymem.cHomepage}">${companymem.cHomepage}</a></p>
</div>
<div class="nav">
	<p><a href="companyInfo?companyCode=${companymem.companyCode}">소개</a></p>
	<p><a href="companyInfoReview?companyCode=${companymem.companyCode}">리뷰</a></p>
	<p><a href="companyInfoPost?companyCode=${companymem.companyCode}">채용공고</a></p>
	<a href="#"><p class="float_right"><img src="resources/heart.png">관심기업</p></a>
</div>

<div class="content">
	<h3>기업리뷰</h3>
	<div class="company-review">
		<c:set value="${fn:length(companyreview)}" var="size"/>
		<span class="company-reviewcnt">총 ${size}개의 리뷰</span>
		<c:set value="0" var="a"/>
		<c:forEach items="${companyreview}" var="cnt" varStatus="ff">
			<c:set value="${cnt.vStarscore+a}" var="a"/>
		</c:forEach>
		<span class="company-score">평균 만족도 			
			<c:if test="${empty companyreview}">
			☆☆☆☆☆
			</c:if>
			<c:if test="${a/size==1}">
			★☆☆☆☆
			</c:if>
			<c:if test="${a/size==2}">
			★★☆☆☆
			</c:if>
			<c:if test="${a/size==3}">
			★★★☆☆
			</c:if>
			<c:if test="${a/size==4}">
			★★★★☆
			</c:if>
			<c:if test="${a/size==5}">
			★★★★★
			</c:if></span>
		<span class="review-insert"><button type="button" id="modal_btn">리뷰 등록하기</button></span>
	</div>
		<c:if test="${!empty companyreview}">
		<c:forEach items="${companyreview}" var="companyreview">
			<div class="company-topreview">
				<span class="review-content">${companyreview.vJob}</span>
				<span class="review-content">${companyreview.vWorkstatus}</span>
				<span class="review-content">${companyreview.vWorkarea}</span>
				<span class="review-register">${companyreview.vRegister}</span>
				<div class="review-score">만족도 
				<c:if test="${companyreview.vStarscore==1}">
				★☆☆☆☆
				</c:if>
				<c:if test="${companyreview.vStarscore==2}">
				★★☆☆☆
				</c:if>
				<c:if test="${companyreview.vStarscore==3}">
				★★★☆☆
				</c:if>
				<c:if test="${companyreview.vStarscore==4}">
				★★★★☆
				</c:if>
				<c:if test="${companyreview.vStarscore==5}">
				★★★★★
				</c:if>
				</div>
				<div class="review-score">${companyreview.vContent}</div>
				<c:set value="${sessionScope.memberCode}" var="mbr"/>
				<c:if test="${mbr==companyreview.memberCode}">
				<div class="review-edit">
					<span><a href="#" id="modal_btn1">수정</a></span><span><a href="deleteReview?reviewCode=${companyreview.reviewCode}">삭제</a></span>
				</div>
				</c:if>
			</div>
				<form action="updateReview" method="post">
					<div class="black_bg1"></div>
					<div class="modal_wrap1">
					<div class="modal_close"><a href="#">close</a></div>
					<div class="modal_body">
					<input type="hidden" name="companyCode" value="${companyreview.companyCode}">
					<input type="hidden" name="memberCode" value="${mbr}">
					<table>
						<tr><td class="modal_subject">리뷰등록</td></tr>
						<tr><td class="modal_content">
						<div>
							<span class="review-class">직종</span>
							<span class="review-option">
								<select class="select" name="vJob" id="occup">
									<option value="0">--------직종선택--------</option>
									<option value="웹개발" <c:if test="${companyreview.vJob == '웹개발'}">selected</c:if>>웹개발</option>
									<option value="응용프로그램개발" <c:if test="${companyreview.vJob == '응용프로그램개발'}">selected</c:if>>응용프로그램개발</option>
									<option value="시스템개발" <c:if test="${companyreview.vJob == '시스템개발'}">selected</c:if>>시스템개발</option>
									<option value="서버/네트워크/보안" <c:if test="${companyreview.vJob == '서버/네트워크/보안'}">selected</c:if>>서버/네트워크/보안</option>
									<option value="ERP/시스템분석/설계" <c:if test="${companyreview.vJob == 'ERP/시스템분석/설계'}">selected</c:if>>ERP/시스템분석/설계</option>
									<option value="데이터베이스/DBA" <c:if test="${companyreview.vJob == '데이터베이스/DBA'}">selected</c:if>>데이터베이스/DBA</option>
									<option value="퍼블리싱/UI개발" <c:if test="${companyreview.vJob == '퍼블리싱/UI개발'}">selected</c:if>>퍼블리싱/UI개발</option>
									<option value="웹디자인" <c:if test="${companyreview.vJob == '웹디자인'}">selected</c:if>>웹디자인</option>
									<option value="웹기획" <c:if test="${companyreview.vJob == '웹기획'}">selected</c:if>>웹기획</option>
									<option value="웹마스터/QA/테스터" <c:if test="${companyreview.vJob == '웹마스터/QA/테스터'}">selected</c:if>>웹마스터/QA/테스터</option>
									<option value="컨텐츠/사이트운영" <c:if test="${companyreview.vJob == '컨텐츠/사이트운영'}">selected</c:if>>컨텐츠/사이트운영</option>
									<option value="게임" <c:if test="${companyreview.vJob == '게임'}">selected</c:if>>게임</option>
									<option value="인공지능(AI)/빅데이터" <c:if test="${companyreview.vJob == '인공지능(AI)/빅데이터'}">selected</c:if>>인공지능(AI)/빅데이터</option>
									<option value="하드웨어/소프트웨어" <c:if test="${companyreview.vJob == '하드웨어/소프트웨어'}">selected</c:if>>하드웨어/소프트웨어</option>
									<option value="통신/모바일" <c:if test="${companyreview.vJob == '통신/모바일'}">selected</c:if>>통신/모바일</option>
									<option value="IT/디자인/컴퓨터교육" <c:if test="${companyreview.vJob == 'IT/디자인/컴퓨터교육'}">selected</c:if>>IT/디자인/컴퓨터교육</option>
								</select>
							</span>
						</div>
						<div>
							<span class="review-class">재직여부</span>
							<span class="review-option">
								<label for="vws1">현직원</label>
								<input type="radio" id="vws1" name="vWorkstatus" value="현직원" <c:if test="${companyreview.vWorkstatus eq '현직원'}">checked</c:if>>
								<label for="vws2">전직원</label>
								<input type="radio" id="vws2" name="vWorkstatus" value="전직원" <c:if test="${companyreview.vWorkstatus eq '전직원'}">checked</c:if>>
							</span>
						</div>
						<div>
							<span class="review-class">근무지역</span>
							<span class="review-option">
								<select class="select" name="vWorkarea">
									<option value="0">----근무지역----</option>
									<option value="서울" <c:if test="${companyreview.vWorkarea == '서울'}">selected</c:if>>서울</option><option value="경기" <c:if test="${companyreview.vWorkarea == '경기'}">selected</c:if>>경기</option>
									<option value="인천" <c:if test="${companyreview.vWorkarea == '인천'}">selected</c:if>>인천</option><option value="부산" <c:if test="${companyreview.vWorkarea == '부산'}">selected</c:if>>부산</option>
									<option value="대구" <c:if test="${companyreview.vWorkarea == '대구'}">selected</c:if>>대구</option><option value="대전" <c:if test="${companyreview.vWorkarea == '대전'}">selected</c:if>>대전</option>
									<option value="광주" <c:if test="${companyreview.vWorkarea == '광주'}">selected</c:if>>광주</option><option value="울산" <c:if test="${companyreview.vWorkarea == '울산'}">selected</c:if>>울산</option>
									<option value="경남" <c:if test="${companyreview.vWorkarea == '경남'}">selected</c:if>>경남</option><option value="경북" <c:if test="${companyreview.vWorkarea == '경북'}">selected</c:if>>경북</option>
									<option value="전남" <c:if test="${companyreview.vWorkarea == '전남'}">selected</c:if>>전남</option><option value="전북" <c:if test="${companyreview.vWorkarea == '전북'}">selected</c:if>>전북</option>
									<option value="충남" <c:if test="${companyreview.vWorkarea == '충남'}">selected</c:if>>충남</option><option value="충북" <c:if test="${companyreview.vWorkarea == '충북'}">selected</c:if>>충북</option>
									<option value="제주" <c:if test="${companyreview.vWorkarea == '제주'}">selected</c:if>>제주</option>
								</select>
							</span>
						</div>
						<div>
							<span class="review-class">만족도</span>
							<span class="review-option" id="starscore1">
								<input type="radio" name="vStarscore" id="one1" value="1" <c:if test="${companyreview.vStarscore eq '1'}">checked</c:if>>
								<input type="radio" name="vStarscore" id="two1" value="2" <c:if test="${companyreview.vStarscore eq '2'}">checked</c:if>>
								<input type="radio" name="vStarscore" id="three1" value="3" <c:if test="${companyreview.vStarscore eq '3'}">checked</c:if>>
								<input type="radio" name="vStarscore" id="four1" value="4" <c:if test="${companyreview.vStarscore eq '4'}">checked</c:if>>
								<input type="radio" name="vStarscore" id="five1" value="5" <c:if test="${companyreview.vStarscore eq '5'}">checked</c:if>>
								<span id="starscore-cnt1">
									<label id="a" for="one1">★</label>
									<label id="b" for="two1">★</label>
									<label id="c" for="three1">★</label>
									<label id="d" for="four1">★</label>
									<label id="e" for="five1">★</label>
								</span>
							</span>
						</div>
						<div>
							<span class="review-class">기업평가</span>
							<span><textarea cols="90" rows="5" name="vContent" id="vcontent1" required="required">${companyreview.vContent}</textarea></span>
						</div>
						</td>
						</tr>
					</table>
					</div>
					<div class="modal_conf">
						 <button id="conf1" type="submit">수정하기</button>
						 <button id="cancel1" type="reset">취소</button>
					</div>
					</div>
				</form>
		</c:forEach>
		</c:if>
		<c:if test="${empty companyreview}">
		<div class="company-topreview">
			<div class="company-empty">등록된 리뷰가 없습니다</div>
		</div>
		</c:if>
</div>
</div>
</div>
</body>
</html>