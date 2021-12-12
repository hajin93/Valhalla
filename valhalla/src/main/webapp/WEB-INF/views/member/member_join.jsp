<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/memberCss.jsp"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../common/header.jsp"%>
<hr class="layout">
<aside id="aside" class="xans-element- xans-layout xans-layout-slidepackage ">
	<nav class="navigation-menu" role="navigation">
		<div class="navigation-menu__member">
			<div class="xans-element- xans-layout xans-layout-statelogoff ">
				<a href="/member/agreement.html">Join</a> 
				<a href="/member/login.html">Login</a> <a href="/order/basket.html" class="RTMI">Cart
					<span class="count displaynone EC-Layout_Basket-count-display">
						<span class="EC-Layout-Basket-count">0</span>
					</span>
				</a>
			</div>
		</div>
	</nav>
	<button type="button" class="btnClose">
		<i aria-hidden="true" class="icon icoClose"></i>닫기
	</button>
</aside>
<div id="container">
	<div id="contents">
		<span class="xans-element- xans-layout xans-layout-mobileaction RTMB ">
			<a href="#none" onclick="history.go(-1);return false;"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24" class="icon">
				<path stroke="#000" stroke-width="1.5" d="M9.826 20L2 12.5 9.826 5M2 12.5h20"></path></svg>뒤로가기
			</a> 
		</span>
		<div class="path">
			<span>현재 위치</span>
			<ol>
				<li><a href="/">홈</a></li>
				<li title="현재 위치"><strong>회원 가입</strong></li>
			</ol>
		</div>
		<div class="titleArea">
			<h2>회원 가입</h2>
		</div>
		<div class="ec-base-step">
			<ol class="step">
				<li>1. 약관동의</li>
				<li class="selected">2. 정보입력</li>
				<li>3. 가입완료</li>
			</ol>
		</div>
		<div class="xans-element- xans-member xans-member-join memberArea"> 		
			<div class="displaynone ">
				<div class="titleArea titleArea--middle displaynone">
					<h3>회원인증</h3>
							</div>
						</div>
						<div class="ec-base-table typeWrite1 ">
							<table border="1">
								<caption>회원 기본정보</caption>
								<colgroup>
									<col style="width: 190px;">
									<col style="width: auto;">
								</colgroup>
								<tbody>
									<tr class="">
										<th scope="row">아이디 <img src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg" class="icon icoRequired" alt="필수"></th>
										<td>
										<input id="user_id" name="user_id" fw-filter="isFill&amp;isFill&amp;isMin[4]&amp;isMax[16]&amp;isIdentity" fw-label="아이디" fw-msg="" class="inputTypeText" placeholder="" value="" type="text"> 
											<button type="button" class="btnNormal" id="userIdConfirm">중복확인</button><span class="txtInfo">(영문소문자/숫자, 4~16자)</span>
										</td>
									</tr>
									<tr>
										<th scope="row">비밀번호 <img src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg" class="icon icoRequired" alt="필수"></th>
										<td>
											<div class="eTooltip">
												<input id="user_pw" name="user_pw" fw-filter="isFill&amp;isMin[4]&amp;isMax[16]" fw-label="비밀번호" fw-msg="" autocomplete="off" maxlength="16" 0="disabled" value="" type="password">
												<div class="ec-base-tooltip typeUpper">
													<div class="content">
														<strong>※ 비밀번호 입력 조건</strong>
														<ul class="typeDash txtInfo">
															- 대소문자/숫자/특수문자 중 2가지 이상 조합, 10자~16자
															<br> - 입력 가능 특수문자
															<br> &nbsp;&nbsp;&nbsp; ~ ` ! @ # $ % ^ ( ) _ - = {
															} [ ] | ; : &lt; &gt; , . ? /
															<br> - 공백 입력 불가능
														</ul>
													</div>
													<a href="#none" class="btnClose" tabindex="-1">닫기</a>
													<span class="edge"></span>
												</div>
											</div> <span class="txtInfo">(영문 대소문자/숫자/특수문자 중 2가지 이상 조합, 10자~16자)</span>
										</td>
									</tr>
									<tr>
										<th scope="row">비밀번호 확인 <img src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg" class="icon icoRequired" alt="필수"></th>
										<td>
											<input id="user_pw_confirm" name="user_pw_confirm" fw-filter="isFill&amp;isMatch[passwd]" fw-label="비밀번호 확인" fw-msg="비밀번호가 일치하지 않습니다." autocomplete="off" maxlength="16" 0="disabled" value="" type="password">
											<p class="txtInfo" id="pwConfirmMsg"></p>
										</td>
									</tr>
									<tr>
										<th scope="row" id="nameTitle">이름 <img src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg" class="icon icoRequired" alt="필수"></th>
										<td>
										<span id="nameContents">
											<input type="text" name="user_name" id="user_name" maxlength="20">
										</span>	
									</tr>
									<tr style="display: none;">
										<th scope="row" id="ssnTitle"></th>
										<td id="ssnContents"></td>
									</tr>
									<tr class="">
										<th scope="row">주민등록번호 <img src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg" class="icon icoRequired displaynone" alt="필수"></th>
										<td class="formGroup code">
											<input id="jumin1" name="jumin1" maxlength="6" value="" type="text" style="width:120px;">-<input id="jumin2" name="jumin2" maxlength="7" value="" type="text" style="width:130px;">
										</td>
									</tr>
									<tr class="">
										<th scope="row">휴대전화 <img src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg" class="icon icoRequired displaynone" alt="필수"></th>
										<td class="formGroup code">
											<select id="mobile1" name="mobile1" fw-filter="isNumber" fw-label="휴대전화" fw-alone="N" fw-msg="">
												<option value="010">010</option>
												<option value="011">011</option>
											</select>-<input id="mobile2" name="mobile2" maxlength="4" value="" type="text">-<input id="mobile3" name="mobile3" maxlength="4" value="" type="text">
										</td>
									</tr>
									<tr>
										<th scope="row">이메일 <img src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg" class="icon icoRequired" alt="필수"></th>
										<td>
											<input id="email" name="email" fw-filter="isFill&amp;isEmail" fw-label="이메일" fw-alone="N" fw-msg="" value="" type="text">
											<button type="button" id="emailCertBtn" class="btnNormal displaynone" >인증번호받기</button>
											<p class="txtInfo" id="emailMsg"></p>
										</td>
									</tr>
									<tr class="row" id="confirm_verify_email">
										<th scope="row">인증번호 
										<img src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg" class="icon icoRequired" alt="필수"></th>
										<td class="formGroup">
											<div class="verify">
												<div>
													<input id="verify_sms_number" name="verify_sms_number" fw-filter="isMax[15]" fw-label="verify_sms_number" fw-msg="" class="inputTypeText" placeholder="" maxlength="15" value="" type="text">
												</div>
												<span class="time" id="expiryTime"></span>
											</div>
											<button type="button" class="btnNormal" id="emailConfirmBtn">확인</button>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="ec-base-button gBottom">
							<a href="#none" class="btnSubmitFix sizeM" id="joinBtn">회원가입</a>
						</div>
					</div>
				</div>
			</form>
		</div>
<hr class="layout">
</div>
<hr class="layout">
<input type="hidden" id="emailCertGubn" name="emailCertGubn" value="0"/>
<input type="hidden" id="duplicateGubn" name="duplicateGubn" value="0"/>
<input type="hidden" id="emailCertNum" name="emailCertNum" value=""/>
<form id="joinForm" method="post" action="/memberJoinResult.do">
	<input type="hidden" id="userId" name="userId" value=""/>
	<input type="hidden" id="userPw" name="userPw" value=""/>
	<input type="hidden" id="userName" name="userName" value=""/>
	<input type="hidden" id="userJumin" name="userJumin" value=""/>
	<input type="hidden" id="phone" name="phone" value=""/>
	<input type="hidden" id="writeEmail" name="email" value=""/>
	<input type="hidden" id="rgstTime" name="rgstTime" value=""/>
	<input type="hidden" id="udtTime" name="udtTime" value=""/>
	<input type="hidden" id="gubn" name="gubn" value="U"/>
</form>
<%@ include file="../common/footer.jsp"%>
</body>
<script type="text/javascript">
$(document).ready(function(){
	
	$('#userIdConfirm').click(()=>{
		var user_id = $("#user_id").val();
		
		//아이디 중복확인
		$.ajax({
			type : 'post',
			url : '/duplicate.do',
			data : {userId : user_id},
			dataType : 'json',
			success : function(data){
				var chkNum = data.chkNum;
				if(chkNum == 1){
					alert("중복된 아이디 입니다.");
					return;
				} else {
					$('#duplicateGubn').val('1');
					alert("사용 가능한 아이디 입니다.");
					return;
				}
			}
		});
	});
	
	//이메일 인증버튼 클릭이벤트
	$('#emailCertBtn').click(()=>{
		var email = $('#email').val();
		
		if(email == ""){
			alert('이메일을 입력해주세요.');
			$('#email').focus();
			return;
		}
		
		$.ajax({
			type:'post',
			url:'/emailCert.do',
			data:{email: email},
			dataType:'json',
			success:function(data){
				console.log(data);
				$('#emailCertNum').val(data.certNum);
				alert("인증번호를 보냈습니다.");
			}
		});
	});
	
	$('#emailConfirmBtn').click(()=>{
		var num = $('#verify_sms_number').val();
		var emailCertNum = $('#emailCertNum').val();
		
		if(num == emailCertNum){
			$('#emailCertGubn').val('1');
			alert('인증완료 되었습니다.');
			return;
		} else {
			alert('인증번호를 확인해주세요.');
			$('#verify_sms_number').focus();
			return;
		}
	});
	
	$('#joinBtn').click(()=>{
		var userId = $('#user_id').val();
		var userPw = $('#user_pw').val();
		var userPwCon = $('#user_pw_confirm').val();
		var userName = $('#user_name').val();
		var userJumin = $('#jumin1').val() + "-" + $('#jumin2').val();
		var jumin1 = $('#jumin1').val();
		var jumin2 = $('#jumin2').val();
		var phone = $('#mobile1 option:selected').val() + "-" + $('#mobile2').val() + "-" + $('#mobile3').val();
		var mobile2 = $('#mobile2').val();
		var mobile3 = $('#mobile3').val();
		var email = $('#email').val();
		var emailCertGubn = $('#emailCertGubn').val();
		var emailCertNum = $('#emailCertNum').val();
		var duplicateGubn = $('#duplicateGubn').val();
		var gubn = "";
		
		if(userId == "admin"){
			gubn = "M";
		} else {
			gubn = "U";
		}
		
		if(userId == ""){
			alert("아이디를 확인해주세요.");
			$('#user_id').focus();
			return;
		} else if(duplicateGubn == '0'){
			alert("중복확인을 해주세요.");
			return;
		} else if(userPw == ""){
			alert("비밀번호을 확인해주세요.");
			$('#user_pw').focus();
			return;
		} else if(userPwCon == ""){
			alert("비밀번호 확인을 확인해주세요.");
			$('#user_pw_confirm').focus();
			return;
		} else if(userPw != userPwCon){
			alert("비밀번호와 비밀번호 확인이 일치하지 않습니다.");
			$('#user_pw').focus();
			return;
		} else if(userName == ""){
			alert("이름을 확인해주세요.");
			$('#user_name').focus();
			return;
		} else if(jumin1 == ""){
			alert("주민등록번호를 확인해주세요.");
			$('#jumin1').focus();
			return;
		} else if(jumin2 == ""){
			alert("주민등록번호를 확인해주세요.");
			$('#jumin2').focus();
			return;
		} else if(mobile2 == ""){
			alert("휴대전화번호를 확인해주세요.");
			$('#mobile2').focus();
			return;
		} else if(mobile3 == ""){
			alert("휴대전화번호를 확인해주세요.");
			$('#mobile3').focus();
			return;
		} else if(email == ""){
			alert("이메일을 확인해주세요.");
			$('#email').focus();
			return;
		} else if(emailCertGubn == '0'){
			alert("인증번호받기를 진행해주세요.");
			return;
		}
		
		//현재날짜 구하기
		var today = new Date();
		var year = today.getFullYear(); // 년도
		var month = today.getMonth() + 1;  // 월
		var date = today.getDate();  // 날짜
		var time = "";
		if(date < 10){
			date = "0" + date;
		}
		
		time = year + '-' + month + '-' + date;
		
		$("#userId").val(userId); 	
		$("#userPw").val(userPw); 	
		$("#userName").val(userName); 	
		$("#userJumin").val(userJumin); 	
		$("#phone").val(phone); 		
		$("#writeEmail").val(email);		
		$("#rgstTime").val(time); 	
		$("#udtTime").val(time);
		$('#gubn').val(gubn);
		
		$('#joinForm').submit();
		
		
	});
});
</script>
</html>


