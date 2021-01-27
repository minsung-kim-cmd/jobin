<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!-- Remember to include jQuery :) -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<!-- jQuery Modal -->
<!-- 
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css">
-->
<script type="text/javascript">
	//-------------입력체크START------------------//
	function formCheck(){
		if($("input:checkbox[name=occupation]").is(":checked")==false){
			alert("직종을 체크해주세요");
			$("#modal_btn1").focus();
			return false;
			}
		if($("input:checkbox[name=career]").is(":checked")==false){
			alert("경력을 체크해주세요");
			$("#ca0").focus();
			return false;
			}
		if($("input:checkbox[name=position]").is(":checked")==false){
			alert("직급/직책을 체크해주세요");
			$("#modal_btn2").focus();
			return false;
			}
		if($("input:checkbox[name=workarea]").is(":checked")==false){
			alert("근무지역을 체크해주세요");
			$(".dropbtn_wa").focus();
			return false;
			}
		if($("input:checkbox[name=workarea]").is(":checked")==false){
			alert("경력여부를 체크해주세요");
			$("#ca0").focus();
			return false;
			}
		if($("input:checkbox[name=jobtype]").is(":checked")==false){
			alert("고용형태를 체크해주세요");
			$("#j0").focus();
			return false;
			}
		}
	//-------------입력체크END------------------//
	//-------------채용공고 수정 체크박스---------------------//
		$(function(){
			if($('input:checkbox[name=occupation]').is(":checked") == true){
				var checkBoxArr = [];
				$('input:checkbox[name="occupation"]:checked').each(function(i){
					checkBoxArr.push($(this).attr('id'));
					var output = '';
					var chk = $('input:checkbox[name=occupation]').is(":checked");
					$('input:checkbox[name=occupation]:checked').each(function(index, item) {
						if (index != 0) {
							output += ', ';
						}
						output += $(this).val();
						$('#occup').html(output);
					});
				});
			}
			if($('input:checkbox[name=position]').is(":checked") == true){
				var checkBoxArr = [];
				$('input:checkbox[name="position"]:checked').each(function(i){
					checkBoxArr.push($(this).attr('id'));
					var output = '';
					var chk = $('input:checkbox[name=position]').is(":checked");
					$('input:checkbox[name=position]:checked').each(function(index, item) {
						if (index != 0) {
							output += ', ';
						}
						output += $(this).val();
						$('#jobs').html(output);
					});
				});
			}
			if($('input:checkbox[name=language]').is(":checked") == true){
				var checkBoxArr = [];
				$('input:checkbox[name="language"]:checked').each(function(i){
					checkBoxArr.push($(this).attr('id'));
					var output = '';
					var chk = $('input:checkbox[name=language]').is(":checked");
					$('input:checkbox[name=language]:checked').each(function(index, item) {
						if (index != 0) {
							output += ', ';
						}
						output += $(this).val();
						$('#langs').html(output);
					});
				});
			}
			if($('input:checkbox[name=jWelfare]').is(":checked") == true){
				var checkBoxArr = [];
				$('input:checkbox[name="jWelfare"]:checked').each(function(i){
					checkBoxArr.push($(this).attr('id'));
					var output = '';
					var chk = $('input:checkbox[name=jWelfare]').is(":checked");
					$('input:checkbox[name=jWelfare]:checked').each(function(index, item) {
						if (index != 0) {
							output += ', ';
						}
						output += $(this).val();
						$('#welFares').html(output);
					});
				});
			}
			if($('input:checkbox[name=workarea]').is(":checked") == true){
				var checkBoxArr = [];
				$('input:checkbox[name="workarea"]:checked').each(function(i){
					checkBoxArr.push($(this).attr('id'));
					var output = '';
					var chk = $('input:checkbox[name=workarea]').is(":checked");
					$('input:checkbox[name=workarea]:checked').each(function(index, item) {
						if (index != 0) {
							output += ', ';
						}
						output += $(this).val();
						$('#wa').html(output);
					});
				});
			}
		});
	//-------------채용공고 수정 체크박스---------------------//
 		// 직책/직급 모달 체크박스 START
 		$(function() {
		$('input:checkbox[name=position]').click(function() {	// name이 job인 체크박스에 체크하고
			$('#conf').click(function() {	//확인을 누르면 체크된 목록
				var output = '';
				var chk = $('input:checkbox[name=position]').is(":checked");
				$('input:checkbox[name=position]:checked').each(function(index, item) {
					if (index != 0) {
						output += ', ';
					}
					output += $(this).val();
					$('#jobs').html(output);
				});
			});
			if($('input:checkbox[name=position]').is(":checked") == false){		// 체크를 풀고
				$('#conf').click(function() {			// 확인을 누르면
					$('#jobs').html('');					// 텍스트에 체크를 푼 목록을 없앤다
				});
			}
		});
		$('#init').click(function() {
			$("input:checkbox[name=position]").prop("checked", false);
			$('#jobs').html('');
		}); 
		$('#modal_btn2').click(function() {
			var checkBoxArr = [];
			if($('input:checkbox[name=position]').not(":checked")){
				$('#cancel').click(function() {
					$("input:checkbox[name=position]").prop("checked", false);
					$('#jobs').html('');
				});
			}
			$('input:checkbox[name="position"]:checked').each(function(i){
				checkBoxArr.push($(this).attr('id'));
				$('#cancel').click(function() {
 					$("input:checkbox[name=position]").prop("checked", false);
					$('#jobs').html('');  
					for (var i=0; i < checkBoxArr.length; i++){
						$('input:checkbox[id="'+checkBoxArr[i]+'"]').prop("checked", true);
					}
					var output = '';
					var chk = $('input:checkbox[name=position]').is(":checked");
					$('input:checkbox[name=position]:checked').each(function(index, item) {
						if (index != 0) {
							output += ', ';
						}
						output += $(this).val();
						$('#jobs').html(output);
					});
				});
			});
		});
		// 직책/직급 모달 체크박스 END
		// 직종 모달 체크박스 START
		$('input:checkbox[name=occupation]').click(function() {	// name이 job인 체크박스에 체크하고
			$('#conf1').click(function() {	//확인을 누르면 체크된 목록
				var output = '';
				var chk = $('input:checkbox[name=occupation]').is(":checked");
				$('input:checkbox[name=occupation]:checked').each(function(index, item) {
					if (index != 0) {
						output += ', ';
					}
					output += $(this).val();
					$('#occup').html(output);
				});
			});
			if($('input:checkbox[name=occupation]').is(":checked") == false){		// 체크를 풀고
				$('#conf1').click(function() {			// 확인을 누르면
					$('#occup').html('');					// 텍스트에 체크를 푼 목록을 없앤다
				});
			}
		});
		$('#init1').click(function() {
			$("input:checkbox[name=occupation]").prop("checked", false);
			$('#occup').html('');
		});
		$('#modal_btn1').click(function() {
			var checkBoxArr = [];
			if($('input:checkbox[name=occupation]').not(":checked")){
				$('#cancel1').click(function() {
					$("input:checkbox[name=occupation]").prop("checked", false);
					$('#occup').html('');
				});
			}
			$('input:checkbox[name="occupation"]:checked').each(function(i){
				checkBoxArr.push($(this).attr('id'));
				$('#cancel1').click(function() {
 					$("input:checkbox[name=occupation]").prop("checked", false);
					$('#occup').html('');  
					for (var i=0; i < checkBoxArr.length; i++){
						$('input:checkbox[id="'+checkBoxArr[i]+'"]').prop("checked", true);
					}
					var output = '';
					var chk = $('input:checkbox[name=occupation]').is(":checked");
					$('input:checkbox[name=occupation]:checked').each(function(index, item) {
						if (index != 0) {
							output += ', ';
						}
						output += $(this).val();
						$('#occup').html(output);
					});
				});
			});
		});
		$('#oo').click(function(e) {
			
				var checkBoxArr = [];
				if($('input:checkbox[name=occupation]').not(":checked")){
						$("input:checkbox[name=occupation]").prop("checked", false);
						$('#occup').html('');
				}else
				$('input:checkbox[name="occupation"]:checked').each(function(i){
					checkBoxArr.push($(this).attr('id'));
	 					$("input:checkbox[name=occupation]").prop("checked", false);
						$('#occup').html('');  
						for (var i=0; i < checkBoxArr.length; i++){
							$('input:checkbox[id="'+checkBoxArr[i]+'"]').prop("checked", true);
						}
						var output = '';
						var chk = $('input:checkbox[name=occupation]').is(":checked");
						$('input:checkbox[name=occupation]:checked').each(function(index, item) {
							if (index != 0) {
								output += ', ';
							}
							output += $(this).val();
							$('#occup').html(output);
						});
						
				});
		});

		// 직종 모달 체크박스 END
		// 외국어 START
/* 		

		$('#conf2').click(function() {
			myDropdown.classList.remove('show');
		});
		$('#cancel2').click(function() {
			myDropdown.classList.remove('show');
		});
		$('.dropbtn_jw').click(function() {
			myDropdown.classList.remove('show');
		});
		$('.dropbtn_wa').click(function() {
			myDropdown.classList.remove('show');
		});
		
		$('.dropbtn').click(function() {
			var checkBoxArr = [];
			if($('input:checkbox[name=language]').not(":checked")){
				$('#cancel2').click(function() {
					$("input:checkbox[name=language]").prop("checked", false);
					$('#langs').html('');
				});
			}
			if($('input:checkbox[name=language]').is(":checked") == false){		// 체크를 풀고
				if($("#myDropdown").hasClass("dropdown-content show") == false){			// 확인을 누르면
					$('#langs').html('');					// 텍스트에 체크를 푼 목록을 없앤다
				}
			}
			$('input:checkbox[name="language"]:checked').each(function(i){
				checkBoxArr.push($(this).attr('id'));
				if($("#myDropdown").hasClass("dropdown-content show") == false){
 					$("input:checkbox[name=language]").prop("checked", false);
					$('#langs').html('');  
					for (var i=0; i < checkBoxArr.length; i++){
						$('input:checkbox[id="'+checkBoxArr[i]+'"]').prop("checked", true);
					}
					var output = '';
					var chk = $('input:checkbox[name=language]').is(":checked");
					$('input:checkbox[name=language]:checked').each(function(index, item) {
						if (index != 0) {
							output += ', ';
						}
						output += $(this).val();
						$('#langs').html(output);
					});
				}
				$('#cancel2').click(function() {
 					$("input:checkbox[name=language]").prop("checked", false);
					$('#langs').html('');  
					for (var i=0; i < checkBoxArr.length; i++){
						$('input:checkbox[id="'+checkBoxArr[i]+'"]').prop("checked", true);
					}
					var output = '';
					var chk = $('input:checkbox[name=language]').is(":checked");
					$('input:checkbox[name=language]:checked').each(function(index, item) {
						if (index != 0) {
							output += ', ';
						}
						output += $(this).val();
						$('#langs').html(output);
					});
					myDropdown.classList.remove('show');
				});
				$('.dropbtn_jw').click(function() {
 					$("input:checkbox[name=language]").prop("checked", false);
					$('#langs').html('');
					for (var i=0; i < checkBoxArr.length; i++){
						$('input:checkbox[id="'+checkBoxArr[i]+'"]').prop("checked", true);
					}
					var output = '';
					$('input:checkbox[name=language]:checked').each(function(index, item) {
						if (index != 0) {
							output += ', ';
						}
						output += $(this).val();
						$('#langs').html(output);
					});
					myDropdown.classList.remove('show');
				});
				$('.dropbtn_wa').click(function() {
 					$("input:checkbox[name=language]").prop("checked", false);
					$('#langs').html('');  
					for (var i=0; i < checkBoxArr.length; i++){
						$('input:checkbox[id="'+checkBoxArr[i]+'"]').prop("checked", true);
					}
					var output = '';
					$('input:checkbox[name=language]:checked').each(function(index, item) {
						if (index != 0) {
							output += ', ';
						}
						output += $(this).val();
						$('#langs').html(output);
					});
					myDropdown.classList.remove('show');
				});
			});

			$('input:checkbox[name=language]').click(function() {	// name이 language인 체크박스에 체크하고
				$('#conf2').click(function() {	//확인을 누르면
					var output = '';
					var chk = $('input:checkbox[name=language]').is(":checked");
					$('input:checkbox[name=language]:checked').each(function(index, item) {
						if (index != 0) {
							output += ', ';
						}
						checkBoxArr.push($(this).attr('id'));
						output += $(this).val();
						$('#langs').html(output);
					});
					myDropdown.classList.remove('show');
				});
				if($('input:checkbox[name=language]').is(":checked") == false){		// 체크를 풀고
					$('#conf2').click(function() {			// 확인을 누르면
						$('#langs').html('');					// 텍스트에 체크를 푼 목록을 없앤다
						myDropdown.classList.remove('show');
					});
				}
			});
			$('#init2').click(function() {
				$("input:checkbox[name=language]").prop("checked", false);
				$('#langs').html('');
				$('#conf2').click(function() {			// 확인을 누르면
					$('#wa').html('');
					checkBoxArr=[];
				});
			});
	}); */
		// 외국어 END
		
		// 근무지역 START
		$('#conf3').click(function() {
			myDropdown_wa.classList.remove('show');
		});
		$('#cancel3').click(function() {
			myDropdown_wa.classList.remove('show');
		});
		
		$('.dropbtn_jw').click(function() {
			myDropdown_wa.classList.remove('show')
		});
		$('.dropbtn').click(function() {
			myDropdown_wa.classList.remove('show')
		});

		$('.dropbtn_wa').click(function() {
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
			$('#init3').click(function() {
				$("input:checkbox[name=workarea]").prop("checked", false);
				$('#wa').html('');
				$('#conf3').click(function() {			// 확인을 누르면
					$('#wa').html('');
					checkBoxArr=[];
				});
			});

			
			
		});
		// 근무지역 END		
		// 복리후생 START
		$('#conf4').click(function() {
			myDropdown_jw.classList.remove('show');
		});
		$('#cancel4').click(function() {
			myDropdown_jw.classList.remove('show');
		});
		
		$('.dropbtn_wa').click(function() {
			myDropdown_jw.classList.remove('show');
		});
		$('.dropbtn').click(function() {
			myDropdown_jw.classList.remove('show');
		});

		$('.dropbtn_jw').click(function() {
			var checkBoxArr = [];
			if($('input:checkbox[name=jWelfare]').not(":checked")){
				$('#cancel4').click(function() {
					$("input:checkbox[name=jWelfare]").prop("checked", false);
					$('#welFares').html('');
				});
			}
			if($('input:checkbox[name=jWelfare]').is(":checked") == false){	
				if($("#myDropdown_jw").hasClass("dropdown_jw-content show") == false){		
					$('#welFares').html('');				
				}
			}
			$('input:checkbox[name="jWelfare"]:checked').each(function(i){
				checkBoxArr.push($(this).attr('id'));
				if($("#myDropdown_jw").hasClass(".dropdown_jw-content show") == false){
 					$("input:checkbox[name=jWelfare]").prop("checked", false);
					$('#welFares').html('');  
					for (var i=0; i < checkBoxArr.length; i++){
						$('input:checkbox[id="'+checkBoxArr[i]+'"]').prop("checked", true);
					}
					var output = '';
					var chk = $('input:checkbox[name=jWelfare]').is(":checked");
					$('input:checkbox[name=jWelfare]:checked').each(function(index, item) {
						if (index != 0) {
							output += ', ';
						}
						output += $(this).val();
						$('#welFares').html(output);
					});
				}
				$('#cancel4').click(function() {
 					$("input:checkbox[name=jWelfare]").prop("checked", false);
					$('#welFares').html('');  
					for (var i=0; i < checkBoxArr.length; i++){
						$('input:checkbox[id="'+checkBoxArr[i]+'"]').prop("checked", true);
					}
					var output = '';
					var chk = $('input:checkbox[name=jWelfare]').is(":checked");
					$('input:checkbox[name=jWelfare]:checked').each(function(index, item) {
						if (index != 0) {
							output += ', ';
						}
						output += $(this).val();
						$('#welFares').html(output);
					});
					myDropdown_jw.classList.remove('show');
				});

				$('.dropbtn_wa').click(function() {
 					$("input:checkbox[name=jWelfare]").prop("checked", false);
					$('#welFares').html('');  
					for (var i=0; i < checkBoxArr.length; i++){
						$('input:checkbox[id="'+checkBoxArr[i]+'"]').prop("checked", true);
					}
					var output = '';
					$('input:checkbox[name=jWelfare]:checked').each(function(index, item) {
						if (index != 0) {
							output += ', ';
						}
						output += $(this).val();
						$('#welFares').html(output);
					});
					myDropdown_jw.classList.remove('show');
				});
				
				$('.dropbtn').click(function() {
 					$("input:checkbox[name=jWelfare]").prop("checked", false);
					$('#welFares').html('');  
					for (var i=0; i < checkBoxArr.length; i++){
						$('input:checkbox[id="'+checkBoxArr[i]+'"]').prop("checked", true);
					}
					var output = '';
					$('input:checkbox[name=jWelfare]:checked').each(function(index, item) {
						if (index != 0) {
							output += ', ';
						}
						output += $(this).val();
						$('#welFares').html(output);
					});
					myDropdown_jw.classList.remove('show');
				});
			});

			$('input:checkbox[name=jWelfare]').click(function() {	// name이 language인 체크박스에 체크하고
				$('#conf4').click(function() {	//확인을 누르면
					var output = '';
					var chk = $('input:checkbox[name=jWelfare]').is(":checked");
					$('input:checkbox[name=jWelfare]:checked').each(function(index, item) {
						if (index != 0) {
							output += ', ';
						}
						checkBoxArr.push($(this).attr('id'));
						output += $(this).val();
						$('#welFares').html(output);
					});
					myDropdown_jw.classList.remove('show');
				});
				if($('input:checkbox[name=jWelfare]').is(":checked") == false){		// 체크를 풀고
					$('#conf4').click(function() {			// 확인을 누르면
						$('#welFares').html('');					// 텍스트에 체크를 푼 목록을 없앤다
					});
				}
				
			});
			
			$('#init4').click(function() {
				$("input:checkbox[name=jWelfare]").prop("checked", false);
				$('#welFares').html('');
				$('#conf4').click(function() {			// 확인을 누르면
					$('#wa').html('');
					checkBoxArr=[];
				});
			});
		});
		// 복리후생 END
	});
	
		// 모집인원 START
	$(document).ready(function () {
		//있음을 선택하면 직접입력의 텍스트박스 내용을 지우고 보이지 않음
		if($('input:radio[class="nO"]').is(":checked") == true){
			$('input:text[id="tx"]').val("");
		}
		$('input:radio[class="nO"]').change(function(){
		  if($('input:radio[class="nO"]').is(":checked") == true){
		    $('input:text[id="tx"]').val("");
		    $('input:text[id="tx"]').attr("disabled", true);
		    $('input:radio[id="onoff"]').attr("disabled", false);
		  }
		});
		//직접입력을 선택하면 텍스트박스가 보임
		if($('input:radio[id="onoff"]').is(":checked") == true){
			 $('input:text[id="tx"]').attr("disabled", false);
		}
		$('input:radio[id="onoff"]').change(function(){
		  if($('input:radio[id="onoff"]').is(":checked") == true){
			$('input:text[class="nO"]').val("");
		    $('input:text[id="tx"]').attr("disabled", false);
		    $('input:radio[id="onoff"]').attr("disabled", true);
		  }
		});
		 
	});
		// 모집인원 END
		
		// 자격증 추가 START
      $(document).ready (function () { 
          $('.btnRemove').on('click', function () { 
        	  $(this).parent('div').remove (); // remove the textbox
              $(this).remove (); // remove the button
          });               
          $('.btnAdd').click (function () {                                        
              $('.buttons').append (                        
                  '<div><span class="buttons-text">자격증명</span><input type="text" name="license">   <input type="button" class="btnRemove" value="삭제하기"><p></div>'                   
              ); // end append                            
              $('.btnRemove').on('click', function () { 
            	  $(this).parent('div').remove (); // remove the textbox
                  $(this).remove (); // remove the button
              });
          }); // end click                                            
      }); // end ready  
		// 자격증 추가 END
		
		// 우대전공 추가 START
      $(document).ready (function () {
          $('.btnRemove1').on('click', function () { 
              $(this).parent('div').remove (); // remove the textbox
              $(this).remove (); // remove the button
          });            
          $('.btnAdd1').click (function () {                                        
              $('.buttons1').append (                        
                  '<div><span class="buttons1-text">전공명</span><input type="text" name="major">   <input type="button" class="btnRemove1" value="삭제하기"><p></div>'                    
              ); // end append                            
              $('.btnRemove1').on('click', function () { 
                  $(this).parent('div').remove (); // remove the textbox
                  $(this).remove (); // remove the button
              });
          }); // end click                                            
      }); // end ready  
		// 우대전공 추가 END
		// 프로그래밍언어 추가 START
      $(document).ready (function () {
          $('.btnRemove2').on('click', function () { 
              $(this).parent('div').remove (); // remove the textbox
              $(this).remove (); // remove the button
          });            
          $('.btnAdd2').click (function () {                                        
              $('.buttons2').append (                        
                  '<div><span class="buttons2-text">언어명</span><input type="text" name="keyword">   <input type="button" class="btnRemove2" value="삭제하기"><p></div>'                    
              ); // end append                            
              $('.btnRemove2').on('click', function () { 
                  $(this).parent('div').remove (); // remove the textbox
                  $(this).remove (); // remove the button
              });
          }); // end click                                            
      }); // end ready  
		// 프로그래밍언어 추가 END
		
		// 연령제한 START
      $(document).ready (function () { 
			$('.agetext').hide();
		    $('input:text[id="agetext"]').attr("hidden", true);
		$('input:radio[id="a0"]').change(function(){
		  if($('input:radio[id="a0"]').is(":checked") == true){
			$('#a1').attr("disabled", false);
			$('.agetext').hide();
		  }
		});
		$('input:radio[id="a1"]').change(function(){
		  if($('input:radio[id="a1"]').is(":checked") == true){
			  $('#a1').attr("disabled", true);
			  $('.agetext').show();
		  }
		});
      });
		// 연령제한 END
		
		// 경력기간 START
      $(function () { 
		  if($('input:checkbox[id="ca0"]').is(":checked")==true){
			  $('input:checkbox[id="ca2"]').prop('checked', false );
		  }
			if($('input:checkbox[id="ca1"]').is(":checked")==true){
				$('input:checkbox[id="ca2"]').prop('checked', false );
				$('.cDclass').attr("required", true);
				$('.cDclass').attr("disabled", false);
				$('#cD').show();
			}else if($('input:checkbox[id="ca1"]').is(":checked")==false){
				$('.cDclass').attr("required", false);
				$('.cDclass').attr("disabled", true);
				$('.cDclass').val('');
				$('#cD').hide();
			}
			if($('input:checkbox[id="ca1"]').is(":checked")==true){
				$('input:checkbox[id="ca2"]').prop('checked', false );
				$('.cDclass').attr("required", true);
				$('.cDclass').attr("disabled", false);
				$('#cD').show();
			}else if($('input:checkbox[id="ca1"]').is(":checked")==false){
				$('.cDclass').attr("required", false);
				$('.cDclass').attr("disabled", true);
				$('.cDclass').val('');
				$('#cD').hide();
			}
    	  $('input:checkbox[id="ca0"]').change(function(){
    		  if($('input:checkbox[id="ca0"]').is(":checked")==true){
    			  $('input:checkbox[id="ca2"]').prop('checked', false );
    		  }
    	  });
    	  $('input:checkbox[id="ca1"]').change(function(){
			if($('input:checkbox[id="ca1"]').is(":checked")==true){
				$('input:checkbox[id="ca2"]').prop('checked', false );
				$('.cDclass').attr("required", true);
				$('.cDclass').attr("disabled", false);
				$('#cD').show();
			}else if($('input:checkbox[id="ca1"]').is(":checked")==false){
				$('.cDclass').attr("required", false);
				$('.cDclass').attr("disabled", true);
				$('.cDclass').val('');
				$('#cD').hide();
			}
		});
		$('input:checkbox[id="ca2"]').change(function(){
			if($('input:checkbox[id="ca2"]').is(":checked")==true){	
				$('.cDclass').val('');
				$('input:checkbox[id="ca1"]').prop('checked', false );
				$('input:checkbox[id="ca0"]').prop('checked', false );
				$('#cD').hide();
			}
		});
      });
		// 경력기간 END
		// 연봉 START
	$(function() {
		var a = $("#wag option:selected").val();
		if(a == "연봉"|| a == "월급"){
			$('#daySal').hide();
			$('#da1').attr("required", false);
			$('#yearSal').show();
			$('#ye1').attr("required", true);
			$('#da1').val('');
		}else if(a == "주급"|| a == "일급"|| a == "시급"){
			$('#daySal').show();
			$('#da1').attr("required", true);
			$('#yearSal').hide();
			$('#ye1').attr("required", false);
			$('#ye1').val('');
		}else if(a == "면접 후 결정"){
			$('#daySal').hide();
			$('#yearSal').hide()
			$('#ye1').attr("required", false);
			$('#da1').attr("required", false);
			$('#ye1').val('');
			$('#da1').val('');
		}
		$("#wag").change(function() {
			var a = $("#wag option:selected").val();
			if(a == "연봉"|| a == "월급"){
				$('#daySal').hide();
				$('#da1').attr("required", false);
				$('#yearSal').show();
				$('#ye1').attr("required", true);
				$('#da1').val('');
			}else if(a == "주급"|| a == "일급"|| a == "시급"){
				$('#daySal').show();
				$('#da1').attr("required", true);
				$('#yearSal').hide();
				$('#ye1').attr("required", false);
				$('#ye1').val('');
			}else if(a == "면접 후 결정"){
				$('#daySal').hide();
				$('#yearSal').hide()
				$('#ye1').attr("required", false);
				$('#da1').attr("required", false);
				$('#ye1').val('');
				$('#da1').val('');
			}
		});
	});
		// 연봉 END
		
		// 근무요일 START
	$(function() {
		var a = $("#ww option:selected").text();
		if(a=="직접입력"){
			$('#wwText').show();
		}else if(a!="직접입력"){
			$('#wwText').hide();
			$('#wwText').val("");
		}
		$("#ww").change(function() {
			var a = $("#ww option:selected").text();
			if(a=="직접입력"){
				$('#wwText').show();
			}else if(a!="직접입력"){
				$('#wwText').hide();
				$('#wwText').val("");
			}
		});
	});
		// 근무요일 END
		// 근무시간 START
	$(function() {
		var a = $("#wt option:selected").text();
		if(a=="직접입력"){
			$('#wtText').show();
		}else if(a!="직접입력"){
			$('#wtText').hide();
			$('#wtText').val("");
		}
		$("#wt").change(function() {
			var a = $("#wt option:selected").text();
			if(a=="직접입력"){
				$('#wtText').show();
			}else if(a!="직접입력"){
				$('#wtText').hide();
				$('#wtText').val("");
			}
		});
	});
		// 근무시간 END
