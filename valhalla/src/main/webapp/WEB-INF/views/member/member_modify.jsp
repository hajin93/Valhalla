<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../common/myshopCss.jsp"%>
<%@ include file="../common/memberCss.jsp"%>
<%@ include file="../common/header.jsp"%>

<div id="myshopMain" module="myshop_main">

	<hr class="layout">
	<aside id="aside"
		class="xans-element- xans-layout xans-layout-slidepackage ">
		<nav class="navigation-menu" role="navigation">
			<div class="navigation-menu__member">
				<div class="xans-element- xans-layout xans-layout-statelogoff ">
					<a href="/member/agreement.html">Join</a> <a
						href="/member/login.html">Login</a> <a href="/order/basket.html"
						class="RTMI">Cart <span
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
				class="xans-element- xans-layout xans-layout-mobileaction RTMB ">
				<a href="#none" onclick="history.go(-1);return false;"> <svg
						xmlns="http://www.w3.org/2000/svg" width="24" height="24"
						fill="none" viewBox="0 0 24 24" class="icon">
							<path stroke="#000" stroke-width="1.5"
							d="M9.826 20L2 12.5 9.826 5M2 12.5h20"></path>
							</svg>뒤로가기
			</a>
			</span>

			<!--@layout(/layout/basic/layout.html)-->
			<div class="path">
				<span>현재 위치</span>
				<ol>
					<li><a href="/">홈</a></li>
					<li title="현재 위치"><strong>회원 정보 수정</strong></li>
				</ol>
			</div>

			<div class="titleArea">
				<h2>회원 정보 수정</h2>
			</div>
		<div class="myshopArea">
			<div module="myshop_asyncbenefit">
				<!--@css(/css/module/myshop/benefit.css)-->
				<div class="{$display_benefit|display}">
					<div class="benefit">
						<div class="user">
							<div class="user__thumbnail">
								<img src="{$group_image}" alt=""
									onerror="this.src='//img.echosting.cafe24.com/skin/skin/member/icon-user-thumb.svg';"
									class="{$group_image_tag_class}" />
							</div>
							<div class="user__info">
								<strong class="title">안녕하세요. {$member_name}님</strong>
								<p>{$group_name}</p>
							</div>
						</div>
						<div class="description">
							<p
								class="{$display_no_benefit|display} {$display_no_benefit_class}">
								<strong class="txtEm">{$dc_pay} {$dc_min_price}</strong> 구매시 <strong
									class="txtEm">{$dc_price}{$dc_type}</strong>을 {$use_dc} 받으실 수
								있습니다. {$dc_max_percent}
							</p>
							<p class="{$display_with_all|display} {$display_with_all_class}">
								<strong class="txtEm">{$dc_pay} {$dc_min_price_mileage}</strong>
								구매시 <strong class="txtEm">{$dc_price_mileage}{$dc_type_mileage}</strong>을
								{$use_dc_mileage} 받으실 수 있습니다. {$dc_max_mileage_percent}
							</p>
						</div>
					</div>
				</div>
			</div>

			<div module="member_updateeventlogon"
				class="{$display_updateevent|display}">
				<!--@css(/css/module/member/updateeventlogon.css)-->
				<strong class="title">회원정보 수정 시
					{$update_event_reward_type}을 지급하는 이벤트를 진행중입니다.</strong>
				<ul>
					<li>이벤트 기간 : {$update_event_period}</li>
					<li>아래의 조건을 충족한 경우 {$update_event_reward_by_modify} 지급됩니다.<br />{$update_event_selected_option}<
					</li>
				</ul>
			</div>

			<div module="member_edit">
				<!--
        $login_page = /member/login.html
        $isRuleBasedAddrForm = T
     -->
				<!--@css(/css/module/member/edit.css)-->
				<div class="{$display_certification_form|display}">
					<div class="titleArea titleArea--middle">
						<h3>회원인증</h3>
					</div>
					<div class="ec-base-table typeWrite">
						<table border="1">
							<caption>회원인증</caption>
							<colgroup>
								<col style="width: 190px;" />
								<col style="width: auto;" />
							</colgroup>
							<tbody>
								<tr class="{$display_member_type|display}">
									<th scope="row">회원구분</th>
									<td>{$member_type}</td>
								</tr>
								<tr>
									<th scope="row">인증여부</th>
									<td><strong class="txtEm" id="MauthText">미인증</strong>
										<ul class="certifInfo txtInfo">{$certification_info}
										</ul></td>
								</tr>
								<tr class="{$display_certification_method|display}">
									<th scope="row">회원인증</th>
									<td>{$form.personal_type}
										<div class="certifForm" id="ipinWrap">
											<a href="#none" class="btnNormal sizeS"
												onclick="{$action_ipin_open}">아이핀인증</a>
											<p class="txtInfo">
												아이핀이란, 회원님의 개인정보 보호를 위해 웹사이트에 주민등록번호를 제공하지 않고 본인임을 확인하는
												인터넷상의 개인식별번호 서비스입니다.<br />아이핀을 통한 가입을 원하시면 아이핀 인증 버튼을 눌러
												진행해 주십시오.
											</p>
										</div>
										<div class="certifForm" id="mobileWrap">
											<a href="#none" class="btnNormal sizeS"
												onclick="{$action_mobile_open}">휴대폰인증</a>
											<p class="txtInfo">본인 명의의 휴대폰으로 본인인증을 진행합니다.</p>
										</div>
										<div class="certifForm" id="emailWrap">
											<p class="txtInfo">
												기본정보 &gt; 이메일 항목에 입력하신 정보로 본인인증을 진행합니다.<br />정보수정 후에 입력하신
												이메일 주소로 인증 메일이 발송되오니, 확인해 주시기 바랍니다.
											</p>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>

				<div
					class="titleArea titleArea--middle {$display_base_column_title|display}">
					<h3>기본정보</h3>
					<p class="required {$display_base_column_title|display}">
						<img
							src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg"
							class="icon icoRequired" alt="필수" /> 필수입력사항
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
								<th scope="row">아이디 <img
									src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg"
									class="icon icoRequired" alt="필수" /></th>
								<td>{$form.member_id} <span class="txtInfo">{$form.user_id_dupl}
										(영문소문자/숫자, 4~16자)</span></td>
							</tr>
							<tr>
								<th scope="row">{$display_passwd_title} <img
									src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg"
									class="icon icoRequired {$display_is_none_certification|display}"
									alt="필수" /></th>
								<td>
									<div class="eTooltip">
										{$form.passwd}
										<div
											class="ec-base-tooltip typeUpper {$display_is_passwd_speech_bubble|display}">
											<div class="content">
												<strong class="txtWarn">※ {$passwd_terms}</strong>
												<ul class="ec-base-help typeDash gBlank10 txtWarn">
													{$passwd_chk_info}
												</ul>
											</div>
											<a href="#none" class="btnClose">닫기</a> <span class="edge"></span>
										</div>
									</div> <span class="txtInfo">{$passwd_type_desc}</span>
								</td>
							</tr>
							<tr class="{$display_is_none_certification|display}">
								<th scope="row">비밀번호 확인 <img
									src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg"
									class="icon icoRequired" alt="필수" /></th>
								<td>{$form.user_passwd_confirm}
									<p class="txtInfo" id="{$pwConfirmMsg_id}"></p>
								</td>
							</tr>
							<tr class="{$display_is_certification|display}">
								<th scope="row">새 비밀번호</th>
								<td>
									<div class="eTooltip">
										{$form.new_passwd}
										<div class="ec-base-tooltip typeUpper">
											<div class="content">
												<strong>※ {$passwd_terms}</strong>
												<ul class="ec-base-help typeDash txtInfo">
													{$passwd_chk_info}
												</ul>
											</div>
											<a href="#none" class="btnClose">닫기</a> <span class="edge"></span>
										</div>
									</div> <span class="txtInfo">{$passwd_type_desc}</span>
								</td>
							</tr>
							<tr class="{$display_is_certification|display}">
								<th scope="row">새 비밀번호 확인</th>
								<td>{$form.new_passwd_confirm}
									<p class="txtInfo" id="{$newPwConfirmMsg_id}"></p>
								</td>
							</tr>
							<tr class="{$display_hint|display}">
								<th scope="row">비밀번호 확인 질문 <img
									src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg"
									class="icon icoRequired" alt="필수" /></th>
								<td>{$form.hint}</td>
							</tr>
							<tr class="{$display_hint_answer|display}">
								<th scope="row">비밀번호 확인 답변 <img
									src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg"
									class="icon icoRequired" alt="필수" /></th>
								<td>{$form.hint_answer}</td>
							</tr>
							<tr class="{$display_name|display}">
								<th scope="row" id="{$name_title}">이름 <img
									src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg"
									class="icon icoRequired" alt="필수" /></th>
								<td>{$form.name}</td>
							</tr>
							<tr class="{$display_eng_name|display}">
								<th scope="row">이름(영문) <img
									src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg"
									class="icon icoRequired {$display_required_name_en|display}"
									alt="필수" /></th>
								<td>{$form.name_en}<span class="txtInfo">(이름 - 성
										형식으로 입력해 주세요.)</span></td>
							</tr>
							<tr class="{$display_foreigner_ssn|display}">
								<th scope="row">{$foreigner_type}</th>
								<td>{$foreigner_ssn}</td>
							</tr>
							<tr class="{$display_coroperate|display}">
								<th scope="row">법인명 <img
									src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg"
									class="icon icoRequired" alt="필수" /></th>
								<td>{$coroperate_name}</td>
							</tr>
							<tr class="{$display_coroperate|display}">
								<th scope="row">법인번호 <img
									src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg"
									class="icon icoRequired" alt="필수" /></th>
								<td class="formGroup">{$coroperate_ssn}</td>
							</tr>
							<tr class="{$display_company|display}">
								<th scope="row">상호명 <img
									src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg"
									class="icon icoRequired" alt="필수" /></th>
								<td>{$form.cname}</td>
							</tr>
							<tr class="{$display_company|display}">
								<th scope="row">사업자번호 <img
									src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg"
									class="icon icoRequired" alt="필수" /></th>
								<td class="formGroup">{$form.cssn} <a href="#none"
									class="btnNormal {$display_cssn_dupl|display}"
									onclick="{$action_cssn_dupl}">중복확인</a>
									<p id="{$cssnMsg_id}" class="txtInfo"></p>
								</td>
							</tr>
							<tr class="{$display_nation|display}">
								<th scope="row">국적 <img
									src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg"
									class="icon icoRequired" alt="필수" /></th>
								<td>{$form.citizenship}</td>
							</tr>
							<tr class="{$display_addr|display}">
								<th scope="row">주소 <img
									src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg"
									class="icon icoRequired {$display_required_address|display}"
									alt="필수" /></th>
								<td class="formMultiple">{$form.address}</td>
							</tr>
							<tr class="{$display_phone|display}">
								<th scope="row">일반전화 <img
									src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg"
									class="icon icoRequired {$display_required_phone|display}"
									alt="필수" /></th>
								<td class="formGroup code">{$form.phone}</td>
							</tr>
							<tr class="{$display_mobile|display}">
								<th scope="row">휴대전화 <img
									src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg"
									class="icon icoRequired {$display_required_cell|display}"
									alt="필수" /></th>
								<td class="formGroup code">{$form.mobile}
									<button type="button"
										class="btnNormal {$display_verify_mobile|display}"
										id="{$btn_action_verify_mobile}"
										onclick="{$action_verify_mobile}">인증번호받기</button>
									<p class="txtInfo {$bDisplayMobileVerifyInfoDefault|display}"
										id="{$result_send_verify_mobile_fail}"></p>
									<ul class="txtInfo {$bDisplayMobileVerifyInfoDefault|display}"
										id="{$result_send_verify_mobile_success}">
										<li>인증번호가 발송되었습니다.</li>
										<li>인증번호를 받지 못하셨다면 휴대폰 번호를 확인해 주세요.</li>
									</ul>
								</td>
							</tr>
							<tr class="{$display_verify_mobile_confirm|display}"
								id="{$confirm_verify_mobile}">
								<th scope="row">인증번호 <img
									src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg"
									class="icon icoRequired" alt="필수" /></th>
								<td class="formGroup">
									<div class="verify">
										<div>{$form.verify_sms_number}</div>
										<span class="time" id="{$expiryTime}"></span>
									</div>
									<button type="button" class="btnNormal"
										id="{$btn_verify_mobile_confirm}"
										onclick="{$action_verify_mobile_confirm}">확인</button>
								</td>
							</tr>
							<tr class="{$display_is_sms|display}">
								<th scope="row">SMS 수신여부 <img
									src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg"
									class="icon icoRequired" alt="필수" /></th>
								<td>{$form.is_sms}
									<p class="txtInfo">쇼핑몰에서 제공하는 유익한 이벤트 소식을 SMS로 받으실 수 있습니다.</p>
								</td>
							</tr>
							<tr>
								<th scope="row">이메일 <img
									src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg"
									class="icon icoRequired" alt="필수" /></th>
								<td>{$form.email}
									<p id="{$emailMsg_id}"></p>
									<p class="txtInfo {$display_is_email_auth_info|display}">
										이메일 주소 변경 시 로그아웃 후 재인증을 하셔야만 로그인이 가능합니다.<br />인증 메일은 24시간 동안
										유효하며, 유효 시간이 만료된 후에는 가입 정보로 로그인 하셔서 재발송 요청을 해주시기 바랍니다.
									</p>
								</td>
							</tr>
							<tr class="{$display_is_news_mail|display}">
								<th scope="row">이메일 수신여부 <img
									src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg"
									class="icon icoRequired" alt="필수" /></th>
								<td>{$form.is_news_mail}
									<p class="txtInfo">쇼핑몰에서 제공하는 유익한 이벤트 소식을 이메일로 받으실 수 있습니다.</p>
								</td>
							</tr>
							<tr class="{$display_is_lifetime|display}">
								<th scope="row">평생회원</th>
								<td>{$form.is_lifetime}
									<ul class="txtInfo">
										<li>평생회원은 <strong>{$mall_name}</strong> 회원 탈퇴시까지 휴면회원으로
											전환되지 않습니다.
										</li>
										<li class="{$display_is_lifetime_benefit|display}">지금
											평생회원으로 전환하시면 쿠폰혜택을 드립니다.(전환시 최초 1회)</li>
										<li class="{$display_is_lifetime_benefit_member|display}">평생회원
											쿠폰혜택을 받으신 경우, 3개월간 평생회원을 유지하셔야 합니다.</li>
									</ul>
								</td>
							</tr>
						</tbody>
					</table>
				</div>

				<div
					class="titleArea titleArea--middle {$display_add_title|display}">
					<h3>추가정보</h3>
				</div>
				<div class="ec-base-table typeWrite {$display_add_title|display}">
					<table border="1">
						<caption>회원 추가정보</caption>
						<colgroup>
							<col style="width: 190px;" />
							<col style="width: auto;" />
						</colgroup>
						<tbody>
							<tr class="{$display_nick|display}">
								<th scope="row">별명 <img
									src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg"
									class="icon icoRequired {$display_required_nick_name_flag|display}"
									alt="필수" /></th>
								<td>{$form.nick_name} <span class="txtInfo">(한글2~10자/영문
										대소문자4~20자/숫자 혼용가능)</span></td>
							</tr>
							<tr class="{$display_is_sex|display}">
								<th scope="row">성별 <img
									src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg"
									class="icon icoRequired {$display_required_sex|display}"
									alt="필수" /></th>
								<td>{$form.is_sex}</td>
							</tr>
							<tr class="{$display_birthday|display}">
								<th scope="row">생년월일 <img
									src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg"
									class="icon icoRequired {$display_required_is_birthday|display}"
									alt="필수" /></th>
								<td class="formGroup date">{$form.birth_year} 년
									{$form.birth_month} 월 {$form.birth_day} 일 <span
									class="gFlow {$display_calendar_type|display}">{$form.is_solar_calendar}</span>
								</td>
							</tr>
							<tr class="{$display_marry|display}">
								<th scope="row">결혼기념일 <img
									src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg"
									class="icon icoRequired {$display_required_is_wedding_anniversary|display}"
									alt="필수" /></th>
								<td class="formGroup date">{$form.marry_year} 년
									{$form.marry_month} 월 {$form.marry_day} 일</td>
							</tr>
							<tr class="{$display_partner|display}">
								<th scope="row">배우자생일 <img
									src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg"
									class="icon icoRequired {$display_required_is_life_partner|display}"
									alt="필수" /></th>
								<td class="formGroup date">{$form.partner_year} 년
									{$form.partner_month} 월 {$form.partner_day} 일</td>
							</tr>
							<tr class="{$display_child|display}">
								<th scope="row">자녀 <img
									src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg"
									class="icon icoRequired {$display_required_child|display}"
									alt="필수" /></th>
								<td>{$form.child}</td>
							</tr>
							<tr class="{$display_school|display}">
								<th scope="row">최종학력 <img
									src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg"
									class="icon icoRequired {$display_required_school|display}"
									alt="필수" /></th>
								<td>{$form.school}</td>
							</tr>
							<tr class="{$display_job_class|display}">
								<th scope="row">직종 <img
									src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg"
									class="icon icoRequired {$display_required_job_class|display}"
									alt="필수" /></th>
								<td>{$form.job_class}</td>
							</tr>
							<tr class="{$display_job|display}">
								<th scope="row">직업 <img
									src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg"
									class="icon icoRequired {$display_required_job|display}"
									alt="필수" /></th>
								<td>{$form.job}</td>
							</tr>
							<tr class="{$display_earning|display}">
								<th scope="row">연소득 <img
									src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg"
									class="icon icoRequired {$display_required_earning|display}"
									alt="필수" /></th>
								<td>{$form.earning}</td>
							</tr>
							<tr class="{$display_car|display}">
								<th scope="row">자동차 <img
									src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg"
									class="icon icoRequired {$display_required_car|display}"
									alt="필수" /></th>
								<td>{$form.car}</td>
							</tr>
							<tr class="{$display_region|display}">
								<th scope="row">지역 <img
									src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg"
									class="icon icoRequired {$display_required_region|display}"
									alt="필수" /></th>
								<td>{$form.region}</td>
							</tr>
							<tr class="{$display_internet|display}">
								<th scope="row">인터넷 이용장소 <img
									src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg"
									class="icon icoRequired {$display_required_internet|display}"
									alt="필수" /></th>
								<td>{$form.internet}</td>
							</tr>
							<tr class="{$display_inter|display}">
								<th scope="row">관심분야 <img
									src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg"
									class="icon icoRequired {$display_required_interest|display}"
									alt="필수" /></th>
								<td><div class="interest">{$form.inter_check}</div></td>
							</tr>
							<tr class="{$display_add1|display}">
								<th scope="row">{$title_add1} <img
									src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg"
									class="icon icoRequired {$display_required_add1|display}"
									alt="필수" /></th>
								<td>{$form.add1}</td>
							</tr>
							<tr class="{$display_add2|display}">
								<th scope="row">{$title_add2} <img
									src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg"
									class="icon icoRequired {$display_required_add2|display}"
									alt="필수" /></th>
								<td>{$form.add2}</td>
							</tr>
							<tr class="{$display_add3|display}">
								<th scope="row">{$title_add3} <img
									src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg"
									class="icon icoRequired {$display_required_add3|display}"
									alt="필수" /></th>
								<td>{$form.add3}</td>
							</tr>
							<tr class="{$display_add4|display}">
								<th scope="row">{$title_add4} <img
									src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg"
									class="icon icoRequired {$display_required_add4|display}"
									alt="필수" /></th>
								<td>{$form.add4}</td>
							</tr>
							<tr class="{$display_add5|display}">
								<th scope="row">{$title_add5} <img
									src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg"
									class="icon icoRequired {$display_required_add5|display}"
									alt="필수" /></th>
								<td>{$form.add5}</td>
							</tr>
							<tr class="{$display_add6|display}">
								<th scope="row">{$title_add6} <img
									src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg"
									class="icon icoRequired {$display_required_add6|display}"
									alt="필수" /></th>
								<td>{$form.add6}</td>
							</tr>
							<tr class="{$display_add7|display}">
								<th scope="row">{$title_add7} <img
									src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg"
									class="icon icoRequired {$display_required_add7|display}"
									alt="필수" /></th>
								<td>{$form.add7}</td>
							</tr>
							<tr class="{$display_add8|display}">
								<th scope="row">{$title_add8} <img
									src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg"
									class="icon icoRequired {$display_required_add8|display}"
									alt="필수" /></th>
								<td>{$form.add8}</td>
							</tr>
							<tr class="{$display_add9|display}">
								<th scope="row">{$title_add9} <img
									src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg"
									class="icon icoRequired {$display_required_add9|display}"
									alt="필수" /></th>
								<td>{$form.add9}</td>
							</tr>
							<tr class="{$display_add10|display}">
								<th scope="row">{$title_add10} <img
									src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg"
									class="icon icoRequired {$display_required_add10|display}"
									alt="필수" /></th>
								<td>{$form.add10}</td>
							</tr>
							<tr class="{$display_add11|display}">
								<th scope="row">{$title_add11} <img
									src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg"
									class="icon icoRequired {$display_required_add11|display}"
									alt="필수" /></th>
								<td>{$form.add11}</td>
							</tr>
							<tr class="{$display_add12|display}">
								<th scope="row">{$title_add12} <img
									src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg"
									class="icon icoRequired {$display_required_add12|display}"
									alt="필수" /></th>
								<td>{$form.add12}</td>
							</tr>
							<tr class="{$display_add13|display}">
								<th scope="row">{$title_add13} <img
									src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg"
									class="icon icoRequired {$display_required_add13|display}"
									alt="필수" /></th>
								<td>{$form.add13}</td>
							</tr>
							<tr class="{$display_add14|display}">
								<th scope="row">{$title_add14} <img
									src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg"
									class="icon icoRequired {$display_required_add14|display}"
									alt="필수" /></th>
								<td>{$form.add14}</td>
							</tr>
							<tr class="{$display_add15|display}">
								<th scope="row">{$title_add15} <img
									src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg"
									class="icon icoRequired {$display_required_add15|display}"
									alt="필수" /></th>
								<td>{$form.add15}</td>
							</tr>
							<tr class="{$display_reco_id|display}">
								<th scope="row">추천인 아이디 <img
									src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg"
									class="icon icoRequired {$display_required_reco_id|display}"
									alt="필수" /></th>
								<td>{$form.reco_id}</td>
							</tr>
							<tr class="{$display_bank_info|display}">
								<th scope="row">환불계좌 <img
									src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg"
									class="icon icoRequired {$display_required_bank_account_no|display}"
									alt="필수" /></th>
								<td><a href="#none" class="btnNormal"{$action_reg_bank}><span
										id="id_has_bank_img" class="{$display_has_bank|display}">환불계좌변경</span><span
										id="id_reg_bank_img" class="{$display_reg_bank|display}">환불계좌등록</span></a>
									<span id="{$id_bank_info}" class="gFlow">{$bank_info}</span></td>
							</tr>
						</tbody>
					</table>
				</div>

				<div module="member_editInformation">
					<h3>제3자 정보제공 동의현황</h3>
					<div class="ec-base-table">
						<table border="1">
							<caption>제3자 정보제공 동의현황</caption>
							<colgroup>
								<col style="width: auto;" />
								<col style="width: 15%;" />
								<col style="width: 25%;" />
								<col style="width: 15%;" />
								<col style="width: 12%;" />
								<col style="width: 12%;" />
								<col style="width: 12%;" />
							</colgroup>
							<thead>
								<tr>
									<th scope="col">제공서비스</th>
									<th scope="col">제공받는 자</th>
									<th scope="col">개인정보 이용 목적</th>
									<th scope="col">제공하는<br />개인정보 항목
									</th>
									<th scope="col">보유기간</th>
									<th scope="col">동의여부</th>
									<th scope="col">동의/철회</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>{$app_name}<br />
									<span class="line">({$sa_av_version})</span></td>
									<td>{$perinfo_offer}</td>
									<td>{$perinfo_purpose}</td>
									<td>{$perinfo_item}</td>
									<td class="center">{$perinfo_retain}</td>
									<td class="center">{$perinfo_status}</td>
									<td class="center">{$perinfo_button}</td>
								</tr>
								<tr>
									<td>{$app_name}<br />
									<span class="line">({$sa_av_version})</span></td>
									<td>{$perinfo_offer}</td>
									<td>{$perinfo_purpose}</td>
									<td>{$perinfo_item}</td>
									<td class="center">{$perinfo_retain}</td>
									<td class="center">{$perinfo_status}</td>
									<td class="center">{$perinfo_button}</td>
								</tr>
							</tbody>
						</table>
					</div>
					<p class="info">- 정보제공에 대한 동의여부를 변경할 수 있으며, 철회 시 일부 서비스 사용이 불가할
						수 있습니다.</p>
				</div>

				<div module="member_editConsignment">
					<h3>처리위탁 동의현황</h3>
					<div class="ec-base-table">
						<table border="1">
							<caption>처리위탁 동의현황</caption>
							<colgroup>
								<col style="width: auto;" />
								<col style="width: 20%;" />
								<col style="width: 30%;" />
								<col style="width: 12%;" />
								<col style="width: 12%;" />
								<col style="width: 12%;" />
							</colgroup>
							<thead>
								<tr>
									<th scope="col">제공서비스</th>
									<th scope="col">위탁받은 자</th>
									<th scope="col">위탁업무의 내용</th>
									<th scope="col">보유기간</th>
									<th scope="col">동의여부</th>
									<th scope="col">동의/철회</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>{$app_name}<br />
									<span class="line">({$sa_av_version})</span></td>
									<td>{$trust_target}</td>
									<td>{$trust_work}</td>
									<td class="center">{$trust_retain}</td>
									<td class="center">{$trust_status}</td>
									<td class="center">{$trust_button}</td>
								</tr>
								<tr>
									<td>{$app_name}<br />
									<span class="line">({$sa_av_version})</span></td>
									<td>{$trust_target}</td>
									<td>{$trust_work}</td>
									<td class="center">{$trust_retain}</td>
									<td class="center">{$trust_status}</td>
									<td class="center">{$trust_button}</td>
								</tr>
							</tbody>
						</table>
					</div>
					<p class="info">- 처리위탁에 대한 동의여부를 변경할 수 있으며, 철회 시 일부 서비스 사용이 불가할
						수 있습니다.</p>
				</div>

				<div class="gInnerMargin">
					<div class="{$display_privacy_optional|display} agreeArea">
						<div class="title">
							<h3>
								{$form.agree_privacy_optional_check} <label
									for="agree_privacy_optional_check0" class="check">개인정보
									수집 및 이용 동의 (선택)</label>
							</h3>
						</div>
						<div class="contents">{$privacy_optional_desc}</div>
					</div>

					<div class="{$display_information|display} agreeArea">
						<div class="title">
							<h3>
								{$form.agree_information_check} <label
									for="agree_information_check0" class="check">개인정보 제3자
									제공 동의(선택)</label>
							</h3>
						</div>
						<div class="contents">{$information_desc}</div>
					</div>

					<div class="{$display_consignment|display} agreeArea">
						<div class="title">
							<h3>
								{$form.agree_consignment_check} <label
									for="agree_consignment_check0" class="check">개인정보 처리 위탁
									동의(선택)</label>
							</h3>
						</div>
						<div class="contents">{$consignment_desc}</div>
					</div>
				</div>

				<div class="ec-base-button">
					<span class="gLeft"> <a href="#none" class="btnNormal sizeS"
						onclick="{$action_func_del}">회원탈퇴</a>
					</span>
				</div>

				<div class="ec-base-button gBottom">
					<a href="/index.html" class="btnNormalFix sizeM">취소</a> <a
						href="#none" class="btnSubmitFix sizeM"
						onclick="{$action_func_join}">회원정보수정</a>
				</div>

				<!-- <div class="layerLeave ec-base-layer typeModal" id="{$leave_layer_id}">
       @css(/layout/basic/css/ec-base-layer.css)
        <div class="header">
            <h3>회원탈퇴</h3>
        </div>
        <div class="content">
            <div class="ec-base-box typeMember">
                <div class="information">
                    <strong class="title">혜택 내역</strong>
                    <div class="description">
                        <ul>
                            <li id="{$leave_layer_text_id}">탈퇴시 보유하고 있는 적립금은 모두 삭제됩니다.</li>
                            <li>현재 적립금 : <strong id="{$leave_layer_mileage}" class="txtEm">0</strong></li>
                            <li id="{$leave_layer_deposit_id}">현재 예치금 : <strong id="{$leave_layer_deposit}" class="txtEm">0</strong></li>
                        </ul>
                    </div>
                </div>
            </div>
            <h4>회원탈퇴 사유</h4>
            <div class="ec-base-table typeWrite">
                <table border="1" >
                    <caption>회원탈퇴 사유</caption>
                    <colgroup>
                        <col style="width:140px;" />
                        <col style="width:auto;" />
                    </colgroup>
                    <tbody>
                        <tr>
                            <th scope="row">선택</th>
                            <td>{$form.leave_reason}</td>
                        </tr>
                        <tr id="{$leave_layer_etc_reason_id}">
                            <th scope="row">기타</th>
                            <td>{$form.subjective_leave_reason}</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        
        <div class="ec-base-button">
            <a href="#none" class="btnSubmitFix sizeM" id="{$leave_layer_submit_btn_id}">탈퇴</a>
            <a href="#none" class="btnNormalFix sizeM" onclick="$('{$leave_layer_id}').hide();">취소</a>
        </div>
        <a href="#none" class="btnClose" onclick="$('{$leave_layer_id}').hide();">닫기</a>
    </div> -->

			</div>
		</div>
			<%@ include file="../common/mypageMenu.jsp"%>

		</div>
	</div>
	<hr class="layout">
</div>
<hr class="layout">
<%@ include file="../common/footer.jsp"%>
</body>
</html>