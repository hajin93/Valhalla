<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../common/orderformCss.jsp"%>

<title>주문</title>
</head>
<body id="userStyle">
	<!-- [상단영역] -->
	<!-- File start -->
	<header id="header">
		<!-- app tag -->
		<div id="ec-orderform-header-head"></div>

		<div class="header">
			<h1 class="xans-element- xans-layout xans-layout-logotop ">
				<a href="/index.html">Valhalla Mall</a>
			</h1>
			<div class="headerMenu gLeft">
				<span
					class="xans-element- xans-layout xans-layout-mobileaction btnBack ">
					<a href="#none"
					onclick="document.referrer ? history.go(-1) : location.href='/';return false;">뒤로가기</a>
				</span>
			</div>
			<div class="headerMenu gRight">
				<span
					class="xans-element- xans-layout xans-layout-orderbasketcount1 btnBasket ">
					<a href="/order/basket.html">장바구니 <span
						class="count EC-Layout_Basket-count-display"> <span
							class="EC-Layout-Basket-count1">1</span>
					</span>
				</a>
				</span> <a
					href="/member/login.html?returnUrl=%2Forder%2Forderform.html%3Fbasket_type%3Dall_buy%26delvtype%3DA"
					class="xans-element- xans-layout xans-layout-statelogoff btnMy ">로그인
				</a>
			</div>
		</div>
		<div class="titleArea">
			<h1>주문/결제</h1>
		</div>

		<!-- app tag -->
		<div id="ec-orderform-header-tail"></div>
	</header>
	<!-- File end -->
	<form id="frm_order_act" name="frm_order_act" action="" method="post"
		target="_self" enctype="multipart/form-data">
		<input id="move_order_after" name="move_order_after"
			value="/order/order_result.html" type="hidden"> <input
			id="is_crowd_funding" name="is_crowd_funding" value="F" type="hidden">
		<input id="member_group_price" name="member_group_price" value="0"
			type="hidden"> <input id="mileage_generate3"
			name="mileage_generate3" value="0" type="hidden"> <input
			id="total_group_dc" name="total_group_dc" value="" type="hidden">
		<input id="basket_type" name="basket_type" value="all_buy"
			type="hidden"> <input id="productPeriod" name="productPeriod"
			value="" type="hidden"> <input id="member_id"
			name="member_id" value="" type="hidden"> <input id="delvType"
			name="delvType" value="A" type="hidden"> <input
			id="isUpdateMemberEmailOrder" name="isUpdateMemberEmailOrder"
			value="F" type="hidden"> <input id="isSimplyOrderForm"
			name="isSimplyOrderForm" value="F" type="hidden"> <input
			id="__ocountry" name="__ocountry" value="" type="hidden"> <input
			id="__oaddr1" name="__oaddr1" value="" type="hidden"> <input
			id="__ocity" name="__ocity" value="" type="hidden"> <input
			id="__ostate" name="__ostate" value="" type="hidden"> <input
			id="sSinameZhAreaWord" name="sSinameZhAreaWord" value="省/市"
			type="hidden"> <input id="sSinameTwAreaWord"
			name="sSinameTwAreaWord" value="市/縣" type="hidden"> <input
			id="sGunameZhAreaWord" name="sGunameZhAreaWord" value="区"
			type="hidden"> <input id="sGunameTwAreaWord"
			name="sGunameTwAreaWord" value="區/市" type="hidden"> <input
			id="__addr1" name="__addr1" value="" type="hidden"> <input
			id="__city_name" name="__city_name" value="" type="hidden"> <input
			id="__state_name" name="__state_name" value="" type="hidden">
		<input id="__isRuleBasedAddrForm" name="__isRuleBasedAddrForm"
			value="T" type="hidden"> <input id="message_autosave"
			name="message_autosave" value="F" type="hidden"> <input
			id="hope_date" name="hope_date" value="" type="hidden"> <input
			id="hope_ship_begin_time" name="hope_ship_begin_time" value=""
			type="hidden"> <input id="hope_ship_end_time"
			name="hope_ship_end_time" value="" type="hidden"> <input
			id="is_fast_shipping_time" name="is_fast_shipping_time" value=""
			type="hidden"> <input id="eguarantee_id" name="eguarantee_id"
			value="F" type="hidden"> <input id="is_hope_shipping"
			name="is_hope_shipping" value="F" type="hidden"> <input
			id="is_fast_shipping" name="is_fast_shipping" value="" type="hidden">
		<input id="fCountryCd" name="fCountryCd" value="" type="hidden">
		<input id="sCpnPrd" name="sCpnPrd" value="0" type="hidden"> <input
			id="sCpnOrd" name="sCpnOrd" value="0" type="hidden"> <input
			id="coupon_saving" name="coupon_saving" value="0" type="hidden">
		<input id="coupon_discount" name="coupon_discount" value="0"
			type="hidden"> <input id="coupon_shipfee"
			name="coupon_shipfee" value="0" type="hidden"> <input
			id="is_used_with_mileage" name="is_used_with_mileage" value="F"
			type="hidden"> <input id="is_used_with_member_discount"
			name="is_used_with_member_discount" value="F" type="hidden">
		<input id="is_used_with_coupon" name="is_used_with_coupon" value="F"
			type="hidden"> <input id="is_no_ozipcode"
			name="is_no_ozipcode" value="F" type="hidden"> <input
			id="is_no_rzipcode" name="is_no_rzipcode" value="F" type="hidden">
		<input id="is_cashreceipt_displayed_on_screen"
			name="is_cashreceipt_displayed_on_screen" value="F" type="hidden">
		<input id="is_taxrequest_displayed_on_screen"
			name="is_taxrequest_displayed_on_screen" value="F" type="hidden">
		<input id="app_scheme" name="app_scheme" value="" type="hidden">
		<input id="is_store" name="is_store" value="" type="hidden"> <input
			id="defer_commission" name="defer_commission" value="0" type="hidden">
		<input id="order_form_simple_type" name="order_form_simple_type"
			value="T" type="hidden"> <input
			id="information_agreement_check_val"
			name="information_agreement_check_val" value="F" type="hidden">
		<input id="consignment_agreement_check_val"
			name="consignment_agreement_check_val" value="F" type="hidden">
		<input id="basket_sync_flag" name="basket_sync_flag" value="F"
			type="hidden"> <input id="app_discount_data"
			name="app_discount_data" value="" type="hidden"> <input
			id="is_shipping_address_readonly_by_app"
			name="is_shipping_address_readonly_by_app" value="" type="hidden">
		<input id="is_app_delivery" name="is_app_delivery" value="F"
			type="hidden"> <input id="app_delivery_data"
			name="app_delivery_data" value="" type="hidden"> <input
			id="is_available_shipping_company_by_app"
			name="is_available_shipping_company_by_app" value="" type="hidden">
		<input id="is_multi_delivery" name="is_multi_delivery" value="F"
			type="hidden"> <input id="is_no_shipping_required"
			name="is_no_shipping_required" value="F" type="hidden"> <input
			id="pagetype" name="pagetype" value="" type="hidden"> <input
			id="is_direct_buy" name="is_direct_buy" value="F" type="hidden">
		<input id="is_subscription_invoice" name="is_subscription_invoice"
			value="F" type="hidden"> <input id="order_enable"
			name="order_enable" value="" type="hidden"> <input id="jwt"
			name="jwt" value="" type="hidden"> <input id="service_code"
			name="service_code" value="" type="hidden"> <input
			id="sEleID" name="sEleID"
			value="total_price||productPeriod||ophone1_1||ophone1_2||ophone1_3||ophone2_1||ophone2_2||ophone2_3||ophone1_ex1||ophone1_ex2||ophone2_ex1||ophone2_ex2||basket_type||oname||oname2||english_oname||english_name||english_name2||input_mile||input_deposit||hope_date||hope_ship_begin_time||hope_ship_end_time||is_fast_shipping_time||fname||fname2||paymethod||eguarantee_flag||eguarantee_ssn1||eguarantee_ssn2||eguarantee_year||eguarantee_month||eguarantee_day||eguarantee_user_gender||eguarantee_personal_agreement||question||question_passwd||delvType||f_country||fzipcode||faddress||fphone1_1||fphone1_2||fphone1_3||fphone1_4||fphone1_ex1||fphone1_ex2||fphone2_ex1||fphone2_ex2||fphone2||fmessage||fmessage_select||rname||rzipcode1||rzipcode2||raddr1||raddr2||rphone1_1||rphone1_2||rphone1_3||rphone2_1||rphone2_2||rphone2_3||omessage||omessage_select||ozipcode1||ozipcode2||oaddr1||oaddr2||oemail||oemail1||oemail2||ocity||ostate||ozipcode||eguarantee_id||coupon_discount||coupon_saving||order_password||is_fast_shipping||fCountryCd||message_autosave||oa_content||gift_use_flag||pname||bankaccount||regno1||regno2||escrow_agreement0||addr_paymethod||member_group_price||chk_purchase_agreement||total_plusapp_mileage_price||mileage_generate3||is_hope_shipping||sCpnPrd||sCpnOrd||coupon_shipfee||np_req_tx_id||np_save_rate||np_save_rate_add||np_use_amt||np_mileage_use_amount||np_cash_use_amount||np_total_use_amount||np_balance_amt||np_use||np_sig||flagEscrowUse||flagEscrowIcashUse||add_ship_fee||total_group_dc||pron_name||pron_name2||pron_oname||faddress2||si_gun_dosi||ju_do||is_set_product||basket_prd_no||move_order_after||is_no_ozipcode||is_no_rzipcode||__ocountry||__oaddr1||__ocity||__ostate||__addr1||__city_name||__state_name||__isRuleBasedAddrForm||sSinameZhAreaWord||sSinameTwAreaWord||sGunameZhAreaWord||sGunameTwAreaWord||delivcompany||is_store||cashreceipt_user_type||cashreceipt_user_type2||cashreceipt_regist||cashreceipt_user_mobile1||cashreceipt_user_mobile2||cashreceipt_user_mobile3||cashreceipt_reg_no||is_cashreceipt_displayed_on_screen||tax_request_regist||tax_request_name||tax_request_phone1||tax_request_phone2||tax_request_phone3||tax_request_email1||tax_request_email2||tax_request_company_type||tax_request_company_regno||tax_request_company_name||tax_request_president_name||tax_request_zipcode||tax_request_address1||tax_request_address2||tax_request_company_condition||tax_request_company_line||is_taxrequest_displayed_on_screen||isSimplyOrderForm||use_safe_phone||app_scheme||isUpdateMemberEmailOrder||defer_commission||defer_p_name||order_form_simple_type||gmo_order_id||gmo_transaction_id||receiver_id_card_key||receiver_id_card_type||simple_join_is_check||simple_join_agree_use_info||etc_subparam_member_id||etc_subparam_email1||etc_subparam_passwd||etc_subparam_user_passwd_confirm||etc_subparam_passwd_type||etc_subparam_is_sms||etc_subparam_is_news_mail||information_agreement_check_val||consignment_agreement_check_val||remind_id||remind_code||shipping_additional_fee_show||shipping_additional_fee_hide||shipping_additional_fee_name_show||save_paymethod||allat_account_nm||basket_sync_flag||member_id||input_pointfy||set_main_address0||app_discount_data||is_shipping_address_readonly_by_app||is_app_delivery||app_delivery_data||is_available_shipping_company_by_app||is_direct_buy||is_subscription_invoice||subscription_start_date||order_enable||is_crowd_funding||is_multi_delivery||is_no_shipping_required||pagetype||jwt||service_code||is_used_with_mileage||is_used_with_member_discount||is_used_with_coupon"
			type="hidden">
		<div id="mCafe24Order"
			class="xans-element- xans-order xans-order-form typeHeader xans-record-">
			<!-- 이값은 지우면 안되는 값입니다. ($move_order_after 주문완료페이지 주소 / $move_basket 장바구니페이지 주소)
            $move_order_after=/order/order_result.html
            $move_basket=/order/basket.html
            $paymethod_selector = textButton
            $email_type=emailcompact
            $product_weight_display=F
        -->
			<!-- [바로구매 주문상품] -->
			<!-- File start -->
			<!--
        이 파일은 원터치 주문서의 읽기 전용 파일입니다.
        이 파일은 기능 업그레이드 시, 자동으로 개선된 소스가 적용되어 별도로 디자인 수정을 하지 않아도 됩니다 .
        원터치 주문서 조각 html 파일을 수정할 경우, 작성한 정보가 유실되거나 주문서 최신 기능이 자동 업그레이드되지 않을 수 있으니 유의해 주세요.
