<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../common/memberCss.jsp" %>
<%@ include file="../common/header.jsp" %>

<hr class="layout">
	<!-- <aside id="aside" class="xans-element- xans-layout xans-layout-slidepackage ">
		<nav class="navigation-menu" role="navigation">
			<div class="navigation-menu__member">
				<div class="xans-element- xans-layout xans-layout-statelogoff ">
					<a href="/member/agreement.html">Join</a> 
					<a href="/member/login.html">Login</a> 
					<a href="/order/basket.html" class="RTMI">Cart 
						<span class="count displaynone EC-Layout_Basket-count-display">
						<span class="EC-Layout-Basket-count">0</span></span>
					</a>
				</div>
			</div>
		</nav>
		<button type="button" class="btnClose">
			<i aria-hidden="true" class="icon icoClose"></i>닫기
		</button>
	</aside> -->
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
					<li><a href="/">홈</a></li>
					<li title="현재 위치"><strong>로그인</strong></li>
				</ol>
			</div>
			<div class="titleArea">
				<h2>Login</h2>
			</div>
			<form id="member_form_1403164891" name="" action="/exec/front/Member/login/" method="post" target="_self" enctype="multipart/form-data">
				<input id="returnUrl" name="returnUrl" value="/index.html" type="hidden"> 
				<input id="forbidIpUrl" name="forbidIpUrl" value="/index.html" type="hidden"> 
				<input id="certificationUrl" name="certificationUrl" value="/intro/adult_certification.html" type="hidden"> 
				<input id="sIsSnsCheckid" name="sIsSnsCheckid" value="" type="hidden">
				<input id="sProvider" name="sProvider" value="" type="hidden">
				<div id="member_login_module_id" class="xans-element- xans-member xans-member-login gInnerMargin ">
			 		<div class="login">
						<div class="ec-base-tab typeNav gFlex displaynone">
							<ul class="menu">
								<li class="selected"><a href="#member">회원</a></li> 
							</ul>
						</div>
						<fieldset class="form">
							<legend>회원로그인</legend>
							<label class="id ePlaceholder" title="아이디">
							<input id="user_id" name="user_id" fw-filter="isFill" fw-label="아이디" fw-msg="" class="inputTypeText" placeholder="아이디" value="" type="text"></label>
								<label class="password ePlaceholder" title="비밀번호">
								<input id="user_pw" name="user_pw" fw-filter="isFill&amp;isMin[4]&amp;isMax[16]" fw-label="패스워드" fw-msg="" autocomplete="off" value="" type="password" placeholder="Password"></label>
							<div class="login__button">
								<a href="#none" class="btnSubmit gFull sizeL" id="loginBtn">로그인</a>
							</div>
							<ul class="login__util">
								<li><a href="#" id="searchId">아이디찾기</a></li>
								<li><a href="#" id="searchPw">비밀번호찾기</a></li>
								<li><a href="#" id="joinBtn">회원가입</a></li>
							</ul>
						</fieldset>
					</div>
				</div>
			</form>
		</div>
		<hr class="layout">
	</div>
<hr class="layout">
<%@ include file="../common/footer.jsp" %>	
</body>
<form id="movedPage" method="post" action=""></form>
<form id="movedIndex" method="post" action="/index.do">
	<input type="hidden" id="sessionUserId" name="userId" value=""/>
	<input type="hidden" id="sessionUserName" name="userName" value=""/>
</form>
<script type="text/javascript">
$(function(){
	
	//아이디 찾기 페이지이동
	$('#searchId').click(()=>{
		$('#movedPage').attr("action","/memberFindId.do");
		$('#movedPage').submit();
	});
	
	//비밀번호 찾기 페이지이동
	$('#searchPw').click(()=>{
		$('#movedPage').attr("action","/memberFindPw.do");
		$('#movedPage').submit();
	});
	
	//회원가입 페이지이동
	$('#joinBtn').click(()=>{
		$('#movedPage').attr("action","/memberAgreement.do");
		$('#movedPage').submit();
	});
	
	//로그인버튼 클릭이벤트
	$('#loginBtn').click(()=>{
		var userId = $('#user_id').val();
		var userPw = $("#user_pw").val();
		
		if(userId == ""){
			nullCheckAlert("user_id", "아이디를 입력해주세요.");
			return;
		} else if(userPw == ""){
			nullCheckAlert("user_pw", "비밀번호를 입력해주세요.");
			return;
		}
		
		//존재하는 유저인지 체크
		$.ajax({
			type : 'post',
			url : '/loginChking.do',
			data : { userId : userId, userPw : userPw},
			dataType : 'json',
			success : function(data){
				console.log(data);
				if(data.chkNum == 1){
					nullCheckAlert("nonFocus", "로그인에 성공하셨습니다.");
					
					//세션 올려두기
					localStorage.setItem("userId", data.list.userId);
					localStorage.setItem("userNo", data.list.userNo);
					localStorage.setItem("userName", data.list.userName);
					localStorage.setItem("phone", data.list.phone);
					localStorage.setItem("email", data.list.email);
					localStorage.setItem("gubn", data.list.gubn);//관리자인지 유저인지 구분하는 구분값 (m관리자 , u사용자)
					
					if(data.list.zipcode){
	                  localStorage.setItem("zipcode" , data.list.zipcode);
	                }
	                if(data.list.address){
	                   localStorage.setItem("address", data.list.address);
	                }
	                if(data.list.detailAddress){
	                   localStorage.setItem("detailAddress", data.list.detailAddress);
	                }
					
					$('#sessionUserId').val(data.list.userId);
					$('#sessionUserName').val(data.list.userName);
					
					$("#movedIndex").submit();
					
					return;
				} else {
					nullCheckAlert("nonFocus", "로그인에 실패하셨습니다.");
					return;
				}
			}
		});
	});
});
</script>
</html>