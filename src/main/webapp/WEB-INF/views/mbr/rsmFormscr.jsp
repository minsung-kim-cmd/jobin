<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">
	function execDaumPostcode() {
		new daum.Postcode({
			oncomplete : function(data) {
				// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

				// 각 주소의 노출 규칙에 따라 주소를 조합한다.
				// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
				var addr = ''; // 주소 변수
				var extraAddr = ''; // 참고항목 변수

				//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
				if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
					addr = data.roadAddress;
				} else { // 사용자가 지번 주소를 선택했을 경우(J)
					addr = data.jibunAddress;
				}

				// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
				if (data.userSelectedType === 'R') {
					// 법정동명이 있을 경우 추가한다. (법정리는 제외)
					// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
					if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
						extraAddr += data.bname;
					}
					// 건물명이 있고, 공동주택일 경우 추가한다.
					if (data.buildingName !== '' && data.apartment === 'Y') {
						extraAddr += (extraAddr !== '' ? ', '
								+ data.buildingName : data.buildingName);
					}
					// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
					if (extraAddr !== '') {
						extraAddr = ' (' + extraAddr + ')';
					}
					// 조합된 참고항목을 해당 필드에 넣는다.
					//document.getElementById("extraAddress").value = extraAddr;

				} else {
					//document.getElementById("extraAddress").value = '';
				}

				// 우편번호와 주소 정보를 해당 필드에 넣는다.
				//document.getElementById('postcode').value = data.zonecode;
				document.getElementById("address").value = addr;
				// 커서를 상세주소 필드로 이동한다.
				document.getElementById("detailAddress").focus();
			}
		}).open();

	}
