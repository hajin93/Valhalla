<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
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
				<li><a href="/">홈</a></li>
				<li title="현재 위치"><strong>아이디 찾기</strong></li>
			</ol>
		</div>
		<div class="titleArea">
			<h2>아이디 찾기</h2>
		</div>
		<div module="member_findidresult" class="memberArea gInnerMargin">
			<!--@css(/css/module/member/find_id_result.css)-->
			<div class="ec-base-box typeMember" >
				<div class="complete">
					<p class="headDesc">고객님 아이디 찾기가 완료 되었습니다.</p>
					<c:choose>
					<c:when test="${size < 1}">
						<p class="infoDesc">
							가입된 아이디가 없습니다.
						</p>
					</c:when>
					<c:otherwise>
						<p class="infoDesc">
							가입된 아이디가 총 <span class="txtEm"><span id="size"></span></span>개 있습니다.
						</p>
						<div class="description">
							<ul class="ec-base-desc gSmall">
								<li><strong class="term">이름 : ${userName}</strong></li>
								<li><strong class="term">아이디 : ${userId}</strong></li>
							</ul>
						</div>
					</c:otherwise>
					</c:choose>
				</div>
			</div>
			<div class="ec-base-button gBottom">
				<a href="#none;" class="btnNormalFix sizeM" id="movedLogin">로그인</a>
				<a href="#none;" class="btnSubmitFix sizeM" id="movedSearchPw">비밀번호 찾기</a>
			</div>
		</div>
	</div>
<hr class="layout">
</div>
<hr class="layout">
<form id="movedForm" method="post" action=""></form>
<%@ include file="../../common/footer.jsp"%>
</body>
<script type="text/javascript">
$(function(){
	var size = "${size}";
	$('#size').text(size);
	
	//로그인 이동 클릭이벤트
	$('#movedLogin').click(()=>{
		$('#movedForm').attr("action", "/memberLogin.do");
		$("#movedForm").submit();
	});
	
	//비밀번호 찾기 클릭이벤트
	$('#movedSearchPw').click(()=>{
		$('#movedForm').attr("action", "/memberFindPw.do");
		$("#movedForm").submit();
	});
	
});
</script>
</html>