<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<body>
<%@ include file="../common/myshopCss.jsp"%>
<%@ include file="../common/memberCss.jsp"%>
<%@ include file="../common/header.jsp"%>

<div id="myshopMain" module="myshop_main">
   <div id="container">
      <div id="contents">
         <div class="titleArea">
            <h2>회원 정보 수정</h2>
         </div>
      <div class="myshopArea">
         <div module="member_edit">
            <div class="titleArea titleArea--middle">
               <h3>기본정보</h3>
               <p style="float:right;">
                  <img src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg" class="icon icoRequired" alt="필수" /> 필수입력사항
               </p>
            </div>
            <div class="ec-base-table typeWrite">
               <table border="1">
                  <caption>회원 기본정보</caption>
                  <colgroup>
                     <col style="width: 190px;" />
                     <col style="width: auto;" />
                  </colgroup>
                  <tbody>
                     <tr class="{$display_use_id|display}">
                        <th scope="row">아이디 <img src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg" class="icon icoRequired" alt="필수" /></th>
                        <td>${list.userId }</td>
                     </tr>
                     <tr class="{$display_is_certification|display}">
                        <th scope="row">비밀번호 <img src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg" class="icon icoRequired" alt="필수" /></th>
                        <td>
                           <input id="user_pw" name="user_pw" fw-filter="isFill&amp;isMin[4]&amp;isMax[16]" fw-label="비밀번호" fw-msg="" autocomplete="off" maxlength="16" 0="disabled" value="" type="password">
                        </td>
                     </tr>
                     <tr class="{$display_is_certification|display}">
                        <th scope="row">비밀번호 확인 <img src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg" class="icon icoRequired" alt="필수" /></th>
                        <td>
                        	<input id="user_pw_chk" name="user_pw_chk" fw-filter="isFill&amp;isMin[4]&amp;isMax[16]" fw-label="비밀번호" fw-msg="" autocomplete="off" maxlength="16" 0="disabled" value="" type="password">
                        </td>
                     </tr>
                     <tr class="{$display_name|display}">
                        <th scope="row" id="{$name_title}">이름 <img
                           src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg"
                           class="icon icoRequired" alt="필수" /></th>
                        <td>${list.userName }</td>
                     </tr>
                     <tr class="{$display_mobile|display}">
                        <th scope="row">이메일 <img
                           src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg"
                           class="icon icoRequired {$display_required_cell|display}"
                           alt="필수" /></th>
                        <td class="formGroup code">
                           <input id="email" name="email" fw-filter="isFill&amp;isMin[4]&amp;isMax[20]" fw-label="이메일" fw-msg="" autocomplete="off" maxlength="26" 0="disabled" value="" type="text">
                           <button type="button" class="btnNormal" id="emailCert">인증번호받기</button>
                        </td>
                     </tr>
                     <tr class="{$display_verify_mobile_confirm|display}"
                        id="{$confirm_verify_mobile}">
                        <th scope="row">이메일 인증번호 
                        <img src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg" class="icon icoRequired" alt="필수" /></th>
                        <td class="formGroup">
                           <input id="emailCertNum" name="emailCertNum" fw-filter="isFill&amp;isMin[4]&amp;isMax[20]" fw-label="인증번호" fw-msg="" autocomplete="off" maxlength="26" 0="disabled" value="" type="text">
                           <button type="button" class="btnNormal" id="emailCertNumConfirm">확인</button>
                        </td>
                     </tr>
                  </tbody>
               </table>
            </div>
            <div class="ec-base-button">
               <span class="gLeft"> <a href="#none" class="btnNormal sizeS"
                  onclick="{$action_func_del}">회원탈퇴</a>
               </span>
            </div>
            <div class="ec-base-button gBottom">
               <a href="javascript:void(0);" class="btnNormalFix sizeM" id="cancelBtn">취소</a> 
               <a href="#none" class="btnSubmitFix sizeM" id="doModify">회원정보수정</a>
            </div>
         </div>
      </div>
         <%@ include file="../common/mypageMenu.jsp"%>
      </div>
   </div>