</script>
<script>
	$(function() {
		$('#license').hide();
		$('#award').hide();
		$('#portfolio').hide();
		$('#self').hide();
	});

	function Uniminor() { //부전공 열고 닫기
		var input = document.getElementById("rUniminor");
		if (input.type == "hidden") {
			input.type = "text";
		} else if (input.type == "text") {
			input.type = "hidden";
		}

	}
	function Unithesis() { //졸업논문&졸업작품 열고 닫기
		var input = document.getElementById("rUnithesis");
		if (input.type == "hidden") {
			input.type = "text";
		} else if (input.type == "text") {
			input.type = "hidden";
		}
	}

	function entercr() {//경력 열기
		if (crcontent.style.display == 'none')
			crcontent.style.display = '';
		$('#rCareer').val('경력');
	}
	function hidecr() {//경력닫기
		if (crcontent.style.display == '')
			crcontent.style.display = 'none';
		$('#rCareer').val('신입');
	}
	function plusposi() {//직급 모달보이기
		$('#psmodal').show();
	}
	function plustype() {//직종 모달보이기
		$('#typemodal').show();
	}
	function wishjob() {
		$('#jobmodal').show();
	}
	function pluscr() {//경력 추가
		$('#crcontent > tbody:last > tr:last').remove();
		var contents = document.getElementById("crcontent").innerHTML;
		contents += '<tr><td colspan="3" style="text-align: center"><input id="addcareer" type="button" value="추가" onclick="pluscr()"></td>	</tr>';
		$('#crcontent').append(contents);
	}
	function viewli() {//자격증 추가
		if ($('#addlicense').val() == "추가") {
			$('#license').show();
			var contents = '<tr><td><input type="text" name="rLicense" placeholder="자격증 명"></td>';
			contents += '<td><input type="text" name="rLicenseissuer"	placeholder="발행처"></td>';
			contents += '<td><input type="date" name="rAcqdate" placeholder="취득일"	size="5"></td></tr>'
			contents += '<tr><td style="text-align: center" colspan="3"><input id="pluslisense"type="button" value="추가" onclick="plusli()"></td></tr>';
			$('#enterli').append(contents);
			$('#addlicense').val('삭제');
		} else {
			$('#enterli tr').remove();
			$('#license').hide();
			$('#addlicense').val('추가');
		}
	}

	function plusli() {//자격증 항목 추가
		var table = document.getElementById('enterli');
		var cnt = table.rows.length;
		table.deleteRow(cnt - 1);
		//$('#enterli > tbody:last > tr:last').remove();
		var contents = '<tr><td><input type="text" name="rLicense" placeholder="자격증 명"></td>';
		contents += '<td><input type="text" name="rLicenseissuer"	placeholder="발행처"></td>';
		contents += '<td><input type="date" name="rAcqdate" placeholder="취득일"	size="5"></td></tr>'
		contents += '<tr><td style="text-align: center" colspan="3"><input type="button" value="추가" onclick="plusli()"><input type="button" value="삭제" onclick="removeli()"></td></tr>';
		$('#enterli').append(contents);
	}
	function removeli() {
		var table = document.getElementById('enterli');
		var cnt = table.rows.length;
		if (cnt != 2) {
			table.deleteRow(cnt - 2);
		} else {
			viewli();
		}
	}
	$(document).ready(function(){
        $('#portfile').change(function(e){
        	if(window.FileReader){ // modern browser 
        		var filename = $(this)[0].files[0].name;
        	} else { // old IE 
        		var filename = $(this).val().split('/').pop().split('\\').pop(); // 파일명만 추출 
        	}
        	alert(filename);
        	// 추출한 파일명 삽입 
        	$(this).siblings('#filename').val(filename);

        });

    });
	function viewport() {
		if ($('#addport').val() == "추가") {
			$('#portfolio').show();
			var contents = '<tr><td><input type="text" style="height: 50px; width: 400px;"name="url" placeholder="URL 추가"></td>'
			contents += '<td><input type="text" disabled="disabled" value="파일 이름" id="filename"><label id="portupload" for="portfile">파일 추가</label>'
			contents += '<input type="file" id="portfile"name="rPortfolio"></td></tr><tr><td style="text-align: center" colspan="2">'
			contents += '<input type="button" value="추가" onclick="plusport()"></td></tr>'
			$('#enterport').append(contents);
			$('#addport').val('삭제');
		} else {
			$('#enterport tr').remove();
			$('#portfolio').hide();
			$('#addport').val('추가');
		}
	}
	function plusport() {//포토폴리오 추가
		var table = document.getElementById('enterport');
		var cnt = table.rows.length;
		table.deleteRow(cnt - 1);
		var contents = '<tr><td><input type="text" style="height: 50px; width: 400px;"name="url" placeholder="URL 추가"></td>'
		contents += '<td><input type="text" disabled="disabled" value="파일 이름" id="filename"><label id="portupload" for="portfile">파일 추가</label>'
		contents += '<input type="file" id="portfile"name="rPortfolio"></td></tr><tr><td style="text-align: center" colspan="2">'
		contents += '<input type="button" value="추가" onclick="plusport()"><input type="button" value="삭제" onclick="removeport()"></td></tr>'
		$('#enterport').append(contents)
	}
	function removeport() {
		var table = document.getElementById('enterport');
		var cnt = table.rows.length;
		if (cnt != 2) {
			table.deleteRow(cnt - 2);
		} else {
			viewport();
		}
	}
	function viewaw() {
		if ($('#addaward').val() == "추가") {
			$('#award').show();
			var contents = '<tr><td><input type="text" name="rAwardname" placeholder="수상명" size="30"></td>';
			contents += '<td><input type="text" name="rAwardagency"	placeholder="수상기관" size="20"></td>';
			contents += '<td><input type="date" name="rAwarddate" placeholder="수상연도" size="10"></td></tr>'
			contents += '<tr><td  colspan="3"><textarea rows="3" name="rAwarded" cols="91"placeholder="수여 내용 및 결과를 자세히 입력해주세요."></textarea></td></tr>';
			contents += '<tr><td style="text-align: center" colspan="3"><input type="button" value="추가" onclick="plusaw()"></td></tr>'
			$('#enteraw').append(contents);
			$('#addaward').val('삭제');
		} else {
			$('#enteraw tr').remove();
			$('#award').hide();
			$('#addaward').val('추가');
		}
	}
	function plusaw() {//수상 추가
		var table = document.getElementById('enteraw');
		var cnt = table.rows.length;
		table.deleteRow(cnt - 1);
		var contents = '<tr><td><input type="text" name="rAwardname" placeholder="수상명" size="30"></td>';
		contents += '<td><input type="text" name="rAwardagency"	placeholder="수상기관" size="20"></td>';
		contents += '<td><input type="date" name="rAwarddate" placeholder="수상연도" size="10"></td></tr>'
		contents += '<tr><td  colspan="3"><textarea rows="3" name="rAwarded" cols="91"placeholder="수여 내용 및 결과를 자세히 입력해주세요."></textarea></td></tr>';
		contents += '<tr><td style="text-align: center" colspan="3"><input type="button" value="추가" onclick="plusaw()"><input type="button" value="삭제" onclick="removeaw()"></td></tr>';
		$('#enteraw').append(contents);
	}
	function removeaw() {
		var table = document.getElementById('enteraw');
		var cnt = table.rows.length;
		if (cnt != 3) {
			for (var i = cnt - 2; i > cnt - 4; i--)
				table.deleteRow(i);
		} else {
			viewaw();
		}
	}
	function viewself() {
		if ($('#addself').val() == "추가") {
			$('#self').show();
			var contents = '<tr><td><input size="85" type="text"placeholder="제목"name="SelfSubject"></td></tr>';
			contents += '<tr><td><textarea rows="10" cols="91"></textarea></td></tr>';
			contents += '<tr><td style="text-align: center"><input type="button" value="추가" onclick="plusself()"></td></tr>';
			$('#enterself').append(contents);
			$('#addself').val('삭제');
		} else {
			$('#enterself tr').remove();
			$('#self').hide();
			$('#addself').val('추가');
		}
	}
	function plusself() {//자기소개서 추가
		var table = document.getElementById('enterself');
		var cnt = table.rows.length;
		table.deleteRow(cnt - 1);
		var contents = '<tr><td><input size="85" type="text"placeholder="제목"name="SelfSubject"></td></tr>';
		contents += '<tr><td><textarea rows="10" cols="91"></textarea></td></tr>';
		contents += '<tr><td style="text-align: center"><input type="button" value="추가" onclick="plusself()"><input type="button" value="삭제" onclick="removeself()"></td></tr>';
		$('#enterself').append(contents);
	}
	function removeself() {
		var table = document.getElementById('enterself');
		var cnt = table.rows.length;
		if (cnt != 3) {
			for (var i = cnt - 2; i > cnt - 4; i--)
				table.deleteRow(i);
		} else {
			viewself();
		}
	}

	function closePsModal() {//직급 모달닫기
		$('.positionModal').hide();
	};

	function closeTyModal() {//직종 모달닫기
		$('.typeModal').hide();
	};
	function closejobModal() {//직종 모달닫기
		$('.jobmodal').hide();
	};
	$(document).ready(function() {
		var Position = parseInt($("#scrollmenu").css('top'));
		$(window).scroll(function() //스크롤이 움직일때마다 이벤트 발생
		{
			var scrollTop = $(window).scrollTop();
			var newPosition = scrollTop + Position + "px";

			$('#scrollmenu').stop().animate({
				"top" : newPosition
			}, 1); //해당 오브젝트 위치값 재설정
		}).scroll();
	});

	$('#conf3').click(function() {//확인
		myDropdown_wa.classList.remove('show');
	});
	$('#cancel3').click(function() {//닫기
		myDropdown_wa.classList.remove('show');
	});
	
	$('.dropbtn_jw').click(function() {
		myDropdown_wa.classList.remove('show');
	});
	$('.dropbtn').click(function() {
		myDropdown_wa.classList.remove('show');
	});
	function myFunction() {
		  document.getElementById("myDropdown").classList.toggle("show");
			// Get the element with id="defaultOpen" and click on it
			document.getElementById("defaultOpen").click();
		}
		function myFunction_wa() {
		  document.getElementById("myDropdown_wa").classList.toggle("show");
		  	
			// Get the element with id="defaultOpen" and click on it
			document.getElementById("defaultOpen_wa").click();
		}
		function myFunction_jw() {
		  document.getElementById("myDropdown_jw").classList.toggle("show");
		  	
			// Get the element with id="defaultOpen" and click on it
			document.getElementById("defaultOpen_jw").click();
		}
		function openDropdown_wa(evt, option) {
			  var i, tabcontent, tablinks;
			  tabcontent = document.getElementsByClassName("tabcontent_wa");
			  for (i = 0; i < tabcontent.length; i++) {
			    tabcontent[i].style.display = "none";
			  }
			  tablinks = document.getElementsByClassName("tablinks_wa");
			  for (i = 0; i < tablinks.length; i++) {
			    tablinks[i].className = tablinks[i].className.replace(" active", "");
			  }
			  document.getElementById(option).style.display = "block";
			  evt.currentTarget.className += " active";
			}
	$('.dropbtn_wa').click(function() {
		$('#myDropdown_wa').show();
		
		var checkBoxArr = [];
		if($('input:checkbox[name=workarea]').not(":checked")){
			$('#cancel3').click(function() {
				$("input:checkbox[name=workarea]").prop("checked", false);
				$('#wa').html('');
			});
		}
		if($('input:checkbox[name=workarea]').is(":checked") == false){		// 체크를 풀고
			if($("#myDropdown_wa").hasClass("dropdown_wa-content show") == false){			// 확인을 누르면
				$('#wa').html('');					// 텍스트에 체크를 푼 목록을 없앤다
			}
		}
		$('input:checkbox[name="workarea"]:checked').each(function(i){
			checkBoxArr.push($(this).attr('id'));
			if($("#myDropdown_wa").hasClass("dropdown_wa-content show") == false){
					$("input:checkbox[name=workarea]").prop("checked", false);
				$('#wa').html('');  
				for (var i=0; i < checkBoxArr.length; i++){
					$('input:checkbox[id="'+checkBoxArr[i]+'"]').prop("checked", true);
				}
				var output = '';
				var chk = $('input:checkbox[name=workarea]').is(":checked");
				$('input:checkbox[name=workarea]:checked').each(function(index, item) {
					if (index != 0) {
						output += ', ';
					}
					output += $(this).val();
					$('#wa').html(output);
				});
			}
			$('#cancel3').click(function() {
					$("input:checkbox[name=workarea]").prop("checked", false);
				$('#wa').html('');  
				for (var i=0; i < checkBoxArr.length; i++){
					$('input:checkbox[id="'+checkBoxArr[i]+'"]').prop("checked", true);
				}
				var output = '';
				var chk = $('input:checkbox[name=workarea]').is(":checked");
				$('input:checkbox[name=workarea]:checked').each(function(index, item) {
					if (index != 0) {
						output += ', ';
					}
					output += $(this).val();
					$('#wa').html(output);
				});
				myDropdown_wa.classList.remove('show');
			});
			
			$('.dropbtn').click(function() {
					$("input:checkbox[name=workarea]").prop("checked", false);
				$('#wa').html('');  
				for (var i=0; i < checkBoxArr.length; i++){
					$('input:checkbox[id="'+checkBoxArr[i]+'"]').prop("checked", true);
				}
				var output = '';
				$('input:checkbox[name=workarea]:checked').each(function(index, item) {
					if (index != 0) {
						output += ', ';
					}
					output += $(this).val();
					$('#wa').html(output);
				});
				myDropdown_wa.classList.remove('show');
			});
			
			$('.dropbtn_jw').click(function() {
					$("input:checkbox[name=workarea]").prop("checked", false);
				$('#wa').html('');  
				for (var i=0; i < checkBoxArr.length; i++){
					$('input:checkbox[id="'+checkBoxArr[i]+'"]').prop("checked", true);
				}
				var output = '';
				$('input:checkbox[name=workarea]:checked').each(function(index, item) {
					if (index != 0) {
						output += ', ';
					}
					output += $(this).val();
					$('#wa').html(output);
				});
				myDropdown_wa.classList.remove('show');
			});
		});

		$('input:checkbox[name=workarea]').click(function() {	// name이 workarea인 체크박스에 체크하고
			$('#conf3').click(function() {	//확인을 누르면
				var output = '';
				var chk = $('input:checkbox[name=workarea]').is(":checked");
				$('input:checkbox[name=workarea]:checked').each(function(index, item) {
					if (index != 0) {
						output += ', ';
					}
					checkBoxArr.push($(this).attr('id'));
					output += $(this).val();
					$('#wa').html(output);
				});
				myDropdown_wa.classList.remove('show');
			});
			if($('input:checkbox[name=workarea]').is(":checked") == false){		// 체크를 풀고
				$('#conf3').click(function() {			// 확인을 누르면
					$('#wa').html('');					// 텍스트에 체크를 푼 목록을 없앤다
				});
			}
			
		});
		$('#init3').click(function() {//초기화
			$("input:checkbox[name=workarea]").prop("checked", false);
			$('#wa').html('');
			$('#conf3').click(function() {			// 확인을 누르면
				$('#wa').html('');
				checkBoxArr=[];
			});
		});	
	});
	
	$('input:checkbox[name=rOpenwhether]').click(function () {
		if($('input:checkbox[name=rOpenwhether]').is(":checked") == true){
			$('#open').val('y');	
		}else{
			$('#open').val('n');
		}
	});
	</script>
</head>
<body>

</body>
</html>