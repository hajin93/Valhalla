<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../common/memberCss.jsp" %>

<%@ include file="../common/header.jsp" %>

		<hr class="layout">
		<aside id="aside"
			class="xans-element- xans-layout xans-layout-slidepackage ">
			<nav class="navigation-menu" role="navigation">
				<div class="navigation-menu__member">
					<div class="xans-element- xans-layout xans-layout-statelogon ">
						<a href="/exec/front/Member/logout/">Logout</a> <a
							href="/myshop/index.html">My Account</a> <a
							href="/order/basket.html" class="RTMI">Cart <span
							class="count displaynone EC-Layout_Basket-count-display"><span
								class="EC-Layout-Basket-count">0</span></span></a>
					</div>
				</div>
			</nav>
			<button type="button" class="btnClose">
				<i aria-hidden="true" class="icon icoClose"></i>닫기
			</button>
		</aside>
		<div id="container">
			<div id="contents">
				<span
					class="xans-element- xans-layout xans-layout-mobileaction RTMB "><a
					href="#none" onclick="history.go(-1);return false;"><svg
							xmlns="http://www.w3.org/2000/svg" width="24" height="24"
							fill="none" viewBox="0 0 24 24" class="icon">
							<path stroke="#000" stroke-width="1.5"
								d="M9.826 20L2 12.5 9.826 5M2 12.5h20"></path></svg>뒤로가기</a> </span>

				<div class="path">
					<span>현재 위치</span>
					<ol>
						<li><a href="/">홈</a></li>
						<li title="현재 위치"><strong>회원 가입 완료</strong></li>
					</ol>
				</div>

				<div class="titleArea">
					<h2>회원 가입 완료</h2>
				</div>

				<div class="ec-base-step">
					<ol class="step">
						<li>1. 약관동의</li>
						<li>2. 정보입력</li>
						<li class="selected">3. 가입완료</li>
					</ol>
				</div>

				<div
					class="xans-element- xans-member xans-member-joincomplete memberArea gInnerMargin ">
					<div class="joinComplete">
						<p class="desc">회원가입이 완료 되었습니다.</p>

						<div
							class="xans-element- xans-member xans-member-benefitjoin memberSpecial">
							<p>
								<strong><span>${userId }</span> 님</strong>은 <strong>[일반회원]</strong>
								회원이십니다.
							</p>
							<ul>
								<li class="displaynone "><strong> 0원 이상</strong> 구매시 <strong
									class="price">0원</strong>을 추가할인없음 받으실 수 있습니다.</li>
								<li class="displaynone "><strong> 0원 이상</strong> 구매시 <spstrongan
										class="price">0원을 받으실 수 있습니다. </spstrongan></li>
							</ul>
						</div>
						<div class="ec-base-box typeMember gMessage">
							<div class="information">
								<div class="description">
									<dl class="ec-base-desc">
										<dt>아이디</dt>
										<dd>
											<span>${userId }</span>
										</dd>
										<dt>이름</dt>
										<dd>
											<span>${userName }</span>
										</dd>
										<dt>이메일</dt>
										<dd>
											<span>${email }</span>
										</dd>
									</dl>
								</div>
							</div>
						</div>
						<p class="memberEmail displaynone">이메일 주소로 발송된 인증 메일을 통해 인증하신
							후에 로그인이 가능합니다.</p>
						<p class="memberAge displaynone">
							<strong><span>weew</span> 님</strong>은 14세 미만 회원이므로 <br>관리자
							인증 후 아이디 사용이 가능합니다.
						</p>
					</div>
					<div class="ec-base-button gBottom">
						<a href="#" class="btnNormalFix sizeM" id="mainBtn">메인으로 이동</a> 
						<a href="#" class="btnSubmitFix sizeM displaynone" id="loginBtn">로그인</a>
					</div>
				</div>
			</div>
			<hr class="layout">
		</div>
		<hr class="layout">
<form id="movedPage" method="post" action="/index.do"></form>
<%@ include file="../common/footer.jsp" %>
</body>
<script type="text/javascript">
$(()=>{
	const value = ["mainBtn", "loginBtn"];
	
	$.each(value , (idx ,val)=>{
		$('#'+val).click()=>{
			if(val == "loginBtn") $('#movedPage').attr("action", "/memberLogin.do");
			$('#movedPage').submit();
		});
	});
});
</script>
</html>