</div>
<%@ include file="../common/footer.jsp"%>
<input type="hidden" id="emailCertGubn" name="emailCertGubn" value="0"/>
<input type="hidden" id="emailCertNumGubn" name="emailCertNumGubn" value="0"/>
<input type="hidden" id="certNum" name="certNum" value=""/>
<form id="moveUpdate" method="post" action="/updatePw.do">
	<input type="hidden" id="infoUdtId" name="userId" value=""/>
	<input type="hidden" id="infoUdtPw" name="userPw" value=""/>
	<input type="hidden" id="infoEmail" name="email" value=""/>
</form>
<form id="movedMypage" method="post" action="/mypageOrderIndex.do"></form>
</body>
<script type="text/javascript">
$(()=>{
	
	//인증번호받기버튼 클릭이벤트
	$('#emailCert').click(()=>{
		let email = $('#email').val();
		
		if(!email && email == "") {
			nullCheckAlert("email", "이메일을 입력해주세요.");
			return;
		}
		
		//이메일인증번호 전송 ajax
		$.ajax({
			type : 'post',
			url : '/emailCert.do',
			data : { email : email },
			dataType : 'json',
			success : ((data)=>{
				alert("인증번호를 보냈습니다.");
				$('#emailCertGubn').val('1');
				$("#certNum").val(data.certNum);
			})
		});
	});
	
	//인증번호확인버튼 클릭이벤트
	$("#emailCertNumConfirm").click(()=>{
		let emailCertNum = $("#emailCertNum").val();
		let certNum = $('#certNum').val();
		
		if(!emailCertNum && emailCertNum == ""){
			nullCheckAlert("emailCertNum", "인증번호를 입력하세요.");
			return;
		}
		
		if(emailCertNum != certNum){
			nullCheckAlert("nonFocus", "인증번호가 맞지 않습니다.");
			return;
		} else if(emailCertNum == certNum){
			nullCheckAlert("nonFocus", "인증이 완료되었습니다.");
			$('#emailCertNumGubn').val('1');
			return;
		}
	});
	
	//취소버튼
	$('#cancelBtn').click(()=>{
		$("#movedMypage").submit();
	});
	
	//회원정보수정버튼 클릭이벤트
	$('#doModify').click(()=>{
		let user_id = "";
		let user_pw = $('#user_pw').val();
		let userPwChk = $('#user_pw_chk').val();
		let email = $('#email').val();
		let emailCertNum = $('#emailCertNum').val();
		let emailCertGubn = $('#emailCertGubn').val();
		let emailCertNumGubn = $('#emailCertNumGubn').val();
		
		if(localStorage.getItem('userId')){
			user_id = localStorage.getItem('userId');
		}
		
		if(!user_pw && user_pw == ""){
			nullCheckAlert("user_pw", "비밀번호를 입력해주세요.");
			return;
		} else if(!userPwChk && userPwChk == ""){
			nullCheckAlert("user_pw_chk", "비밀번호확인을 입력해주세요.");
			return;
		} else if(!email && email == ""){
			nullCheckAlert("email", "이메일을 입력해주세요.");
			return;
		} else if(emailCertGubn == '0'){
			nullCheckAlert("nonFocus", "이메일인증을 받아주세요.");
			return;
		} else if(!emailCertNum && emailCertNum == ""){
			nullCheckAlert("emailCertNum", "이메일인증번호를 입력해주세요.");
			return;
		} else if(emailCertNumGubn == '0'){
			nullCheckAlert("nonFocus", "인증번호로 인증을 진행해주세요.");
			return;
		} 
		
		$('#infoUdtId').val(user_id);
		$("#infoUdtPw").val(user_pw);
		$('#infoEmail').val(email);
		$('#moveUpdate').submit();
	});
});
</script>
</html>