-->
			<div id="ec-jigsaw-area-productdetail"></div>
			<!-- File end -->
			<!-- [주문배송정보] 주문자정보, 배송지정보, 배송정보 -->
			<!-- File start -->
			<!--
            이 파일은 원터치 주문서의 읽기 전용 파일입니다.
            이 파일은 기능 업그레이드 시, 자동으로 개선된 소스가 적용되어 별도로 디자인 수정을 하지 않아도 됩니다 .
            원터치 주문서 조각 html 파일을 수정할 경우, 작성한 정보가 유실되거나 주문서 최신 기능이 자동 업그레이드되지 않을 수 있으니 유의해 주세요.
    -->
			<!-- 이값은 지우면 안되는 값입니다.
        $delivery_list_type=embeded
        $isRuleBasedAddrForm = T
    -->
			<div class="billingNshipping">
				<!-- 주문자정보 -->
				<div id="ec-jigsaw-area-billingInfo"
					class="ec-base-fold eToggle selected displaynone">
					<div id="ec-jigsaw-title-billingInfo" class="title">
						<h2>주문자</h2>
						<span id="ec-jigsaw-heading-billingInfo" class="txtEm gRight"
							style="display: none;"></span>
					</div>

				</div>

				<!-- 배송정보  -->


				<!-- 수령자 정보   -->
				<div id="ec-jigsaw-area-shippingInfo"
					class="ec-base-fold eToggle selected">
					<div id="ec-jigsaw-title-shippingInfo" class="title">
						<h2>배송지</h2>
					</div>
					<div class="contents">
						<!-- app tag -->
						<div id="ec-orderform-billingNshipping-head"></div>
						<!-- 국내배송 정보 -->
						<div class="">
							<div id="ec-jigsaw-tab-shippingInfo"
								class="ec-base-tab displaynone">
								<ul>
									<li id="ec-jigsaw-tab-shippingInfo-recentAddress" class=""><a
										href="#none">최근 배송지</a></li>
									<li id="ec-jigsaw-tab-shippingInfo-newAddress" class="selected"><a
										href="#none">직접입력</a></li>
								</ul>
							</div>
							<!-- 최근배송지 -->
							<div id="ec-shippingInfo-recentAddress"
								class="tabCont recentShipArea " style="display: none;">
								<div id="ec-shippingInfo-recentAddressText" class="segment">
									<div class="ec-shop-deliveryInfoText recent">
										<strong class="name"><span class="txtEm"
											id="ec-shop-deliveryInfoMainLabel"></span><span
											id="ec-shop-deliveryInfoName"></span></strong>
										<p class="address gBlank10">
											[<span id="ec-shop-deliveryInfoZipcode"></span>] <span
												id="ec-shop-deliveryInfoAddress"> </span>
										</p>
										<dl class="contact">
											<dt class="">휴대전화</dt>
											<dd class="" id="ec-shop-deliveryInfoCell">010</dd>
											<dt class="displaynone">일반전화</dt>
											<dd class="displaynone" id="ec-shop-deliveryInfoTel"></dd>
										</dl>
									</div>
									<span class="sideRight"><button type="button"
											id="ec-shippingInfo-showRecentAddressList"
											class="btnNormal mini">배송지 목록</button></span>
								</div>

								<div id="ec-shippingInfo-recentAddressList" class="segment"
									style="display: none;">
									<h3 class="heading">배송지를 선택해 주세요.</h3>
									<ul class="shippingList">
										<li class="xans-element- xans-order xans-order-deliverylist "><strong
											class="name"><span
												id="ec-shippingInfo-recentAddressList-mainLabel-"
												class="txtEm"></span> </strong>
											<div class="description">
												<span class="choice"><input type="radio"
													id="ec-shippingInfo-recentAddressList-choice-select-"
													name="ec-shippingInfo-recentAddressList-choice" value=""
													class="fRadio"></span>
												<p class="address gBlank10">
													[<span class="ec-shippingInfo-recentAddressList-zipcode-"></span>]
													<span class="ec-shippingInfo-recentAddressList-addr1-"></span><br>
													<span class="ec-shippingInfo-recentAddressList-addr2-"></span>
												</p>
												<dl class="contact">
													<dt>휴대전화</dt>
													<dd></dd>
													<dt>일반전화</dt>
													<dd></dd>
												</dl>
											</div> <span class="button">
												<button type="button"
													id="ec-shippingInfo-recentAddressList-choice-modify-"
													class="btnText">수정</button>
										</span></li>
									</ul>
									<span class="sideRight"><button type="button"
											id="ec-shippingInfo-closeRecentAddressList"
											class="btnBase mini">닫기</button></span>
								</div>
							</div>

							<!-- 새 배송지 -->
							<div id="ec-shippingInfo-newAddress" class="tabCont newShipArea ">
								<div class="segment ec-shippingInfo-sameaddr displaynone">
									<input id="sameaddr0" name="sameaddr" fw-filter="" fw-label="1"
										fw-msg="" value="M" type="radio" disabled=""><label
										for="sameaddr0">회원 정보와 동일</label> <input id="sameaddr1"
										name="sameaddr" fw-filter="" fw-label="1" fw-msg="" value="F"
										type="radio" checked="checked" disabled=""><label
										for="sameaddr1">새로운 배송지</label>
								</div>
								<div class="ec-base-table typeWrite">
									<table border="1">
										<caption>배송 정보 입력</caption>
										<colgroup>
											<col style="width: 102px">
											<col style="width: auto">
										</colgroup>
										<tbody>
											<tr class="ec-shippingInfo-newAddress-name">
												<th scope="row">받는사람 <span class="icoRequired">필수</span>
												</th>
												<td><input id="rname" name="rname" fw-filter="isFill"
													fw-label="수취자 성명" fw-msg="" class="inputTypeText"
													placeholder="" size="15" value="" type="text"></td>
											</tr>
											<tr id="ec-receiver-address">
												<th scope="row">주소 <span class=""><span
														class="icoRequired">필수</span></span>
												</th>
												<td>
													<ul class="ec-address">
														<li id="receiver_country_wrap" class="displaynone"
															style="display: none;"><select id="" name=""
															class="displaynone gCheckbox60" disabled=""><option
																	value="">국가를 선택해주세요.</option>
																<option value="GH">가나(GHANA)</option>
																<option value="GA">가봉(GABON)</option>
																<option value="GY">가이아나(GUYANA)</option>
																<option value="GM">감비아(GAMBIA)</option>
																<option value="GT">과테말라(GUATEMALA)</option>
																<option value="GD">그레나다(GRENADA)</option>
																<option value="GE">그루지야(GEORGIA)</option>
																<option value="GR">그리스(GREECE)</option>
																<option value="GN">기니(GUINEA)</option>
																<option value="GW">기니비소(GUINEA-BISSAU)</option>
																<option value="NA">나미비아(NAMIBIA)</option>
																<option value="NG">나이지리아(NIGERIA)</option>
																<option value="ZA">남아프리카공화국(SOUTH AFRICA)</option>
																<option value="AN">네덜란드(네덜란드령앤틸리스)(NETHERLANDS(ANTILLES))</option>
																<option value="NL">네덜란드(네델란드)(NETHERLANDS)</option>
																<option value="AW">네덜란드(아루바섬)(ARUBA)</option>
																<option value="NP">네팔(NEPAL)</option>
																<option value="NO">노르웨이(NORWAY)</option>
																<option value="NZ">뉴질란드(NEW ZEALAND)</option>
																<option value="NE">니제르(NIGER)</option>
																<option value="NI">니카라과(NICARAGUA)</option>
																<option value="KR" selected="">대한민국(KOREA (REP
																	OF,))</option>
																<option value="DK">덴마크(DENMARK)</option>
																<option value="GL">덴마크(그린란드)(GREENLAND)</option>
																<option value="FO">덴마크(페로즈제도)(FAROE ISLANDS)</option>
																<option value="DO">도미니카공화국(DOMINICAN REPUBLIC)</option>
																<option value="DM">도미니카연방(DOMINICA)</option>
																<option value="DE">독일(GERMANY)</option>
																<option value="TL">동티모르(TIMOR-LESTE)</option>
																<option value="LA">라오스(LAO PEOPLE'S DEM REP)</option>
																<option value="LR">라이베리아(LIBERIA)</option>
																<option value="LV">라트비아(LATVIA)</option>
																<option value="RU">러시아(RUSSIAN FEDERATION)</option>
																<option value="LB">레바논(LEBANON)</option>
																<option value="LS">레소토(LESOTHO)</option>
																<option value="RO">루마니아(ROMANIA)</option>
																<option value="LU">룩셈부르크(LUXEMBOURG)</option>
																<option value="RW">르완다(RWANDA)</option>
																<option value="LY">리비아(LIBYAN ARAB JAMAHIRIYA)</option>
																<option value="LI">리첸쉬테인(LIECHTENSTEIN)</option>
																<option value="LT">리투아니아(LITHUANIA)</option>
																<option value="MG">마다가스카르(MADAGASCAR)</option>
																<option value="MK">마케도니아(MACEDONIA)</option>
																<option value="MW">말라위(MALAWI)</option>
																<option value="MY">말레이지아(MALAYSIA)</option>
																<option value="ML">말리(MALI)</option>
																<option value="MX">멕시코(MEXICO)</option>
																<option value="MC">모나코(MONACO)</option>
																<option value="MA">모로코(MOROCCO)</option>
																<option value="MU">모리셔스(MAURITIUS)</option>
																<option value="MR">모리타니(MAURITANIA)</option>
																<option value="MZ">모잠비크(MOZAMBIQUE)</option>
																<option value="ME">몬테네그로(MONTENEGRO)</option>
																<option value="MD">몰도바(MOLDOVA, REPUBLIC OF)</option>
																<option value="MV">몰디브(MALDIVES)</option>
																<option value="MT">몰타(MALTA)</option>
																<option value="MN">몽고(MONGOLIA)</option>
																<option value="US">미국(U.S.A)</option>
																<option value="GU">미국(괌)(GUAM)</option>
																<option value="MH">미국(마아샬제도)(MARSHALL ISLANDS)</option>
																<option value="VI">미국(버진제도)(VIRGIN ISLANDS
																	U.S.)</option>
																<option value="WS">미국(사모아, 구 서사모아)(SAMOA)</option>
																<option value="AS">미국(사모아제도)(AMERICAN SAMOA)</option>
																<option value="MP">미국(사이판)(NORTHERN MARIANA
																	ISLANDS)</option>
																<option value="PW">미국(팔라우섬)(PALAU)</option>
																<option value="PR">미국(푸에르토리코섬)(PUERTO RICO)</option>
																<option value="MM">미얀마(MYANMAR)</option>
																<option value="FM">미크로네시아(마이크로네시아)(MICRONESIA)</option>
																<option value="VU">바누아투(VANUATU)</option>
																<option value="BH">바레인(BAHRAIN)</option>
																<option value="BB">바베이도스(BARBADOS)</option>
																<option value="BS">바하마(BAHAMAS)</option>
																<option value="BD">방글라데시(BANGLADESH)</option>
																<option value="VE">베네수엘라(VENEZUELA)</option>
																<option value="BJ">베넹(BENIN)</option>
																<option value="VN">베트남(VIET NAM)</option>
																<option value="BE">벨기에(BELGIUM)</option>
																<option value="BY">벨라루스(BELARUS)</option>
																<option value="BZ">벨리세(BELIZE)</option>
																<option value="BA">보스니아헤르체코비나(Bosnia and
																	Herzegovina)</option>
																<option value="BW">보츠와나(BOTSWANA)</option>
																<option value="BO">볼리비아(BOLIVIA)</option>
																<option value="BF">부르키나파소(BURKINA FASO)</option>
																<option value="BT">부탄(BHUTAN)</option>
																<option value="BG">불가리아(BULGARIA(REP))</option>
																<option value="BR">브라질(BRAZIL)</option>
																<option value="BN">브루네이(나이)(BRUNEI DARUSSALAM)</option>
																<option value="BI">브룬디(BURUNDI)</option>
																<option value="SA">사우디아라비아(SAUDI ARABIA)</option>
																<option value="CY">사이프러스(CYPRUS)</option>
																<option value="SM">산마리노(SAN MARINO)</option>
																<option value="SN">세네갈(SENEGAL)</option>
																<option value="RS">세르비아/코소보(SERBIA/KOSOVO)</option>
																<option value="SC">세이셸(SEYCHELLES)</option>
																<option value="LC">세인트 루시아(SAINT LUCIA)</option>
																<option value="VC">세인트빈센트그레나딘(SAINT VINCENT AND
																	THE GRENADINES)</option>
																<option value="KN">세인트키츠네비스(SAINT KITTS AND
																	NEVIS)</option>
																<option value="SB">솔로몬아일란드(SOLOMON ISLANDS)</option>
																<option value="SR">수리남(SURINAME)</option>
																<option value="LK">스리랑카(SRI LANKA)</option>
																<option value="SZ">스와질랜드(SWAZILAND)</option>
																<option value="SE">스웨덴(SWEDEN)</option>
																<option value="CH">스위스(SWITZERLAND)</option>
																<option value="ES">스페인(에스파니아)(SPAIN)</option>
																<option value="SK">슬로바키아(SLOVAKIA)</option>
																<option value="SI">슬로베니아(SLOVENIA)</option>
																<option value="SL">시에라리온(SIERRA LEONE)</option>
																<option value="SG">싱가포르(SINGAPORE)</option>
																<option value="AE">아랍에미레이트연합국(UNITED ARAB
																	EMIRATES)</option>
																<option value="AM">아르메니아(ARMENIA)</option>
																<option value="AR">아르헨티나(ARGENTINA)</option>
																<option value="IS">아이슬란드(ICELAND)</option>
																<option value="HT">아이티(HAITI)</option>
																<option value="IE">아일란드(에이레)(IRELAND)</option>
																<option value="AZ">아제르바이잔(AZERBAIJAN)</option>
																<option value="AF">아프가니스탄(AFGHANISTAN)</option>
																<option value="AD">안도라(ANDORRA)</option>
																<option value="AL">알바니아(ALBANIA)</option>
																<option value="DZ">알제리(ALGERIA)</option>
																<option value="AO">앙골라(ANGOLA)</option>
																<option value="AG">앤티과바부다(ANTIGUA AND BARBUDA)</option>
																<option value="ER">에리트리아(ERITREA)</option>
																<option value="EE">에스토니아(ESTONIA)</option>
																<option value="EC">에콰도르(ECUADOR)</option>
																<option value="SV">엘살바도르(EL SALVADOR)</option>
																<option value="GB">영국(UNITED KINGDOM)</option>
																<option value="MS">영국(몽세라)(MONTSERRAT)</option>
																<option value="BM">영국(버뮤다섬)(BERMUDA)</option>
																<option value="VG">영국(버진제도)(VIRGIN ISLANDS
																	BRITISH)</option>
																<option value="AI">영국(안귈라섬)(ANGUILLA)</option>
																<option value="GI">영국(지브롤터)(GIBRALTAR)</option>
																<option value="KY">영국(케이만제도)(CAYMAN ISLANDS)</option>
																<option value="TC">영국(터크스케이코스제도)(TURKS AND
																	CAICOS ISLANDS)</option>
																<option value="YE">예멘(YEMEN)</option>
																<option value="OM">오만(OMAN)</option>
																<option value="NF">오스트레일리아(노퍽섬)(NORFOLK ISLAND)</option>
																<option value="AU">오스트레일리아(호주)(AUSTRALIA)</option>
																<option value="AT">오스트리아(AUSTRIA)</option>
																<option value="HN">온두라스(HONDURAS)</option>
																<option value="JO">요르단(JORDAN)</option>
																<option value="UG">우간다(UGANDA)</option>
																<option value="UY">우루과이(URUGUAY)</option>
																<option value="UZ">우즈베크(UZBEKISTAN)</option>
																<option value="UA">우크라이나(UKRAINE)</option>
																<option value="ET">이디오피아(ETHIOPIA)</option>
																<option value="IQ">이라크(IRAQ)</option>
																<option value="IR">이란(IRAN(ISLAMIC REP))</option>
																<option value="IL">이스라엘(ISRAEL)</option>
																<option value="EG">이집트(EGYPT)</option>
																<option value="IT">이탈리아(이태리)(ITALY)</option>
																<option value="IN">인도(INDIA)</option>
																<option value="ID">인도네시아(INDONESIA)</option>
																<option value="JP">일본(JAPAN)</option>
																<option value="JM">자메이카(JAMAICA)</option>
																<option value="ZM">잠비아(ZAMBIA)</option>
																<option value="CN">중국(CHINA(PEOPLE'S REP))</option>
																<option value="MO">중국(마카오)(MACAU)</option>
																<option value="HK">중국(홍콩)(HONG KONG)</option>
																<option value="CF">중앙 아프리카(CENTRAL AFRICAN
																	REPUBLIC)</option>
																<option value="DJ">지부티(DJIBOUTI)</option>
																<option value="ZW">짐바브웨(ZIMBABWE)</option>
																<option value="TD">차드(CHAD)</option>
																<option value="CZ">체코(CZECH REP)</option>
																<option value="CL">칠레(CHILE)</option>
																<option value="CM">카메룬(CAMEROON)</option>
																<option value="CV">카보베르데(CAPE VERDE)</option>
																<option value="KZ">카자흐(KAZAKHSTAN)</option>
																<option value="QA">카타르(QATAR)</option>
																<option value="KH">캄보디아(CAMBODIA)</option>
																<option value="CA">캐나다(CANADA)</option>
																<option value="KE">케냐(KENYA)</option>
																<option value="CR">코스타리카(COSTA RICA)</option>
																<option value="CI">코트디봐르(COTE D IVOIRE)</option>
																<option value="CO">콜롬비아(COLOMBIA)</option>
																<option value="CG">콩고(CONGO)</option>
																<option value="CU">쿠바(CUBA)</option>
																<option value="KW">쿠웨이트(KUWAIT)</option>
																<option value="HR">크로아티아(CROATIA)</option>
																<option value="KG">키르키즈스탄(KYRGYZSTAN)</option>
																<option value="KI">키리바티(KIRIBATI)</option>
																<option value="TH">타이(태국)(THAILAND)</option>
																<option value="TW">타이완(대만)(TAIWAN)</option>
																<option value="TJ">타지키스탄(TAJIKISTAN)</option>
																<option value="TZ">탄자니아(TANZANIA(UNITED REP))</option>
																<option value="TR">터키(TURKEY)</option>
																<option value="TG">토고(TOGO)</option>
																<option value="TO">통가(TONGA)</option>
																<option value="TM">투르크메니스탄(TURKMENISTAN)</option>
																<option value="TV">투발루(TUVALU)</option>
																<option value="TN">튀니지(TUNISIA)</option>
																<option value="TT">트리니다드토바고(TRINIDAD AND
																	TOBAGO)</option>
																<option value="PA">파나마(PANAMA(REP))</option>
																<option value="PY">파라과이(PARAGUAY)</option>
																<option value="PK">파키스탄(PAKISTAN)</option>
																<option value="PG">파푸아뉴기니(PAPUA NEW GUINEA)</option>
																<option value="PE">페루(PERU)</option>
																<option value="PT">포르투갈(PORTUGAL)</option>
																<option value="PL">폴란드(POLAND(REP))</option>
																<option value="FR">프랑스(FRANCE)</option>
																<option value="GP">프랑스(과데루프섬)(GUADELOUPE)</option>
																<option value="GF">프랑스(기아나)(FRENCH GUIANA)</option>
																<option value="NC">프랑스(뉴칼레도니아섬)(NEW CALEDONIA)</option>
																<option value="RE">프랑스(레위니옹섬)(REUNION)</option>
																<option value="MQ">프랑스(마르티니크섬)(MARTINIQUE)</option>
																<option value="PF">프랑스(폴리네시아)(FRENCH POLYNESIA)</option>
																<option value="FJ">피지(FIJI)</option>
																<option value="FI">필란드(FINLAND)</option>
																<option value="PH">필리핀(PHILIPPINES)</option>
																<option value="HU">헝가리(HUNGARY(REP))</option></select></li>





														<li id="receiver_state_wrap" class="displaynone"
															style="display: none;"><select id="ju_do_us_r"
															name="ju_do_us_r" class="displaynone" disabled=""
															fw-filter="" style="display: none;">
																<option value="">주/도를 선택해주세요</option>
														</select><select id="ju_do_ca_r" name="ju_do_ca_r"
															class="displaynone" disabled="" style="display: none;"
															fw-filter="">
																<option value="">주/도를 선택해주세요</option>
														</select><input id="ju_do_r" name="ju_do_r" placeholder="주/도"
															fw-filter="" class="inputTypeText displaynone"
															type="text" size="30" maxlength="50" disabled=""
															style="display: none;"></li>

														<li id="receiver_city_wrap" class="displaynone"
															style="display: none;"><input id="si_gun_dosi_r"
															name="si_gun_dosi_r" placeholder="시/군/도시" fw-filter=""
															class="inputTypeText displaynone" type="text" size="30"
															maxlength="50" disabled="" style="display: none;">
														</li>

														<li id="receiver_area_wrap"
															class="ec-address-area displaynone"
															style="display: none;"><select id="si_name_r"
															name="si_name_r" class="displaynone" disabled=""
															fw-filter="" style="display: none;">
																<option value="">ADDR.COMMON.FORMATSELECT.STATE.KR</option>
														</select><select id="ci_name_r" name="ci_name_r"
															class="displaynone" disabled="" style="display: none;"
															fw-filter="">
																<option value="">ADDR.COMMON.FORMATSELECT.CITY.KR</option>
														</select><select id="gu_name_r" name="gu_name_r"
															class="displaynone" disabled="" style="display: none;"
															fw-filter="">
																<option value="">ADDR.COMMON.FORMATSELECT.STREET.KR</option>
														</select></li>

														<li id="receiver_zipcode_wrap" class="ec-address-zipcode"
															style=""><input id="rzipcode1" name="rzipcode1"
															placeholder="우편번호" fw-filter="isLengthRange[1][14]"
															class="inputTypeText" type="text" maxlength="14"
															readonly="" fw-label="우편번호" style="">
															<button id="btn_search_rzipcode" class="btnBasic"
																type="button" style="cursor: pointer;">주소검색</button> <span
															class="ec-base-label"> <input id="no_rzipcode0"
																name="no_rzipcode0" class="displaynone" type="checkbox"
																disabled="" fw-filter=""
																style="display: none; cursor: unset;"> <label
																id="receiver_zipcode_check_label" for="no_rzipcode0"
																class="displaynone" disabled="" style="display: none;"
																fw-filter="">우편번호 없음</label>
														</span></li>
														<li id="receiver_baseAddr_wrap" class="" style=""><input
															id="raddr1" name="raddr1" placeholder="기본주소"
															fw-filter="isFill" class="inputTypeText" type="text"
															size="60" maxlength="100" readonly="" fw-label="기본주소"
															style=""></li>
														<li id="receiver_detailAddr_wrap" class="" style="">
															<input id="raddr2" name="raddr2"
															placeholder="나머지 주소(선택 입력 가능)" fw-filter=""
															class="inputTypeText" type="text" size="60"
															maxlength="255" fw-label="나머지 주소(선택 입력 가능)" style="">
														</li>
													</ul>
												</td>
											</tr>
											<tr class="ec-shippingInfo-receiverPhone displaynone">
												<th scope="row">일반전화 <span class="displaynone"><span
														class="icoRequired">필수</span></span>
												</th>
												<td></td>
											</tr>
											<tr class="ec-shippingInfo-receiverCell ">
												<th scope="row">휴대전화 <span class=""><span
														class="icoRequired">필수</span></span>
												</th>
												<td><select id="rphone2_1" name="rphone2_[]"
													fw-filter="isNumber&amp;isFill" fw-label="수취자 핸드폰번호"
													fw-alone="N" fw-msg="">
														<option value="010">010</option>
														<option value="011">011</option>
														<option value="016">016</option>
														<option value="017">017</option>
														<option value="018">018</option>
														<option value="019">019</option>
												</select>-<input id="rphone2_2" name="rphone2_[]" maxlength="4"
													fw-filter="isNumber&amp;isFill" fw-label="수취자 핸드폰번호"
													fw-alone="N" fw-msg="" size="4" value="" type="text">-<input
													id="rphone2_3" name="rphone2_[]" maxlength="4"
													fw-filter="isNumber&amp;isFill" fw-label="수취자 핸드폰번호"
													fw-alone="N" fw-msg="" size="4" value="" type="text"></td>
											</tr>
											<tr class="ec-orderform-emailRow ec-shop-deliverySimpleForm">
												<th scope="row">이메일 <span class="icoRequired">필수</span>
												</th>
												<td>
													<div class="ec-base-mail">
														<input id="oemail1" name="oemail1" fw-filter="isFill"
															fw-label="주문자 이메일" fw-alone="N" fw-msg="" class="mailId"
															value="" type="text">@ <span class="mailAddress">
															<select id="oemail3" fw-filter="isFill"
															fw-label="주문자 이메일" fw-alone="N" fw-msg="">
																<option value="" selected="selected">-이메일 선택-</option>
																<option value="naver.com">naver.com</option>
																<option value="daum.net">daum.net</option>
																<option value="nate.com">nate.com</option>
																<option value="hotmail.com">hotmail.com</option>
																<option value="yahoo.com">yahoo.com</option>
																<option value="empas.com">empas.com</option>
																<option value="korea.com">korea.com</option>
																<option value="dreamwiz.com">dreamwiz.com</option>
																<option value="gmail.com">gmail.com</option>
																<option value="etc">직접입력</option>
														</select> <span class="directInput ec-compact-etc"><input
																id="oemail2" name="oemail2" fw-filter="isFill"
																fw-label="주문자 이메일" fw-alone="N" fw-msg=""
																placeholder="직접입력" value="" type="text"></span>
														</span>
													</div>
													<p class="ec-base-help">
														이메일로 주문 처리 과정을 보내드립니다.<br>수신 가능한 이메일 주소를 입력해 주세요.
													</p>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<!-- 안심번호 서비스 사용 -->
							<div class="ec-shippingInfo-safePhone segment unique displaynone">
								<div class="safePhone">
									<span class="useCheck"></span> <a
										href="/order/ec_orderform/popup/safePhone.html"
										target="_blank" class="txtLink">안내</a>
								</div>
							</div>
						</div>

						<!-- 해외배송 정보 -->
						<div id="ec-shippingInfo-overseaAddress" class="displaynone">
							<div class="ec-base-table typeWrite">
								<table border="1">
									<caption>배송 정보 입력</caption>
									<colgroup>
										<col style="width: 102px">
										<col style="width: auto">
									</colgroup>
									<tbody>
										<tr class="ec-shippingInfo-newAddress-name">
											<th scope="row">받는사람 <span class="icoRequired">필수</span>
											</th>
											<td>
												<p class="ec-base-help">영문으로 작성해 주세요.</p>
											</td>
										</tr>
										<tr id="ec-freceiver-address">
											<th scope="row">주소 <span class="displaynone"><span
													class="icoRequired">필수</span></span>
											</th>
											<td></td>
										</tr>
										<tr class="ec-shippingInfo-receiverPhone displaynone">
											<th scope="row">일반전화 <span class="icoRequired">필수</span>
											</th>
											<td></td>
										</tr>
										<tr class="ec-shippingInfo-receiverCell ">
											<th scope="row">휴대전화 <span class="icoRequired">필수</span>
											</th>
											<td></td>
										</tr>

										<tr id="ec-shop-receiver_id_card_key" class="displaynone">
											<th scope="row">통관정보 <span class="icoRequired">필수</span>
											</th>
											<td><span class="gBlank10"></span>
												<p id="ec-shop-receiver_id_card_type_msg"
													class="ec-base-help"></p></td>
										</tr>
										<tr class="ec-shop-overseaShippingFee shippingPrice ">
											<th scope="row">배송비</th>
											<td>
												<div
													class="ec-shop-shipping_additional_fee_show displaynone">
													<p class="gBlank5 gBreak5">
														<span class="txtEm"><span
															id="f_addr_total_ship_fee_id"></span>원</span>
													</p>
													<div class="ec-base-table gCellNarrow">
														<table border="1">
															<caption>배송비 상세</caption>
															<colgroup>
																<col style="width: 113px">
																<col style="width: auto">
															</colgroup>
															<tbody>
																<tr>
																	<th scope="row">해외배송비</th>
																	<td class="right"><span id="f_addr_delv_price_id"></span>원</td>
																</tr>
																<tr class="displaynone">
																	<th scope="row">보험료</th>
																	<td class="right">+<span
																		id="f_addr_insurance_price_id"></span>원
																	</td>
																</tr>
																<tr class="ec-shop-shipping_additional_fee_name_show">
																	<th scope="row"><span
																		id="f_addr_shipping_additional_fee_name_id"></span></th>
																	<td class="right">+<span
																		id="f_addr_shipping_additional_fee_id"></span>원
																	</td>
																</tr>
															</tbody>
														</table>
													</div>
													<p class="ec-base-help typeDash displaynone">보험료는
														배송과정에서 발생하는 분실, 도난, 파손 등으로 인한 손해에 대하여 규정에 따라 배상해 드리는
														서비스입니다.</p>
												</div>
												<div class="ec-shop-shipping_additional_fee_hide ">
													<p class="gBlank5 gBreak5">
														<span class="txtEm"><span
															id="f_addr_total_ship_fee_id"></span>원</span>
													</p>
													<div class="ec-base-table gCellNarrow">
														<table border="1">
															<caption>배송비 상세</caption>
															<colgroup>
																<col style="width: 113px">
																<col style="width: auto">
															</colgroup>
															<tbody>
																<tr>
																	<th scope="row">해외배송비</th>
																	<td class="right"><span id="f_addr_delv_price_id"></span>원</td>
																</tr>
																<tr class="displaynone">
																	<th scope="row">보험료</th>
																	<td class="right">+<span
																		id="f_addr_insurance_price_id"></span>원
																	</td>
																</tr>
															</tbody>
														</table>
													</div>
													<ul class="ec-base-help typeDash">
														<li>배송비에는 관세 및 세금 등의 각종 비용은 포함되어 있지 않습니다. 상품수령 시 고객님이
															추가로 지불하셔야 합니다.</li>
														<li class="displaynone">보험료는 배송과정에서 발생하는 분실, 도난, 파손
															등으로 인한 손해에 대하여 규정에 따라 배상해 드리는 서비스입니다.</li>
													</ul>
												</div>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>

						<!-- app 배송지정보 -->
						<div id="ec-appshippingInfo" style="display: none;"></div>

						<!-- 국내배송 메시지 -->
						<div class="ec-shippingInfo-shippingMessage segment unique  ">
							<select id="omessage_select" name="omessage_select" fw-filter=""
								fw-label="배송 메세지" fw-msg="">
								<option value="oMessage-0" selected="selected">-- 메시지
									선택 (선택사항) --</option>
								<option value="oMessage-1">배송 전에 미리 연락바랍니다.</option>
								<option value="oMessage-2">부재 시 경비실에 맡겨주세요.</option>
								<option value="oMessage-3">부재 시 문 앞에 놓아주세요.</option>
								<option value="oMessage-4">빠른 배송 부탁드립니다.</option>
								<option value="oMessage-5">택배함에 보관해 주세요.</option>
								<option value="oMessage-input">직접 입력</option>
							</select>
							<div class="ec-shippingInfo-omessageInput gBlank10"
								style="display: none;">
								<textarea id="omessage" name="omessage" fw-filter=""
									fw-label="배송 메세지" fw-msg="" maxlength="255" cols="70"></textarea>
								<div class="gBlank10 displaynone">
									<label><input id="omessage_autosave0"
										name="omessage_autosave[]" fw-filter="" fw-label="배송 메세지 저장"
										fw-msg="" value="T" type="checkbox" disabled=""><label
										for="omessage_autosave0"></label>[]에 자동 저장</label>
									<ul class="ec-base-help">
										<li>게시글은 비밀글로 저장되며 비밀번호는 주문번호 뒷자리로 자동 지정됩니다.</li>
									</ul>
								</div>
							</div>
						</div>

						<!-- 해외배송 메시지 -->
						<div
							class="ec-shippingInfo-shippingMessage segment unique displaynone ">
							<div class="ec-shippingInfo-omessageInput gBlank10"
								style="display: none;">
								<div class="gBlank10 displaynone">
									<label>[]에 자동 저장</label>
									<ul class="ec-base-help">
										<li>게시글은 비밀글로 저장되며 비밀번호는 주문번호 뒷자리로 자동 지정됩니다.</li>
									</ul>
								</div>
							</div>
						</div>

						<!-- 국내배송 기본 배송지 사용 -->
						<div
							class="ec-shippingInfo-newAddress-setMain segment displaynone"
							style="display: block;">
							<input id="set_main_address0" name="set_main_address[]"
								fw-filter="" fw-label="기본 배송지로 저장" fw-msg="" value="T"
								type="checkbox" disabled=""><label
								for="set_main_address0">기본 배송지로 저장</label>
						</div>

						<!-- app tag -->
						<div id="ec-orderform-billingNshipping-tail"></div>

						<!-- [비회원주문] 간편 회원가입, 비회원 비밀번호 입력 -->
						<!-- File start -->
						<!--
            이 파일은 원터치 주문서의 읽기 전용 파일입니다.
            이 파일은 기능 업그레이드 시, 자동으로 개선된 소스가 적용되어 별도로 디자인 수정을 하지 않아도 됩니다 .
            원터치 주문서 조각 html 파일을 수정할 경우, 작성한 정보가 유실되거나 주문서 최신 기능이 자동 업그레이드되지 않을 수 있으니 유의해 주세요.
    -->
						<!-- 주문서 간편 회원가입 -->


						<!-- app tag -->
						<div id="ec-orderform-guest-head"></div>

						<!-- app tag -->
						<div id="ec-orderform-guest-tail"></div>
					</div>
				</div>
			</div>
			<!-- File end -->
			<!-- [추가정보입력] 추가입력, 기타문의사항 -->
			<!-- File start -->
			<!--
            이 파일은 원터치 주문서의 읽기 전용 파일입니다.
            이 파일은 기능 업그레이드 시, 자동으로 개선된 소스가 적용되어 별도로 디자인 수정을 하지 않아도 됩니다 .
            원터치 주문서 조각 html 파일을 수정할 경우, 작성한 정보가 유실되거나 주문서 최신 기능이 자동 업그레이드되지 않을 수 있으니 유의해 주세요.
    -->
			<div id="ec-jigsaw-area-additionalInput"
				class="ec-base-fold eToggle selected displaynone">
				<div id="ec-jigsaw-title-additionalInput" class="title">
					<h2>추가입력</h2>
				</div>
				<div class="contents">
					<!-- app tag -->
					<div id="ec-orderform-additionalInput-head"></div>
					<!-- 추가입력 -->
					<div class="addArea displaynone">
						<div class="ec-base-table typeWrite">
							<table border="1">
								<caption>추가입력</caption>
								<colgroup>
									<col style="width: 122px">
									<col style="width: auto">
								</colgroup>
								<tbody class="xans-element- xans-order xans-order-ordadd">
									<tr class="">
										<th scope="row"><span class=""></span></th>
										<td></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<!-- 기타 문의사항 -->

					<!-- app tag -->
					<div id="ec-orderform-additionalInput-tail"></div>
				</div>
			</div>
			<!-- File end -->
			<!-- [주문상품] -->
			<!-- File start -->
			<!--
        이 파일은 원터치 주문서의 읽기 전용 파일입니다.
        이 파일은 기능 업그레이드 시, 자동으로 개선된 소스가 적용되어 별도로 디자인 수정을 하지 않아도 됩니다 .
        원터치 주문서 조각 html 파일을 수정할 경우, 작성한 정보가 유실되거나 주문서 최신 기능이 자동 업그레이드되지 않을 수 있으니 유의해 주세요.
-->
			<div id="ec-jigsaw-area-orderProduct"
				class="ec-base-fold eToggle selected">
				<div id="ec-jigsaw-title-orderProduct" class="title">
					<h2>주문상품</h2>
					<span id="ec-jigsaw-heading-orderProduct" class="txtStrong gRight"
						style="display: none;">1개</span>
				</div>
				<div class="contents">
					<!-- app tag -->
					<div id="ec-orderform-orderProduct-head"></div>

					<!-- 국내배송상품 주문내역 -->
					<div class="orderArea ">
						<!-- 기본배송 -->
						<div class="xans-element- xans-order xans-order-normallist">
							<!-- 참고: 상품반복 -->
							<div class="ec-base-prdInfo xans-record-">
								<div class="prdBox">
									<div class="displaynone">
										<input id="chk_order_cancel_list0"
											name="chk_order_cancel_list_basic0" value="13:000A:F:63"
											type="checkbox" disabled="">
									</div>
									<div class="thumbnail">
										<a href="/product/detail.html?product_no=13&amp;cate_no=24"><img
											src="//ecudemo173686.cafe24.com/web/product/tiny/202102/d970576199c03fb3efa428d34cc62e7b.jpg"
											alt="" width="90" height="90"></a>
									</div>
									<div class="description">
										<strong class="prdName" title="상품명"> <a
											href="/product/샘플상품-1/13/category/24/"
											class="ec-product-name">샘플상품 1</a></strong>
										<ul class="info">
											<li class="displaynone">무이자할부 상품</li>
											<li title="유효기간" class="displaynone">내 사용</li>
											<li title="옵션">
												<p class="option displaynone"></p>
											</li>
											<li>수량: 1개</li>
											<li><span id="">상품구매금액: 5,000원 </span> <span
												class="displaynone">()</span></li>
											<li id="" class="displaynone">할인금액: <span
												class="txtWarn">-<span id="">0</span>원
											</span> <span class="txtWarn displaynone">()</span>
											</li>
											<li title="배송">[조건] / 기본배송</li>
											<li class="displaynone" title="배송주기">배송주기 : <span
												class="txtEm"></span>
											</li>
											<li id="product_mileage0" class="mileage displaynone"
												title="적립금">-</li>
											<li class="displaynone">상품중량 : 1.00kg * 1개 = 1.00kg</li>
										</ul>
									</div>
									<button type="button" class="btnRemove displaynone"
										id="btn_product_one_delete_id0" prd="13:000A:F:63"
										set_prd_type="">삭제</button>
								</div>
							</div>
							<!-- //참고 -->
							<!-- 참고: 상품반복 -->
							<!-- //참고 -->
						</div>
						<div class="totalPrice ec-base-fold eToggle selected">
							<div class="title">
								<h3>[기본배송]</h3>
							</div>
							<div class="contents">
								<div class="ec-base-table gCellNarrow">
									<table border="1">
										<caption>금액정보</caption>
										<colgroup>
											<col style="width: 122px">
											<col style="width: auto">
										</colgroup>
										<tbody>
											<tr>
												<th scope="row">상품구매금액</th>
												<td class="right"><span class="txtStrong">+5,000원<span
														class="displaynone"> (0)</span></span></td>
											</tr>
											<tr class="displaynone">
												<th scope="row">부가세</th>
												<td class="right"><span class="txtStrong">+0원</span></td>
											</tr>
											<tr id="normal_total_benefit_price_area" class="displaynone">
												<th scope="row">할인금액</th>
												<td class="right"><span class="txtStrong">-<span
														id="normal_total_benefit_price">0</span>원
												</span></td>
											</tr>
											<tr>
												<th scope="row">배송비</th>
												<td class="right"><span class="txtStrong">+<span
														id="domestic_ship_fee">2,500</span>원
												</span></td>
											</tr>
											<tr class="displaynone">
												<th scope="row">합계</th>
												<td class="right"><span class="txtStrong"><span
														id="domestic_ship_fee_sum">7,500</span>원 <span
														class="refer displaynone">()</span></span></td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>

						<!-- 업체기본배송 -->
						<div class="totalPrice ec-base-fold eToggle displaynone">
							<div class="title">
								<h3>[업체기본배송]</h3>
							</div>
							<div class="contents">
								<div class="ec-base-table gCellNarrow">
									<table border="1">
										<caption>금액정보</caption>
										<colgroup>
											<col style="width: 122px">
											<col style="width: auto">
										</colgroup>
										<tbody>
											<tr>
												<th scope="row">상품구매금액</th>
												<td class="right"><span class="txtStrong">+<span
														class="displaynone"> ()</span></span></td>
											</tr>
											<tr class="displaynone">
												<th scope="row">부가세</th>
												<td class="right"><span class="txtStrong">+</span></td>
											</tr>
											<tr id="" class="displaynone">
												<th scope="row">할인금액</th>
												<td class="right"><span class="txtStrong">-<span
														id=""></span></span></td>
											</tr>
											<tr>
												<th scope="row">배송비</th>
												<td class="right"><span class="txtStrong">+<span
														id=""></span></span></td>
											</tr>
											<tr class="displaynone">
												<th scope="row">합계</th>
												<td class="right"><span class="txtStrong">+<span
														id=""></span> <span class="refer displaynone">()</span></span></td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>

						<!-- 개별배송 -->
						<div class="totalPrice ec-base-fold eToggle displaynone">
							<div class="title">
								<h3>[개별배송]</h3>
							</div>
							<div class="contents">
								<div class="ec-base-table gCellNarrow">
									<table border="1">
										<caption>금액정보</caption>
										<colgroup>
											<col style="width: 122px">
											<col style="width: auto">
										</colgroup>
										<tbody>
											<tr>
												<th scope="row">상품구매금액</th>
												<td class="right"><span class="txtStrong">+<span
														class="displaynone"> ()</span></span></td>
											</tr>
											<tr class="displaynone">
												<th scope="row">부가세</th>
												<td class="right"><span class="txtStrong">+</span></td>
											</tr>
											<tr id="" class="displaynone">
												<th scope="row">할인금액</th>
												<td class="right"><span class="txtStrong">-<span
														id=""></span></span></td>
											</tr>
											<tr>
												<th scope="row">배송비</th>
												<td class="right"><span class="txtStrong">+<span
														id=""></span></span></td>
											</tr>
											<tr class="displaynone">
												<th scope="row">합계</th>
												<td class="right"><span class="txtStrong"><span
														id=""></span> <span class="refer displaynone">()</span></span></td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>

					<!-- 해외배송상품 주문내역 -->
					<div class="orderArea displaynone">
						<div class="xans-element- xans-order xans-order-oversealist">
							<!-- 참고: 상품반복 -->
							<div class="ec-base-prdInfo ">
								<div class="prdBox">
									<div class="displaynone"></div>
									<div class="thumbnail">
										<a href="/product/detail.html"><img
											src="//img.echosting.cafe24.com/thumb/img_product_big.gif"
											alt="" width="90" height="90"></a>
									</div>
									<div class="description">
										<strong class="prdName" title="상품명"> </strong>
										<ul class="info">
											<li class="displaynone">무이자할부 상품</li>
											<li title="유효기간" class="displaynone">내 사용</li>
											<li title="옵션">
												<p class="option displaynone"></p>
												<ul
													class="xans-element- xans-order xans-order-optionset option">
													<li class="">- (개)</li>
												</ul>
											</li>
											<li>수량: 개</li>
											<li><span id="">상품구매금액: </span> <span
												class="displaynone">()</span></li>
											<li id="" class="displaynone">할인금액: <span
												class="txtWarn">-<span id=""></span>
											</span> <span class="txtWarn displaynone">()</span>
											</li>
											<li title="배송">/ 해외배송</li>
											<li class="displaynone" title="배송주기">배송주기 : <span
												class="txtEm"></span>
											</li>
											<li id="" class="mileage displaynone" title="적립금"></li>
											<li class="displaynone">상품중량 : kg * 개 = kg</li>
										</ul>
									</div>
									<button type="button" class="btnRemove displaynone">삭제</button>
								</div>
							</div>
							<!-- //참고 -->
						</div>
						<div class="totalPrice ec-base-fold eToggle displaynone">
							<div class="title">
								<h3>[해외배송]</h3>
							</div>
							<div class="contents">
								<div class="ec-base-table gCellNarrow">
									<table border="1">
										<caption>금액정보</caption>
										<colgroup>
											<col style="width: 122px">
											<col style="width: auto">
										</colgroup>
										<tbody>
											<tr>
												<th scope="row">상품구매금액</th>
												<td class="right"><span class="txtStrong">+<span
														class="displaynone"> ()</span></span></td>
											</tr>
											<tr class="displaynone">
												<th scope="row">부가세</th>
												<td class="right"><span class="txtStrong">+<span
														id="f_list_vat_price_id"></span>원
												</span></td>
											</tr>
											<tr id="" class="displaynone">
												<th scope="row">할인금액</th>
												<td class="right"><span class="txtStrong">-<span
														id=""></span>원
												</span></td>
											</tr>
											<tr>
												<th scope="row">배송비</th>
												<td class="right"><span class="txtStrong">+<span
														id="f_list_total_delv_price_id"></span>원
												</span></td>
											</tr>
											<tr class="displaynone">
												<th scope="row">합계</th>
												<td class="right"><span class="txtStrong"> <span
														class="refer displaynone">()</span></span></td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
					<div class="totalWeight displaynone">
						전체 상품중량 : <span>1.00kg</span>
					</div>

					<!-- app tag -->
					<div id="ec-orderform-orderProduct-tail"></div>
				</div>
				<div id="ec-shop-directbuy-order-product-info" class="displaynone"></div>
			</div>
			<!-- File end -->
			<!-- [사은품] -->
			<div id="ec-shop-gift_orderform">
				<!-- File start -->
				<!--
            이 파일은 원터치 주문서의 읽기 전용 파일입니다.
            이 파일은 기능 업그레이드 시, 자동으로 개선된 소스가 적용되어 별도로 디자인 수정을 하지 않아도 됩니다 .
            원터치 주문서 조각 html 파일을 수정할 경우, 작성한 정보가 유실되거나 주문서 최신 기능이 자동 업그레이드되지 않을 수 있으니 유의해 주세요.
    -->
				<!-- 이값은 지우면 안되는 값입니다.
        $easyform_gift=T
    -->
				<!-- File end -->

			</div>
			<!-- [할인/부가결제] 할인/부가결제, 자동 할인내역 레이어 팝업 -->
			<!-- File start -->
			<!--
            이 파일은 원터치 주문서의 읽기 전용 파일입니다.
            이 파일은 기능 업그레이드 시, 자동으로 개선된 소스가 적용되어 별도로 디자인 수정을 하지 않아도 됩니다 .
            원터치 주문서 조각 html 파일을 수정할 경우, 작성한 정보가 유실되거나 주문서 최신 기능이 자동 업그레이드되지 않을 수 있으니 유의해 주세요.
    -->

			<!-- File end -->
			<!-- [결제정보] -->
			<!-- File start -->
			<!--
            이 파일은 원터치 주문서의 읽기 전용 파일입니다.
            이 파일은 기능 업그레이드 시, 자동으로 개선된 소스가 적용되어 별도로 디자인 수정을 하지 않아도 됩니다 .
            원터치 주문서 조각 html 파일을 수정할 경우, 작성한 정보가 유실되거나 주문서 최신 기능이 자동 업그레이드되지 않을 수 있으니 유의해 주세요.
    -->
			<div id="ec-jigsaw-area-payment"
				class="ec-base-fold eToggle selected">
				<div id="ec-jigsaw-title-payment" class="title">
					<h2>결제정보</h2>
				</div>
				<div class="contents">
					<!-- app tag -->
					<div id="ec-orderform-payment-head"></div>

					<div class="segment">
						<div class="ec-base-table gCellNarrow">
							<table border="1">
								<caption>결제정보 상세</caption>
								<colgroup>
									<col style="width: 122px">
									<col style="width: auto">
								</colgroup>
								<tbody>
									<tr>
										<th scope="row">주문상품</th>
										<td class="right"><span id="total_product_base_price_id">28,000원</span></td>
									</tr>


									<tr>
										<th scope="row">배송비</th>
										<td class="right">+<span id="total_ship_price_id">0원</span>
										</td>
									</tr>

								</tbody>
							</table>
						</div>
						<div class="totalPay gBlank10">
							<h3 class="heading">결제금액</h3>
							<strong class="txtStrong"> <span
								id="payment_total_order_sale_price_view">14,000</span>원 <span
								class="refer displaynone">(<span
									id="payment_total_order_sale_price_ref_view"><span
										class="eRefPrice"></span></span>)
							</span>
							</strong> <span class="displaynone"><input id="total_price"
								name="total_price" fw-filter="isFill" fw-label="결제금액" fw-msg=""
								class="inputTypeText" placeholder=""
								style="text-align: right; ime-mode: disabled; clear: none; border: 0px; float: none;"
								size="10" readonly="1" value="14000" type="text" disabled=""></span>
						</div>
					</div>

					<!-- app tag -->
					<div id="ec-orderform-payment-tail"></div>
				</div>
			</div>
			<!-- File end -->
			<!-- [결제수단] -->
			<!-- File start -->
			<!--
            이 파일은 원터치 주문서의 읽기 전용 파일입니다.
            이 파일은 기능 업그레이드 시, 자동으로 개선된 소스가 적용되어 별도로 디자인 수정을 하지 않아도 됩니다 .
            원터치 주문서 조각 html 파일을 수정할 경우, 작성한 정보가 유실되거나 주문서 최신 기능이 자동 업그레이드되지 않을 수 있으니 유의해 주세요.
    -->
			<div id="ec-jigsaw-area-paymethod"
				class="ec-base-fold eToggle selected">
				<div id="ec-jigsaw-title-paymethod" class="title">
					<h2>결제수단</h2>
				</div>
				<div class="contents">
					<!-- app tag -->
					<div id="ec-orderform-paymethod-head"></div>

					<div class="segment">
						<ul class="payMethod">
							<li class="ec-paymethod-recentArea displaynone"><input
								type="radio" name="paymethod" id="paymethod-recent"
								class="fRadio" disabled=""><label for="paymethod-recent">최근
									결제수단</label>
								<div id="ec-payment-recentPaymethodText" class="inner"></div></li>
							<li class="ec-paymethod-newArea selected"><input
								type="radio" name="paymethod" id="paymethod-new"
								class="fRadio displaynone" checked=""><label
								for="paymethod-new"><span class="displaynone">다른
								</span>결제수단 선택</label>
								<div class="inner">
									<span class="ec-base-label"><input id="addr_paymethod0"
										name="addr_paymethod" fw-filter="isFill" fw-label="결제방식"
										fw-msg="" value="cash" type="radio" checked="checked"><label
										for="addr_paymethod0">무통장입금</label></span>
								</div></li>
						</ul>
					</div>

					<div class="ec-paymethod-input-detail">
						<div id="payment_input_cash" class="ec-base-table typeWrite"
							style="">
							<table border="1">
								<caption>무통장입금 정보 입력</caption>
								<colgroup>
									<col style="width: 100px">
									<col style="width: auto">
								</colgroup>
								<tbody>
									<tr>
										<th scope="row">입금은행 <span class="icoRequired">필수</span>
										</th>
										<td><select id="bankaccount" name="bankaccount"
											fw-filter="" fw-label="무통장 입금은행" fw-msg="">
												<option value="-1">::: 선택해 주세요. :::</option>
										</select></td>
									</tr>
									<tr>
										<th scope="row">입금자명 <span class="icoRequired">필수</span>
										</th>
										<td><input id="pname" name="pname" fw-filter=""
											fw-label="무통장 입금자명" fw-msg="" class="inputTypeText"
											placeholder="" size="15" maxlength="20" value="" type="text"></td>
									</tr>
								</tbody>
							</table>
						</div>

						<div id="payment_input_tcash" class="ec-base-table typeWrite"
							style="display: none;">
							<table border="1">
								<caption>실시간 계좌이체 정보 입력</caption>
								<colgroup>
									<col style="width: 100px">
									<col style="width: auto">
								</colgroup>
								<tbody>
									<tr>
										<th scope="row">예금주명 <span class="icoRequired">필수</span>
										</th>
										<td></td>
									</tr>
								</tbody>
							</table>
						</div>

						<!-- 에스크로(가상계좌) -->


						<!-- 카드사 직접결제: 카드/할부선택 -->


						<!-- 결제수단 도움말 -->

					</div>

					<div id="" class="receiptArea displaynone">
						<div class="title">
							<h3>현금영수증</h3>
						</div>
						<div class="ec-cashreceipt-textAndForm">
							<div class="ec-cashreceipt-textArea ec-base-box gBlank10">
								<div class="taxView">
									<span class="number"><span
										id="ec-cashreceipt-userTypeText"></span> <span
										id="ec-cashreceipt-numberText"></span></span>
								</div>
								<span class="sideRight"><a href="#none"
									id="ec-show-cashreceipt-form" class="btnNormal mini">정보변경</a></span>
							</div>

							<div class="ec-cashreceipt-formArea">
								<div id="" class="gBlank10">
									<span id=""> </span> <span id=""> </span>
								</div>
							</div>
						</div>
					</div>



					<!-- 결제수단 저장 -->
					<div class="saveArea segment unique displaynone">
						<input type="checkbox" id="save_paymethod" name="save_paymethod"
							value="" disabled=""><label for="save_paymethod">결제수단과
							입력정보를 다음에도 사용</label>
					</div>

					<!-- app tag -->
					<div id="ec-orderform-paymethod-tail"></div>
				</div>
			</div>
			<!-- Layer pop-up for transaction fee -->
			<!-- File start -->
			<!-- File start -->
			<div id="ec-orderform-defer-layer" style="display: none;"
				class="xans-element- xans-order xans-order-deferedpaymentguide ec-base-layer typeWide theme1 xans-record-">
				<h1>결제 수수료</h1>
				<div class="wrap">
					<div class="title">
						<h2>결제 수수료</h2>
					</div>
					<div class="contents">
						<div class="segment">
							<div class="ec-base-box">
								결제 수수료 계산기준은<span id="calculation_standard_title_id"></span>입니다.
								<div id="calculation_standard_comment_id"></div>
							</div>
							<div id="">
								<div id="ec-order-company"></div>
								<div class="ec-base-table typeList">
									<table border="1">
										<caption>결제 수수료</caption>
										<colgroup>
											<col style="width: auto">
											<col style="width: 30%">
										</colgroup>
										<thead>
											<tr>
												<th scope="col">범위</th>
												<th scope="col">수수료</th>
											</tr>
										</thead>
										<tbody id="deferred_payment_commission_list_body_id">
											<tr class="ec-deferred-payment-commission"
												style="display: none;">
												<td><span class="ec-deferred-commission-min-amount"></span>
													이상 ~ <span class="ec-deferred-commission-max-amount"></span>
													미만</td>
												<td class="right"><span
													class="ec-deferred-commission-payment-commission"></span><span
													class="txtWord ec-deferred-commission-payment-commission-ref-price"></span>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
				<button type="button" class="ec-button-offLayer btnClose">닫기</button>
			</div>
			<!-- File end -->
			<!-- File end -->
			<!-- File end -->
			<!-- [적립 혜택] -->
			<!-- File start -->
			<!--
            이 파일은 원터치 주문서의 읽기 전용 파일입니다.
            이 파일은 기능 업그레이드 시, 자동으로 개선된 소스가 적용되어 별도로 디자인 수정을 하지 않아도 됩니다 .
            원터치 주문서 조각 html 파일을 수정할 경우, 작성한 정보가 유실되거나 주문서 최신 기능이 자동 업그레이드되지 않을 수 있으니 유의해 주세요.
    -->
			<div id="ec-jigsaw-area-benefit"
				class="ec-base-fold eToggle displaynone">
				<div id="ec-jigsaw-title-benefit" class="title">
					<h2>적립 혜택</h2>
					<span id="ec-jigsaw-heading-benefit" class="txtStrong gRight"><span
						id="mAllMileageSum-title">0원</span> 예정</span>
				</div>
				<div class="contents">
					<!-- app tag -->
					<div id="ec-orderform-benefit-head"></div>
					<div class="segment">
						<div class="ec-base-table gCellNarrow">
							<table border="1">
								<caption>적립 혜택 상세</caption>
								<colgroup>
									<col style="width: 160px">
									<col style="width: auto">
								</colgroup>
								<tbody>
									<tr>
										<th scope="row">상품별 적립금</th>
										<td class="right"><span id="mProductMileage">0원</span></td>
									</tr>
									<tr>
										<th scope="row">회원 적립금</th>
										<td class="right"><span id="mMemberMileage">0원</span></td>
									</tr>
									<tr>
										<th scope="row">쿠폰 적립금</th>
										<td class="right"><span id="mCouponMileage">0원</span></td>
									</tr>
									<tr class="displaynone">
										<th scope="row">플러스앱주문 적립금</th>
										<td class="right"><span id="mPlusappMileage">0원</span></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<div class="totalPay">
						<h3 class="heading">적립 예정금액</h3>
						<strong class="txtEm"><span id="mAllMileageSum" style="">0원</span></strong>
					</div>
					<!-- app tag -->
					<div id="ec-orderform-benefit-tail"></div>
				</div>
			</div>
			<!-- File end -->
			<!-- [약관동의] -->
			<!-- File start -->
			<!--
            이 파일은 원터치 주문서의 읽기 전용 파일입니다.
            이 파일은 기능 업그레이드 시, 자동으로 개선된 소스가 적용되어 별도로 디자인 수정을 하지 않아도 됩니다 .
            원터치 주문서 조각 html 파일을 수정할 경우, 작성한 정보가 유실되거나 주문서 최신 기능이 자동 업그레이드되지 않을 수 있으니 유의해 주세요.
    -->
			<!-- 이값은 지우면 안되는 값입니다.
        $easyform_agreement=T
    -->
			<div id="ec-jigsaw-area-agreement">
				<div class="agreeArea" id="all_agreement_checkbox">
					<div class="allAgree">
						<input type="checkbox" id="allAgree"><label for="allAgree"><strong>모든
								약관 동의</strong></label>
					</div>
					<div class="agreement">
						<!-- app tag -->
						<ul id="ec-orderform-agreement-head"></ul>
						<ul>
							<!-- 구매조건 확인 및 결제진행 동의 -->
							<li id="chk_purchase_agreement" style="">
								<div class="agree">
									<span class="check" style=""> <input
										id="chk_purchase_agreement0" name="chk_purchase_agreement"
										fw-filter="" fw-label="구매진행 동의" fw-msg="" value="T"
										type="checkbox" style=""> <label
										for="chk_purchase_agreement0"> <span class="txtEm">[필수]
										</span> 구매조건 확인 및 결제진행 동의
									</label></span>
								</div>
							</li>
							<!-- 결제대행서비스 약관 동의 -->
							<li id="ec-order-payment-directpay-card-agree"
								class="displaynone" style="display: none;">
								<div class="agree">
									<span class="check"><input type="checkbox"
										id="directpay_card_agree_financial"
										class="directpay_card_agree_checkbox" disabled=""><label
										for="directpay_card_agree_financial"><span
											class="txtEm">[필수]</span> 결제대행서비스 약관 동의</label></span>
									<button type="button" class="btnAgree"
										onclick="viewPaymentAgree()">내용보기</button>
								</div>
							</li>
							<!-- 쇼핑몰 이용약관 동의 -->
							<li class="">
								<div class="agree">
									<span class="check"><input id="mallAgree"
										name="mallAgree" type="checkbox"><label
										for="mallAgree"><span class="txtEm">[필수]</span> 쇼핑몰
											이용약관 동의</label></span> <span style="display: none;"><input
										id="mall_agreement_radio0" name="mall_agreement"
										fw-filter="isFill" fw-label="쇼핑몰 이용약관 동의" fw-msg="" value="T"
										type="radio"><label for="mall_agreement_radio0">동의함</label>
										<input id="mall_agreement_radio1" name="mall_agreement"
										fw-filter="isFill" fw-label="쇼핑몰 이용약관 동의" fw-msg="" value="F"
										type="radio" checked="checked"><label
										for="mall_agreement_radio1">동의안함</label></span>
									<button type="button" class="btnAgree"
										onclick="viewMallAgree();">내용보기</button>
								</div>
							</li>
							<!-- 고유식별정보 수집 동의 -->
							<li id="ec-shop-privacy_agreement_for_identification"
								class="displaynone">
								<div class="agree">
									<span class="check"><input
										id="privacy_agreement_for_identification_check_box0"
										name="privacy_agreement_for_identification_check_box"
										fw-filter="" fw-label="" fw-msg="" value="T" type="checkbox"
										disabled=""><label
										for="privacy_agreement_for_identification_check_box0"></label><label
										for="privacy_agreement_for_identification_check_box0"><span
											class="txtEm">[필수]</span> 고유식별정보 수집 동의</label></span>
									<button type="button" class="btnAgree"
										onclick="viewIdentification();">내용보기</button>
								</div>
							</li>
							<!-- 개인정보수집 이용동의 -->
							<li id="ec-orderform-PrivacyAgreementRow" class=""
								style="display: none;">
								<div class="agree">
									<span class="check"> <input
										id="privacy_agreement_check_box0"
										name="privacy_agreement_check_box" fw-filter="" fw-label=""
										fw-msg="" value="T" type="checkbox"> <label
										for="privacy_agreement_check_box0"></label> <label
										for="privacy_agreement_check_box0"><span class="txtEm">[필수]</span>
											개인정보 수집 및 이용 동의</label></span> <span style="display: none;"> <textarea
											id="privacy_agreement" name="privacy_agreement" fw-filter=""
											fw-label="개인정보수집이용동의" fw-msg="" maxlength="250" cols="70"
											readonly="1"> ** 본 양식은 쇼핑몰 운영에 도움을 드리고자 샘플로 제공되는 서식으로 쇼핑몰 운영형태에 따른 수정이 필요합니다. 쇼핑몰에 적용하시기 전, 쇼핑몰 운영 사항 등을 확인하시고 적절한 내용을 반영하여 사용하시기 바랍니다. **1. 개인정보 수집목적 및 이용목적가. 서비스 제공에 관한 계약 이행 및 서비스 제공에 따른 요금정산콘텐츠 제공 , 구매 및 요금 결제 , 물품배송 또는 청구지 등 발송 , 금융거래 본인 인증 및 금융 서비스나. 회원 관리회원제 서비스 이용에 따른 본인확인 , 개인 식별 , 불량회원의 부정 이용 방지와 비인가 사용 방지 , 가입 의사 확인 , 연령확인 , 만14세 미만 아동 개인정보 수집 시 법정 대리인 동의여부 확인, 불만처리 등 민원처리 , 고지사항 전달2. 수집하는 개인정보 항목 : 이름 , 로그인ID , 비밀번호 , 이메일 , 14세미만 가입자의 경우 법정대리인의 정보3. 개인정보의 보유기간 및 이용기간원칙적으로, 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체 없이 파기합니다. 단, 다음의 정보에 대해서는 아래의 이유로 명시한 기간 동안 보존합니다.가. 회사 내부 방침에 의한 정보 보유 사유o 부정거래 방지 및 쇼핑몰 운영방침에 따른 보관 : OO년나. 관련 법령에 의한 정보보유 사유o 계약 또는 청약철회 등에 관한 기록-보존이유 : 전자상거래등에서의소비자보호에관한법률-보존기간 : 5년o 대금 결제 및 재화 등의 공급에 관한 기록-보존이유: 전자상거래등에서의소비자보호에관한법률-보존기간 : 5년 o 소비자 불만 또는 분쟁처리에 관한 기록-보존이유 : 전자상거래등에서의소비자보호에관한법률-보존기간 : 3년 o 로그 기록 -보존이유: 통신비밀보호법-보존기간 : 3개월※ 동의를 거부할 수 있으나 거부시 회원 가입이 불가능합니다.</textarea></span>
									<button type="button" class="btnAgree"
										onclick="viewMemberJoinAgree();">내용보기</button>
								</div>
							</li>
							<!-- 배송정보 제공방침 -->
							<li class="displaynone">
								<div class="agree">
									<span class="check"><label
										for="delivery_info_offer_check_box0"><span
											class="txtEm">[필수]</span> 배송정보 제공방침 동의</label></span>
									<button type="button" class="btnAgree"
										onclick="viewDelivery();">내용보기</button>
								</div>
							</li>
							<!-- 정기결제 서비스 이용 동의 -->
							<li class="displaynone">
								<div class="agree">
									<span class="check"><label
										for="subscription_info_checkbox0"><span class="txtEm">[필수]</span>
											정기결제 서비스 이용 동의</label></span>
									<button type="button" class="btnAgree"
										onclick="viewRegularDelivery();">내용보기</button>
								</div>
							</li>
							<!-- 예약결제 이용 동의 -->
							<li class="displaynone">
								<div class="agree">
									<span class="check"><label
										for="crowdfunding_info_check_box"><span class="txtEm">[필수]</span>
											예약결제 이용 동의</label></span>
									<button type="button" class="btnAgree"
										onclick="viewCrowdfunding();">내용보기</button>
								</div>
							</li>
							<!-- 청약철회방침 -->
							<li class="displaynone">
								<div class="agree">
									<span class="check"><input
										id="subscription_agreement_chk0"
										name="subscription_agreement_chk" fw-filter="" fw-label=""
										fw-msg="" value="T" type="checkbox" disabled=""><label
										for="subscription_agreement_chk0"></label><label
										for="subscription_agreement_chk0"><span
											class="txtEm displaynone">[필수]</span><span class="">[선택]</span>
											청약철회방침 동의</label></span>
									<button type="button" class="btnAgree"
										onclick="viewSubscription();">내용보기</button>
								</div>
							</li>
							<!-- 개인정보 제3자 제공 동의 -->
							<li id="ec-orderform-informationAgreementRow" class="displaynone"
								style="display: none;">
								<div class="agree">
									<span class="check"><label
										for="information_agreement_check_box0">[선택] 개인정보 제3자
											제공 동의</label></span>
									<button type="button" class="btnAgree"
										onclick="viewInformationAgree();">내용보기</button>
								</div>
							</li>
							<!-- 개인정보취급 위탁 동의 -->
							<li id="ec-orderform-ConsignmentAgreementRow" class="displaynone"
								style="display: none;">
								<div class="agree">
									<span class="check"><label
										for="consignment_agreement_check_box0">[선택] 개인정보취급 위탁
											동의</label></span>
									<button type="button" class="btnAgree"
										onclick="viewConsignmentAgree();">내용보기</button>
								</div>
							</li>
							<!-- 전자보증보험 -->
							<li id="insurance_agreement_chk" class="insurance displaynone"
								style="display: none;">
								<div class="agree">
									<span class="check"><label
										for="insurance_agreement_chk0">[선택] 전자보증보험 발급시 개인정보 이용
											동의</label></span>
									<button type="button" class="btnAgree"
										onclick="viewInsurance();">자세히보기</button>
								</div>
								<div class="insuranceDetail">
									<div class="ec-base-table typeWrite gCellNarrow">
										<table border="1">
											<caption>전자보증보험 발급 개인정보 입력</caption>
											<colgroup>
												<col style="width: 96px">
												<col style="width: auto">
											</colgroup>
											<tbody>
												<tr>
													<th scope="row">생년월일</th>
													<td><input id="eguarantee_year" name="eguarantee_year"
														fw-filter="" fw-label="전자보증보험 생년월일1" fw-msg=""
														class="inputTypeText" placeholder="" size="4"
														maxlength="4" value="" type="text" disabled="">년 <input
														id="eguarantee_month" name="eguarantee_month" fw-filter=""
														fw-label="전자보증보험 생년월일2" fw-msg="" class="inputTypeText"
														placeholder="" size="2" maxlength="2" value="" type="text"
														disabled="">월 <input id="eguarantee_day"
														name="eguarantee_day" fw-filter="" fw-label="전자보증보험 생년월일3"
														fw-msg="" class="inputTypeText" placeholder="" size="2"
														maxlength="2" value="" type="text" disabled="">일</td>
												</tr>
												<tr>
													<th scope="row">성별</th>
													<td><input id="eguarantee_user_gender0"
														name="eguarantee_user_gender" fw-filter=""
														fw-label="전자보증보험 성별" fw-msg="" value="1" type="radio"
														disabled=""><label for="eguarantee_user_gender0">남자</label>
														<input id="eguarantee_user_gender1"
														name="eguarantee_user_gender" fw-filter=""
														fw-label="전자보증보험 성별" fw-msg="" value="2" type="radio"
														disabled=""><label for="eguarantee_user_gender1">여자</label></td>
												</tr>
												<tr class="displaynone">
													<th scope="row">개인정보 이용동의</th>
													<td><input id="eguarantee_personal_agreement0"
														name="eguarantee_personal_agreement" fw-filter=""
														fw-label="전자보증보험 개인정보 이용동의" fw-msg="" value="T"
														type="radio" disabled=""><label
														for="eguarantee_personal_agreement0">동의함</label> <input
														id="eguarantee_personal_agreement1"
														name="eguarantee_personal_agreement" fw-filter=""
														fw-label="전자보증보험 개인정보 이용동의" fw-msg="" value="F"
														type="radio" checked="checked" disabled=""><label
														for="eguarantee_personal_agreement1">동의안함</label></td>
												</tr>
											</tbody>
										</table>
									</div>
									<div class="ec-base-help ec-order-expandwrap">
										<strong class="insuranceTitle ec-order-expand">전자보증보험(100%
											매매보호 안전결제)이란?</strong>
										<div class="insuranceText">
											물품대금결제시 구매자의 피해보호를 위해 '(주)서울보증보험'의 보증보험증권이 발급됩니다.<br>
											증권이 발급되는 것의 의미는, 물품대금 결제시에 소비자에게 서울보증보험의 쇼핑몰보증보험 계약체결서를
											인터넷상으로 자동 발급하여, 피해발생시 쇼핑몰보증보험으로써 완벽하게 보호받을 수 있습니다. 또한, 입력하신
											개인정보는 증권발급을 위해 필요한 정보이며 다른 용도로 사용되지 않습니다. 전자보증보험 발생시 별도의 수수료가
											부과되지 않습니다.
										</div>
									</div>
								</div>
							</li>
						</ul>
						<!-- app tag -->
						<ul id="ec-orderform-agreement-tail"></ul>
					</div>
				</div>
			</div>
			<!-- File end -->
			<div class="ec-base-button gFull" id="orderFixItem">
				<button type="button" class="btnSubmit" id="btn_payment">
					<span id="total_order_sale_price_view">14,000</span>원 <span
						class="">결제하기</span><span class="displaynone">정기배송 신청하기</span>
				</button>
			</div>
			<div class="helpArea">
				<ul class="ec-base-help typeDash">
					<li class="displaynone"><span class="txtEm">상기 금액은 결제
							시점의 금액과 다를 수 있습니다.</span></li>
					<li>무이자할부가 적용되지 않은 상품과 무이자할부가 가능한 상품을 동시에 구매할 경우 전체 주문 상품 금액에
						대해 무이자할부가 적용되지 않습니다. 무이자할부를 원하시는 경우 장바구니에서 무이자할부 상품만 선택하여 주문하여 주시기
						바랍니다.</li>
					<li>최소 결제 가능 금액은 결제금액에서 배송비를 제외한 금액입니다.</li>
				</ul>
			</div>
			<!-- [주문 정보 확인 레이어팝업] -->
			<!-- File start -->
			<!--
        이 파일은 원터치 주문서의 읽기 전용 파일입니다.
        이 파일은 기능 업그레이드 시, 자동으로 개선된 소스가 적용되어 별도로 디자인 수정을 하지 않아도 됩니다 .
        원터치 주문서 조각 html 파일을 수정할 경우, 작성한 정보가 유실되거나 주문서 최신 기능이 자동 업그레이드되지 않을 수 있으니 유의해 주세요.
-->
			<div id="ec-shop_orderConfirmLayer" class="orderConfirmLayer">
				<div class="ec-base-layer typeWide">
					<h1>주문 정보 확인</h1>
					<div class="wrap">
						<p class="ec-base-help">작성하신 내용을 확인하신 후에 주문 완료해 주세요.</p>

						<!-- app tag -->
						<div id="ec-orderform-confirm-head"></div>

						<!-- [주문배송정보] 주문자정보, 배송지정보 -->
						<!-- 주문자정보 -->
						<div class="pannelArea displaynone">
							<div class="title">
								<h2>주문자</h2>
							</div>
							<div class="contents">
								<div class="segment">
									<div class="ec-base-table typeView">
										<table border="1">
											<caption>주문자정보</caption>
											<colgroup>
												<col style="width: 88px">
												<col style="width: auto">
											</colgroup>
											<!-- 국내/해외 주문자 정보 -->
											<tbody class="address_form ">
												<tr>
													<th scope="row">주문자</th>
													<td><span class="ec-shop-confirm_oname"></span>(<span
														class="ec-shop-confirm_oemail"></span>)</td>
												</tr>
												<tr class="displaynone">
													<th scope="row">주소</th>
													<td><span class="ec-shop-confirm_oaddr1"></span></td>
												</tr>
												<tr class="ec-shop-confirm-billingInfo-phoneNumber">
													<th scope="row">연락처</th>
													<td><span class="displaynone"><span
															class="ec-shop-confirm_ophone"></span></span> <span
														class="ec-shop-delimiter">/</span> <span
														class="displaynone"><span
															class="ec-shop-confirm_ocell"></span></span></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>

						<!-- app 배송지정보 -->
						<div class="pannelArea" id="ec-shop-confirm-appshippingInfo">
							<div class="title">
								<h2>배송지</h2>
							</div>
							<div class="contents">
								<div class="segment">
									<div class="ec-base-table typeView">
										<table border="1">
											<colgroup>
												<col style="width: 88px">
												<col style="width: auto">
											</colgroup>
											<tbody>
												<tr>
													<th scope="row">이메일</th>
													<td><span class="ec-shop-confirm_oemail"></span></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
								<div id="ec-shop-confirm-appshippingInfo-shippingInfo"></div>
							</div>
						</div>

						<!-- 배송지정보 -->
						<div class="pannelArea" id="ec-shop-confirm-shippingInfo">
							<div class="title">
								<h2>배송지</h2>
							</div>
							<div class="contents">
								<div class="segment">
									<!-- 국내배송 정보 -->
									<div class="ec-base-table typeView ">
										<table border="1">
											<caption>배송지정보</caption>
											<colgroup>
												<col style="width: 88px">
												<col style="width: auto">
											</colgroup>
											<tbody>
												<tr>
													<th scope="row">받는사람</th>
													<td><span class="ec-shop-confirm_rname"></span><span
														class="">(<span class="ec-shop-confirm_oemail"></span>)
													</span></td>
												</tr>
												<tr class="ec-shop-confirm-shippingAddress">
													<th scope="row">주소</th>
													<td><span class="ec-shop-confirm_raddr1"></span></td>
												</tr>
												<tr class="ec-shop-confirm-storePickup">
													<th scope="row">수령지</th>
													<td><span class="ec-shop-confirm-storePickupAddress"></span>에서
														수령예정
														<p class="ec-base-help">
															<span class="ec-shop-confirm-storePickupDate txtNormal"></span>
														</p></td>
												</tr>
												<tr class="ec-shop-confirm-shippingInfo-phoneNumber">
													<th scope="row">연락처</th>
													<td><span class="displaynone"><span
															class="ec-shop-confirm_rphone"></span></span> <span
														class="ec-shop-delimiter">/</span> <span class=""><span
															class="ec-shop-confirm_rcell"></span></span></td>
												</tr>
												<tr>
													<th scope="row">배송요청</th>
													<td><span
														class="displaynone ec-shop-confirm_shipcompany_area"><span
															class="ec-shop-confirm_shipcompany"></span></span> <span
														class="displaynone gBlank5"><span
															class="ec-shop-confirm_hope_date"></span></span> <span
														class="displaynone gBlank5"><span
															class="ec-shop-confirm_hope_time"></span></span> <span
														class=" gBlank5"><span
															class="ec-shop-confirm_delivery_msg"></span></span></td>
												</tr>
											</tbody>
										</table>
									</div>
									<!-- 해외배송 정보 -->
									<div class="ec-base-table typeView displaynone">
										<table border="1">
											<caption>배송지정보</caption>
											<colgroup>
												<col style="width: 88px">
												<col style="width: auto">
											</colgroup>
											<tbody>
												<tr>
													<th scope="row">받는사람</th>
													<td><span class="ec-shop-confirm_rname"></span><span
														class="">(<span class="ec-shop-confirm_oemail"></span>)
													</span></td>
												</tr>
												<tr class="ec-shop-confirm-shippingAddressGlobal">
													<th scope="row">주소</th>
													<td><span class="ec-shop-confirm_jigsaw_full_addr"></span></td>
												</tr>
												<tr class="ec-shop-confirm-storePickup">
													<th scope="row">수령지</th>
													<td><span class="ec-shop-confirm-storePickupAddress"></span>에서
														수령예정
														<p class="ec-base-help">
															<span class="ec-shop-confirm-storePickupDate txtNormal"></span>
														</p></td>
												</tr>
												<tr class="ec-shop-confirm-shippingInfo-oversea-phoneNumber">
													<th scope="row">연락처</th>
													<td><span class="displaynone"><span
															class="ec-shop-confirm_rphone"></span></span> <span
														class="ec-shop-delimiter">/</span> <span class=""><span
															class="ec-shop-confirm_rcell"></span></span></td>
												</tr>
												<tr>
													<th scope="row">배송요청</th>
													<td><span
														class="displaynone ec-shop-confirm_shipcompany_area"><span
															class="ec-shop-confirm_shipcompany"></span></span> <span
														class="displaynone gBlank5"><span
															class="ec-shop-confirm_hope_date"></span></span> <span
														class="displaynone gBlank5"><span
															class="ec-shop-confirm_hope_time"></span></span> <span
														class=" gBlank5"><span
															class="ec-shop-confirm_delivery_msg"></span></span></td>
												</tr>
												<tr class="">
													<th scope="row">배송비</th>
													<td>
														<div
															class="ec-shop-shipping_additional_fee_show displaynone">
															<p class="gBreak5">
																<span class="txtEm"><span
																	id="f_addr_total_ship_fee_id"></span>원</span>
															</p>
															<div class="ec-base-table gCellNarrow">
																<table border="1">
																	<caption>배송비 상세</caption>
																	<colgroup>
																		<col style="width: 104px">
																		<col style="width: auto">
																	</colgroup>
																	<tbody>
																		<tr>
																			<th scope="row">해외배송비</th>
																			<td class="right"><span
																				id="f_addr_delv_price_id"></span>원</td>
																		</tr>
																		<tr>
																			<th scope="row">보험료</th>
																			<td class="right">+<span
																				id="f_addr_insurance_price_id"></span>원
																			</td>
																		</tr>
																		<tr class="ec-shop-shipping_additional_fee_name_show">
																			<th scope="row"><span
																				id="f_addr_shipping_additional_fee_name_id"></span></th>
																			<td class="right">+<span
																				id="f_addr_shipping_additional_fee_id"></span>원
																			</td>
																		</tr>
																	</tbody>
																</table>
															</div>
															<p class="ec-base-help typeDash">보험료는 배송과정에서 발생하는 분실,
																도난, 파손 등으로 인한 손해에 대하여 규정에 따라 배상해 드리는 서비스입니다.</p>
														</div>
														<div class="ec-shop-shipping_additional_fee_hide ">
															<p class="gBreak5">
																<span class="txtEm"><span
																	id="f_addr_total_ship_fee_id"></span>원</span>
															</p>
															<div class="ec-base-table gCellNarrow">
																<table border="1">
																	<caption>배송비 상세</caption>
																	<colgroup>
																		<col style="width: 104px">
																		<col style="width: auto">
																	</colgroup>
																	<tbody>
																		<tr>
																			<th scope="row">해외배송비</th>
																			<td class="right"><span
																				id="f_addr_delv_price_id"></span>원</td>
																		</tr>
																		<tr>
																			<th scope="row">보험료</th>
																			<td class="right">+<span
																				id="f_addr_insurance_price_id"></span>원
																			</td>
																		</tr>
																	</tbody>
																</table>
															</div>
															<ul class="ec-base-help typeDash">
																<li>배송비에는 관세 및 세금 등의 각종 비용은 포함되어 있지 않습니다. 상품수령 시
																	고객님이 추가로 지불하셔야 합니다.</li>
																<li>보험료는 배송과정에서 발생하는 분실, 도난, 파손 등으로 인한 손해에 대하여 규정에
																	따라 배상해 드리는 서비스입니다.</li>
															</ul>
														</div>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>

						<!-- [주문상품] -->
						<div class="pannelArea">
							<div class="title">
								<h2>주문상품</h2>
							</div>
							<div class="contents">
								<!-- 국내배송상품 주문내역 -->
								<div class="orderArea ">
									<!-- 기본배송 -->
									<div class="totalPrice ec-base-fold eToggle displaynone">
										<div class="title">
											<h3>[기본배송]</h3>
										</div>
										<div class="contents">
											<div class="ec-base-table gCellNarrow">
												<table border="1">
													<caption>금액정보</caption>
													<colgroup>
														<col style="width: 122px">
														<col style="width: auto">
													</colgroup>
													<tbody>
														<tr>
															<th scope="row">상품구매금액</th>
															<td class="right"><span class="txtStrong">+<span
																	class="displaynone"> ()</span></span></td>
														</tr>
														<tr class="displaynone">
															<th scope="row">부가세</th>
															<td class="right"><span class="txtStrong">+</span></td>
														</tr>
														<tr id="{$confirm_normal_total_benefit_price_area_id }"
															class="displaynone">
															<th scope="row">할인금액</th>
															<td class="right"><span class="txtStrong">-<span
																	id=""></span></span></td>
														</tr>
														<tr>
															<th scope="row">배송비</th>
															<td class="right"><span class="txtStrong">+<span
																	id="ec-shop-confirm_domestic_ship_fee"></span></span></td>
														</tr>
														<tr class="displaynone">
															<th scope="row">합계</th>
															<td class="right"><span class="txtStrong"><span
																	id="ec-shop-confirm_domestic_ship_fee_sum"></span> <span
																	class="refer displaynone">()</span></span></td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>

									<!-- 업체기본배송 -->
									<div class="totalPrice ec-base-fold eToggle displaynone">
										<div class="title">
											<h3>[업체기본배송]</h3>
										</div>
										<div class="contents">
											<div class="ec-base-table gCellNarrow">
												<table border="1">
													<caption>금액정보</caption>
													<colgroup>
														<col style="width: 122px">
														<col style="width: auto">
													</colgroup>
													<tbody>
														<tr>
															<th scope="row">상품구매금액</th>
															<td class="right"><span class="txtStrong">+<span
																	class="displaynone"> ()</span></span></td>
														</tr>
														<tr class="displaynone">
															<th scope="row">부가세</th>
															<td class="right"><span class="txtStrong">+</span></td>
														</tr>
														<tr id="" class="displaynone">
															<th scope="row">할인금액</th>
															<td class="right"><span class="txtStrong">-<span
																	id=""></span></span></td>
														</tr>
														<tr>
															<th scope="row">배송비</th>
															<td class="right"><span class="txtStrong">+<span
																	id=""></span></span></td>
														</tr>
														<tr class="displaynone">
															<th scope="row">합계</th>
															<td class="right"><span class="txtStrong"><span
																	id=""></span> <span class="refer displaynone">()</span></span></td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>

									<!-- 개별배송 -->
									<div class="xans-element- xans-order xans-order-individuallist">
										<!-- 참고: 상품반복 -->
										<div class="ec-base-prdInfo xans-record-">
											<div class="prdBox">
												<div class="thumbnail">
													<a href="/product/detail.html?product_no=18&amp;cate_no=29"><img
														src="//ecudemo199138.cafe24.com/web/product/tiny/202107/5442209a622bcb23bb14ed58d3ca4b1a.jpg"
														alt="" width="90" height="90"></a>
												</div>
												<div class="description">
													<strong class="prdName" title="상품명"> <a
														href="/product/regular-fit-crew-neck-t-shirt/18/category/29/"
														class="ec-product-name">REGULAR FIT CREW-NECK T-SHIRT</a></strong>
													<ul class="info">
														<li class="displaynone">무이자할부 상품</li>
														<li title="유효기간" class="displaynone">내 사용</li>
														<li>수량: 1개</li>
														<li><span id="">상품구매금액: 28,000원 </span> <span
															class="displaynone">()</span></li>
														<li id="" class="displaynone">할인금액: <span
															class="txtWarn">-<span id="">14,000</span>원
														</span> <span class="txtWarn displaynone">()</span>
														</li>
														<li title="배송">[무료] / 개별배송 <span class="displaynone">(해외배송가능)</span>
														</li>
														<li class="displaynone">상품중량 : 2.20kg * 1개 = 2.20kg</li>
													</ul>
												</div>
											</div>
										</div>
										<!-- //참고 -->
										<!-- 참고: 상품반복 -->
										<!-- //참고 -->
									</div>
									<div class="totalPrice ec-base-fold eToggle ">
										<div class="title">
											<h3>[개별배송]</h3>
										</div>
										<div class="contents">
											<div class="ec-base-table gCellNarrow">
												<table border="1">
													<caption>금액정보</caption>
													<colgroup>
														<col style="width: 122px">
														<col style="width: auto">
													</colgroup>
													<tbody>
														<tr>
															<th scope="row">상품구매금액</th>
															<td class="right"><span class="txtStrong">+28,000원<span
																	class="displaynone"> (0)</span></span></td>
														</tr>
														<tr class="displaynone">
															<th scope="row">부가세</th>
															<td class="right"><span class="txtStrong">+0원</span></td>
														</tr>
														<tr id="confirm_individual_total_benefit_price_area"
															class="displaynone">
															<th scope="row">할인금액</th>
															<td class="right"><span class="txtStrong">-<span
																	id="confirm_individual_total_benefit_price">14,000</span>원
															</span></td>
														</tr>
														<tr>
															<th scope="row">배송비</th>
															<td class="right"><span class="txtStrong">+<span
																	id="confirm_individual_ship_fee">0 (무료)</span>원
															</span></td>
														</tr>
														<tr class="displaynone">
															<th scope="row">합계</th>
															<td class="right"><span class="txtStrong"><span
																	id="confirm_individual_ship_fee_sum">28,000</span>원 <span
																	class="refer displaynone">()</span></span></td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</div>

								<!-- 해외배송상품 주문내역 -->
								<div class="orderArea displaynone">
									<div class="xans-element- xans-order xans-order-oversealist">
										<!-- 참고: 상품반복 -->
										<div class="ec-base-prdInfo ">
											<div class="prdBox">
												<div class="thumbnail">
													<a href="/product/detail.html"><img
														src="//img.echosting.cafe24.com/thumb/img_product_big.gif"
														alt="" width="90" height="90"></a>
												</div>
												<div class="description">
													<strong class="prdName" title="상품명"> </strong>
													<ul class="info">
														<li class="displaynone">무이자할부 상품</li>
														<li title="유효기간" class="displaynone">내 사용</li>
														<li title="옵션">
															<p class="option displaynone"></p>
															<ul
																class="xans-element- xans-order xans-order-optionset option">
																<li class="">- (개)</li>
															</ul>
														</li>
														<li>수량: 개</li>
														<li><span id="">상품구매금액: </span> <span
															class="displaynone">()</span></li>
														<li id="" class="displaynone">할인금액: <span
															class="txtWarn">-<span id=""></span>
														</span> <span class="txtWarn displaynone">()</span>
														</li>
														<li title="배송">/ 해외배송</li>
														<li class="displaynone">상품중량 : kg * 개 = kg</li>
													</ul>
												</div>
											</div>
										</div>
										<!-- //참고 -->
									</div>
									<div class="totalPrice ec-base-fold eToggle displaynone">
										<div class="title">
											<h3>[해외배송]</h3>
										</div>
										<div class="contents">
											<div class="ec-base-table gCellNarrow">
												<table border="1">
													<caption>금액정보</caption>
													<colgroup>
														<col style="width: 122px">
														<col style="width: auto">
													</colgroup>
													<tbody>
														<tr>
															<th scope="row">상품구매금액</th>
															<td class="right"><span class="txtStrong">+<span
																	class="displaynone"> ()</span></span></td>
														</tr>
														<tr class="displaynone">
															<th scope="row">부가세</th>
															<td class="right"><span class="txtStrong">+<span
																	id="f_list_vat_price_id"></span>원
															</span></td>
														</tr>
														<tr id="" class="displaynone">
															<th scope="row">할인금액</th>
															<td class="right"><span class="txtStrong">-<span
																	id=""></span>원
															</span></td>
														</tr>
														<tr>
															<th scope="row">배송비</th>
															<td class="right"><span class="txtStrong">+<span
																	id="ec-shop-confirm_f_list_total_delv_price_id"></span>원
															</span></td>
														</tr>
														<tr class="displaynone">
															<th scope="row">합계</th>
															<td class="right"><span class="txtStrong"> <span
																	id="ec-shop-confirm_f_list_total_price_id"></span> <span
																	class="refer displaynone">(<span
																		id="ec-shop-confirm_f_list_total_price_ref_id_new"></span>)
																</span>
															</span></td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</div>
								<!-- 바로구매 주문서폼 -->
								<div id="ec-shop-confirm-direct-buy-info"
									class="orderArea displaynone"></div>
								<div id="ec-shop-confirm-direct-buy-template"
									class="displaynone">
									<div class="ec-base-prdInfo">
										<div class="prdBox">
											<div class="thumbnail">
												<a class="ec-shop-confirm-direct-buy-product-detail-url"><img
													class="ec-shop-confirm-direct-buy-product-image"
													src="//img.echosting.cafe24.com/thumb/img_product_big.gif"
													alt="" width="90" height="90"></a>
											</div>
											<div class="description">
												<strong
													class="prdName ec-shop-confirm-direct-buy-product-name-link"
													title="상품명"></strong>
												<ul class="info">
													<li
														class="displaynone ec-shop-confirm-direct-buy-allotment">무이자할부
														상품</li>
													<li title="유효기간"
														class="displaynone ec-shop-confirm-direct-buy-expiration-date-display">
														<span class="ec-shop-confirm-direct-buy-expiration-date"></span>내
														사용
													</li>
													<li title="옵션">
														<p
															class="option displaynone ec-shop-confirm-direct-buy-option-str"></p>
													</li>
													<li>수량: <span
														class="ec-shop-confirm_direct-buy-quantity"></span>
													</li>
													<li>상품구매금액: <span><span
															class="ec-shop-confirm-direct-buy-product-purchase-price"></span>
													</span> <span
														class="displaynone ec-shop-confirm-direct-buy-product-purchase-price-ref"></span>
													</li>
													<li
														class="displaynone ec-shop-confirm-direct-buy-product-discount-price-display">
														할인금액: <span class="txtWarn">-<span
															class="ec-shop-confirm-direct-buy-product-discount-price"></span>
													</span> <span
														class="txtWarn displaynone ec-shop-confirm-direct-buy-product-discount-price-ref"></span>
													</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
								<div class="totalWeight displaynone">
									전체 상품중량 : <span>2.20kg</span>
								</div>
							</div>
						</div>




						<!-- [결제수단] -->
						<div class="pannelArea">
							<div class="title">
								<h2>결제수단</h2>
							</div>
							<div class="contents">
								<div class="segment">
									<div class="ec-base-table typeView">
										<table border="1">
											<caption>결제수단</caption>
											<colgroup>
												<col style="width: 105px">
												<col style="width: auto">
											</colgroup>
											<tbody id="ec-shop-confirm_paymethod"></tbody>
										</table>
									</div>
								</div>
							</div>
						</div>

						<!-- [결제정보] -->


						<!-- [적립 혜택] -->

					</div>
				</div>
				<!-- File end -->

			</div>
	</form>



</body>
</html>