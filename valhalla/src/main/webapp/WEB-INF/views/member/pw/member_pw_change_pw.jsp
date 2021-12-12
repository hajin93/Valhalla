<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../../common/memberCss.jsp"%>
<link rel="stylesheet" href="https://static.mlb-korea.com/pc/static/css/customer.css">
<!DOCTYPE html>
<html lang="ko">
<head>

<%@ include file="../../common/header.jsp"%>
<hr class="layout">

<div id="container">
	<div id="contents">
		<!--@layout(/layout/basic/layout.html)-->
		<div class="path">
			<span>현재 위치</span>
			<ol>
				<li><a href="/">홈</a></li>
				<li title="현재 위치"><strong>비밀번호 변경</strong></li>
			</ol>
		</div>
		<div class="titleArea">
			<h2>비밀번호 변경</h2>
		</div>
		<div module="member_changepasswd" class="memberArea gInnerMargin">
			<!--@css(/css/module/member/change_passwd.css)-->
			<div class="ec-base-help {$display_change_password|display}"></div>
			<div class="ec-base-box typeMember">
				<div class="content">
					<p class="{$display_update_event|display}">새로운 비밀번호를 입력하여 주세요.</p><br/><br/><br/>
					<fieldset>
						<legend>비밀번호 변경</legend>
						<dl class="ec-base-desc gVer">
							<dt>새 비밀번호</dt>
							<dd>
								<input type="password" id="user_pw" class="input-style01" name="user_pw" style="width:515px;">
							</dd>
							<dt>새 비밀번호 확인</dt>
							<dd><input type="password" id="user_pw_chk" class="input-style01" name="user_pw_chk" style="width:515px;"></dd>
						</dl>
					</fieldset>
				</div>
			</div>
			<div class="ec-base-button gBottom">
				<a href="#none" class="btnNormalFix sizeM {$display_change_password|display}" id="cancelBtn">취소</a> 
				<a href="#none" class="btnSubmitFix sizeM" id="udtPwBtn">비밀번호 변경</a>
			</div>
		</div>
	</div>
</div>

<%@ include file="../../common/footer.jsp"%>
<input type="hidden" id="userName" name="userName" value="${userName }"/>
<input type="hidden" id="email" name="email" value="${email }"/>
<form id="movedLoginForm" method="post" action="/memberLogin.do"></form>
</body>
<script type="text/javascript">
$(function(){
	var userName = $('#userName').val();
	var email = $('#email').val();
	var userPw = $('#user_pw').val();
	var userPwChk = $('#user_pw_chk').val();
	
	$('#udtPwBtn').click(()=>{
		if(userPw == ""){
			alert("비밀번호를 확인해주세요.");
			$('#user_pw').focus();
			return;
		} else if(userPwChk == ""){
			alert("비밀번호확인을 확인해주세요.");
			$('#user_pw_chk').focus();
			return;
		} else if(userPw != userPwChk){
			alert("비밀번호확인을 확인해주세요.");
			$('#user_pw_chk').focus();
			return;
		}
		
		$.ajax({
			type : 'post',
			url : '/updatePw.do',
			data : {userName : userName, email : email, userPw : userPw},
			dataType : 'json',
			success : function(data){
				if(data.msg == ""){
					alert(data.msg);
					$('#movedLoginForm').submit();
				}
			}
		});
	});
	
	$('#cancelBtn').click(()=>{
		$('#movedLoginForm').attr("action","/memberFindPw.do");
		$('#movedLoginForm').submit();
	});
});
</script>
</html>