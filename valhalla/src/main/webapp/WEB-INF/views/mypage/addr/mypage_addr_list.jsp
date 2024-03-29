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

			<div class="myshopArea" module="myshop_AddrList">
				<!--
        $return_url = /myshop/addr/list.html
    -->
				<div class="ec-base-table typeList">
					<table border="1">
						<caption>배송 주소록 목록</caption>
						<colgroup>
							<col style="width: 27px" />
							<col style="width: 80px" />
							<col style="width: 95px" />
							<col style="width: 95px" />
							<col style="width: 120px" />
							<col style="width: 120px" />
							<col style="width: auto" />
							<col style="width: 76px" />
						</colgroup>
						<thead>
							<tr>
								<th scope="col"><span class="{$list_display|display}">{$sCheckAll}</span></th>
								<th scope="col">주소록 고정</th>
								<th scope="col">배송지명</th>
								<th scope="col">수령인</th>
								<th scope="col">일반전화</th>
								<th scope="col">휴대전화</th>
								<th scope="col">주소</th>
								<th scope="col">수정</th>
							</tr>
						</thead>
						<tbody class="{$list_display|display} center">
							<tr>
								<td>{$checkbox}</td>
								<td><a href="{$fix_url}"
									class="btnNormal {$notfix_display|display}">해제</a><a
									href="{$fix_url}" class="btnEm {$fix_display|display}">고정</a><span
									class="{$default_img_display|display}">-</span></td>
								<td><img
									src="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/ico_addr_default.gif"
									class="{$default_img_display|display}" alt="기본" />
									{$ma_rcv_title}</td>
								<td>{$ma_rcv_name}</td>
								<td>{$ma_rcv_phone}</td>
								<td>{$ma_rcv_mobile_no}</td>
								<td class="left">({$ma_rcv_zipcode}){$ma_rcv_addr1}
									{$ma_rcv_addr2}</td>
								<td><a href="modify.html?ma_idx={$ma_idx}"
									class="btnNormal sizeS {$notfix_display}">수정</a></td>
							</tr>
							<tr>
								<td>{$checkbox}</td>
								<td><a href="{$fix_url}"
									class="btnNormal {$notfix_display|display}">해제</a><a
									href="{$fix_url}" class="btnEm {$fix_display|display}">고정</a><span
									class="{$default_img_display|display}">-</span></td>
								<td><img
									src="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/ico_addr_default.gif"
									class="{$default_img_display|display}" alt="기본" />
									{$ma_rcv_title}</td>
								<td>{$ma_rcv_name}</td>
								<td>{$ma_rcv_phone}</td>
								<td>{$ma_rcv_mobile_no}</td>
								<td class="left">({$ma_rcv_zipcode}){$ma_rcv_addr1}
									{$ma_rcv_addr2}</td>
								<td><a href="modify.html?ma_idx={$ma_idx}"
									class="btnNormal sizeS {$notfix_display}">수정</a></td>
							</tr>
						</tbody>
						<tbody class="{$nodata_display|display}">
							<tr>
								<td colspan="8" class="message">등록된 주소가 없습니다.</td>
							</tr>
						</tbody>
					</table>
				</div>

				<div class="ec-base-button gBottom">
					<a href="#none"
						class="btnNormalFix sizeM {$delete_display|display}"
						onclick="{$action_delete}; return false;">선택 주소록 삭제</a> <a
						href="register.html" class="btnSubmitFix sizeM">배송지등록</a>
				</div>
			</div>

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
			<%@ include file="../../common/mypageMenu.jsp"%>

		</div>
	</div>
	<hr class="layout">
</div>
<hr class="layout">
<%@ include file="../../common/footer.jsp"%>
</body>
</html>