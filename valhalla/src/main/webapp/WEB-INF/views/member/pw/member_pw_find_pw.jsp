<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../../common/memberCss.jsp"%>
<%@ include file="../../common/header.jsp"%>
<hr class="layout">
<div id="container">
	<div id="contents">
		<span class="xans-element- xans-layout xans-layout-mobileaction RTMB ">
			<a href="#none" onclick="history.go(-1);return false;">
				<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24" class="icon">
					<path stroke="#000" stroke-width="1.5" d="M9.826 20L2 12.5 9.826 5M2 12.5h20"></path>
				</svg>뒤로가기
			</a> 
		</span>
		<div class="path">
			<span>현재 위치</span>
			<ol>
				<li><a href="/index.do">홈</a></li>
				<li title="현재 위치"><strong>비밀번호 찾기</strong></li>
			</ol>
		</div>
		<div class="titleArea">
			<h2>비밀번호 찾기</h2>
		</div>
		<div module="member_changepasswd" class="memberArea gInnerMargin">
			<!--@css(/css/module/member/change_passwd.css)-->
			<div class="ec-base-help {$display_change_password|display}"></div>
			<div class="ec-base-box typeMember">
				<div class="content">
					<p class="{$display_update_event|display}">가입하신 이메일으로 비밀번호 찾기가
						가능합니다.</p>
					<br />
					<br />
					<br />
					<fieldset class="content">
						<legend>비밀번호 찾기</legend>
						<ul class="ec-base-desc gVer">
							<li id="name_view" class="name" style=""><strong class="term" id="name_lable">이름</strong>
								<div class="desc">
									<input type="text" id="user_name" class="input-style01" name="user_name" style="width: 500px;">
								</div>
							</li>
							<li id="ssn_view" class="ssn_no" style="display: none;"><strong class="term" id="ssn_name"></strong></li>
							<li id="email_view" class="email" style=""><strong class="term">이메일로 찾기</strong>
								<div class="desc">
									<input type="text" id="email" class="input-style01" name="email" style="width: 400px;">
									<button type="button" class="btnNormal" id="emailCertBtn"">인증번호</button>
								</div>
							</li>
							<li id="email_view" class="email" style=""><strong class="term">인증번호 입력</strong>
								<div class="desc">
									<input type="text" id="emailCertNum" class="input-style01" name="emailCertNum" style="width: 200px;">
									<button type="button" class="btnNormal" id="emailCertConfirmBtn"">확인</button>
								</div>
							</li>
						</ul>
					</fieldset>
				</div>
			</div>
			<div class="ec-base-button gBottom">
				<a href="#none" class="btnSubmitFix sizeM" id="searchPw">비밀번호 찾기</a>
			</div>
		</div>
	</div>
</div>
<hr class="layout">
</div>
<hr class="layout">
<input type="hidden" id="emailCertGubn" name="emailCertGubn" value="0"/>
<input type="hidden" id="certNum" name="certNum" value=""/>
<form id="movedPwResultForm" method="post" action="/memberChangePw.do">
	<input type="hidden" id="userName" name="userName" value=""/>
	<input type="hidden" id="userEmail" name="email" value=""/>
</form>
<%@ include file="../../common/footer.jsp"%>
</body>
<script type="text/javascript">
$(function(){
	
	//비밀번호 찾기 클릭이벤트
	$('#searchPw').click(()=>{
		var userName = $('#user_name').val();
		var email = $('#email').val();
		
		if(userName == ""){
			alert("이름을 확인해주세요.");
			$('#user_name').focus();
			return;
		} else if(email == ""){
			alert("이메일을 확인해주세요.");
			$('#email').focus();
			return;
		} else if(emailCertGubn == '0'){
			alert("이메일 인증을 해주세요.");
			return;
		} else if(emailCertNum == ""){
			alert("이메일 인증을 해주세요.");
			return;
		}
		
		$.ajax({
			type : 'post',
			url : '/userInfo.do',
			data : { userName : userName , email : email },
			dataType : 'json',
			success : function(data){
				console.log(data);
				if(data.chkNum < 1){
					alert("해당유저가 존재하지 않습니다.");
					return;
				}
				
				$('#userName').val(userName);
				$('#userEmail').val(email);
				
				//비밀번호 수정페이지 submit
				$('#movedPwResultForm').submit();
			}
		});
		
	});
	
	//인증번호 클릭이벤트
	$('#emailCertBtn').click(()=>{
		var email = $('#email').val)();
	
		if(email == ""){
			alert('이메일을 입력해주세요.');
			$('#email').focus();
			return;
		}
	
		$.ajax({
			type : 'post',
			url : '/emailCert.do',
			data : { email : email},
			dataType : 'json',
			success : function(data){
				console.log(data.certNum);
				$('#certNum').val(data.certNum);
				alert("인증번호를 보냈습니다.");
			}
		});
	});
	
	//인증번호 확인 클릭이벤트
	$('#emailCertConfirmBtn').click(()=>{
		var emailCertNum = $('#emailCertNum').val();
		var certNum = $('#certNum').val();
		
		if(certNum != emailCertNum){
			alert("인증번호가 맞지 않습니다.");
			return;
		} else {
			$('#emailCertGubn').val('1');
			alert("인증이 완료 되었습니다.");
			return;
		}
	});
});
</script>
</html>