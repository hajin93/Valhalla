<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<body>
<%@ include file="../common/myshopCss.jsp"%>
<%@ include file="../common/memberCss.jsp" %>
<%@ include file="../common/header.jsp" %>

<div id="myshopMain" module="myshop_main">
   <div id="container">
	   <div id="contents">
			<span class="xans-element- xans-layout xans-layout-mobileaction RTMB ">
				<a href="#none" onclick="history.go(-1);return false;">
					<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24" class="icon">
						<path stroke="#000" stroke-width="1.5" d="M9.826 20L2 12.5 9.826 5M2 12.5h20"></path>
					</svg>뒤로가기
				</a> 
			</span>
			<div class="titleArea">
				<h2>비밀번호 확인</h2>
			</div>
			<div module="member_changepasswd" class="memberArea gInnerMargin">
				<div class="ec-base-help {$display_change_password|display}"></div>
				<div class="ec-base-box typeMember">
					<div class="content">
						<fieldset class="content">
							<div class="desc">
								<br/><br/><br/><br/><br/><br/>
								<input type="password" id="user_pw" name="user_pw" class="input-style01" style="width:300px;">
								<button type="button" class="btnNormal" id="confirm">확인</button>
							</div>
						</fieldset>
					</div>
				</div>
			</div>
			<%@ include file="../common/mypageMenu.jsp"%>
		</div>
	</div>
</div>
<%@ include file="../common/footer.jsp"%>
<form id="movedJspPage" method="post" action="/memberModify.do">
	<input type="hidden" id="userId" name="userId" value=""/>
</form>
</body>
<script type="text/javascript">
$(()=>{
	
	//확인버튼 클릭이벤트
	$('#confirm').click(()=>{
		userPwCompare();
	});
});

let userPwCompare = (()=>{
	$.ajax({
		type : 'post',
		url : '/userPwCompare.do',
		data : { userPw : $('#user_pw').val(), userId : localStorage.getItem("userId") },
		dataType : 'json',
		success : ((data)=> {
			if(data.chkNum == 0){
				nullCheckAlert("user_pw", "비밀번호가 맞지 않습니다.");
				return;
			} else if(data.chkNum == 1){
				$('#userId').val(localStorage.getItem("userId"));
				$('#movedJspPage').submit();
			}
		})
	});
});
</script>
</html>