//------------------드랍다운 START---------------------------------
	// 외국어 드랍다운 START
function openDropdown(evt, option) {
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablinks");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" active", "");
  }
  document.getElementById(option).style.display = "block";
  evt.currentTarget.className += " active";
}	
	// 외국어 드랍다운 END
	// 근무지역 드랍다운	START
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
	// 근무지역 드랍다운 END
	// 복리후생 드랍다운	START
function openDropdown_jw(evt, option) {
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent_jw");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablinks_jw");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" active", "");
  }
  document.getElementById(option).style.display = "block";
  evt.currentTarget.className += " active";
}
	// 복리후생 드랍다운 END

//-------------------------------------------------------------------
 

/* When the user clicks on the button, 	
toggle between hiding and showing the dropdown content */
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


//		드랍다운 END

 // -----모달 START ------
window.onload = function() {
	 
    function onClick1() {
        document.querySelector('.modal_wrap1').style.display ='block';
        document.querySelector('.black_bg1').style.display ='block';
        document.querySelector('body').style.overflow ='hidden';
    }   
    function onClick2() {
        document.querySelector('.modal_wrap').style.display ='block';
        document.querySelector('.black_bg').style.display ='block';
        document.querySelector('body').style.overflow ='hidden';
    }   
    function offClick() {
        document.querySelector('body').style.overflow ='scroll';
        document.querySelector('.modal_wrap').style.display ='none';
        document.querySelector('.black_bg').style.display ='none';
        document.querySelector('.modal_wrap1').style.display ='none';
        document.querySelector('.black_bg1').style.display ='none';
    }
 
    document.getElementById('modal_btn1').addEventListener('click', onClick1);
    document.getElementById('modal_btn2').addEventListener('click', onClick2);
    document.querySelector('.modal_close').addEventListener('click', offClick);
    document.getElementById('cancel1').addEventListener('click', offClick);
    document.getElementById('conf1').addEventListener('click', offClick);
    document.getElementById('cancel').addEventListener('click', offClick);
    document.getElementById('conf').addEventListener('click', offClick);
 
};
// ----- 모달 END ------


</script>