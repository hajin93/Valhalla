<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../../common/myshopCss.jsp"%>
<%@ include file="../../common/header.jsp"%>

<div id="myshopMain" module="myshop_main">

	<hr class="layout">

	<div id="container">
		<div id="contents">
			<span
				class="xans-element- xans-layout xans-layout-mobileaction RTMB "><a
				href="#none" onclick="history.go(-1);return false;"><svg
						xmlns="http://www.w3.org/2000/svg" width="24" height="24"
						fill="none" viewBox="0 0 24 24" class="icon">
							<path stroke="#000" stroke-width="1.5"
							d="M9.826 20L2 12.5 9.826 5M2 12.5h20"></path></svg>뒤로가기</a> </span>

			<!--@layout(/layout/basic/layout.html)-->
			<div class="path">
				<span>현재 위치</span>
				<ol>
					<li><a href="/">홈</a></li>
					<li><a href="/myshop/index.html">마이쇼핑</a></li>
					<li title="현재 위치"><strong>배송 주소록 관리</strong></li>
				</ol>
			</div>

			<div class="titleArea">
				<h2>배송 주소록 관리</h2>
			</div>

			<div class="myshopArea" module="myshop_AddrModify">
				<!--@css(/css/module/myshop/addrModify.css)-->
				<!--
        $return_url = /myshop/addr/list.html
        $isRuleBasedAddrForm = T
    -->
				<div class="ec-base-table typeWrite">
					<table border="1">
						<caption>배송 주소록 입력</caption>
						<colgroup>
							<col style="width: 170px" />
							<col style="width: auto" />
						</colgroup>
						<tbody>
							<tr>
								<th scope="row">배송지명 
								<img src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg" class="icon icoRequired" alt="필수" />
								</th>
								<td>
									<div class="desc">
										<input type="text" id="boardWriteTitle" class="input-style01" name="csoMtmInq.inqSj" style="width: 500px;">
									</div>
								</td>
							</tr>
							<tr>
								<th scope="row">성명 <img
									src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg"
									class="icon icoRequired" alt="필수" /></th>
								<td>
									<div class="desc">
										<input type="text" id="boardWriteTitle" class="input-style01" name="csoMtmInq.inqSj" style="width: 500px;">
									</div>
								</td>
							</tr>
							<tr>
								<th scope="row">주소 <img
									src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg"
									class="icon icoRequired" alt="필수" /></th>
								<td>
									<div class="desc">
										<input type="text" id="boardWriteTitle" class="input-style01" name="csoMtmInq.inqSj" style="width: 150px;">
										<a href="list.html" class="btnNormalFix sizeM">주소 검색</a> <br/><br/>
										<input type="text" id="boardWriteTitle" class="input-style01" name="csoMtmInq.inqSj" style="width: 300px;"><br/><br/>
										<input type="text" id="boardWriteTitle" class="input-style01" name="csoMtmInq.inqSj" style="width: 500px;">
									</div>
								</td>
							</tr>
							<!-- <tr>
								<th scope="row">일반전화 <span
									class="{$phone1_display|display}"><img
										src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg"
										class="icon icoRequired" alt="필수" /></span></th>
								<td>
									<div class="desc">
										<input type="text" id="boardWriteTitle" class="input-style01" name="csoMtmInq.inqSj" style="width: 150px;">-
										<input type="text" id="boardWriteTitle" class="input-style01" name="csoMtmInq.inqSj" style="width: 150px;">-
										<input type="text" id="boardWriteTitle" class="input-style01" name="csoMtmInq.inqSj" style="width: 150px;">									
									</div>
								</td>
							</tr> -->
							<tr>
								<th scope="row">휴대전화 <span
									class="{$phone2_display|display}"><img
										src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg"
										class="icon icoRequired" alt="필수" /></span></th>
								<td>
									<div class="desc">
										<input type="text" id="boardWriteTitle" class="input-style01" name="csoMtmInq.inqSj" style="width: 150px;">-
										<input type="text" id="boardWriteTitle" class="input-style01" name="csoMtmInq.inqSj" style="width: 150px;">-
										<input type="text" id="boardWriteTitle" class="input-style01" name="csoMtmInq.inqSj" style="width: 150px;">									
									</div>
								</td>
							</tr>
							
						</tbody>
					</table>
				</div>

				<div class="ec-base-button gBottom">
					<span class="gRight"> <a href="list.html"
						class="btnNormalFix sizeM">취소</a> <a href="#none"
						class="btnSubmitFix sizeM" onclick="{$action_check}">등록</a>
					</span>
				</div>
			</div>
		<div class="myshopArea">
			<div class="ec-base-help">
				<h3>배송주소록 유의사항</h3>
				<div class="inner">
					<ul>
						<li>배송 주소록은 최대 10개까지 등록할 수 있으며, 별도로 등록하지 않을 경우 최근 배송 주소록 기준으로
							자동 업데이트 됩니다.</li>
						<li>자동 업데이트를 원하지 않을 경우 주소록 고정 선택을 선택하시면 선택된 주소록은 업데이트 대상에서
							제외됩니다.</li>
						<li>기본 배송지는 1개만 저장됩니다. 다른 배송지를 기본 배송지로 설정하시면 기본 배송지가 변경됩니다.</li>
					</ul>
				</div>
			</div>
		</div>
			<%@ include file="../../common/mypageMenu.jsp"%>

		</div>
	</div>
	<hr class="layout">
</div>
<hr class="layout">
<%@ include file="../../common/footer.jsp"%>
</body>
</html>