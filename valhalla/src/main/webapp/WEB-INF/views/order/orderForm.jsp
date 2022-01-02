<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="../common/orderformCss.jsp"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>주문</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script> <!-- 우편번호 카카오 api -->
</head>
<body id="userStyle">
	<header id="header">
		<div class="header">
			<h1 class="xans-element- xans-layout xans-layout-logotop ">
				<a href="/index.do">Valhalla Mall</a>
			</h1>
			<div class="headerMenu gLeft">
				<span class="xans-element- xans-layout xans-layout-mobileaction btnBack ">
					<a href="javascript:window.history.back();">뒤로가기</a>
				</span>
			</div>
			<div class="headerMenu gRight">
				<span class="xans-element- xans-layout xans-layout-orderbasketcount1 btnBasket ">
					<a href="/cart.do">장바구니 
						<span class="count EC-Layout_Basket-count-display"> 
							<span class="EC-Layout-Basket-count1">1</span>
						</span>
					</a>
				</span> 
				<a href="/mypageOrderIndex.do" class="xans-element- xans-layout xans-layout-statelogoff btnMy ">마이페이지</a>
			</div>
		</div>
		<div class="titleArea">
			<h1>주문/결제</h1>
		</div>
	</header>
	<div id="mCafe24Order" class="xans-element- xans-order xans-order-form typeHeader xans-record-">
		<div class="billingNshipping">
			<!-- 주문자정보 -->
			<div id="ec-jigsaw-area-billingInfo" class="ec-base-fold eToggle selected ">
				<div id="ec-jigsaw-title-billingInfo" class="title">
					<h2>주문자</h2>
					<span id="ec-jigsaw-heading-billingInfo" class="txtEm gRight"></span>
				</div>
				<div class="contents">
					<div class="segment">
						<div class="ec-base-table typeWrite">
							<table border="1">
								<caption>배송 정보 입력</caption>
								<colgroup>
									<col style="width: 102px">
									<col style="width: auto">
								</colgroup>
								<tbody>
									<tr class="ec-shippingInfo-newAddress-name">
										<th scope="row">주문자 <span class="icoRequired">필수</span></th>
										<td><input type="text" id="uname" name="uname" class="inputTypeText" size="15" value=""></td>
									</tr>
									<tr class="ec-shippingInfo-receiverCell ">
										<th scope="row">휴대전화 <span class=""> <span class="icoRequired">필수</span></span></th>
										<td>
											<select id="uphone1" name="uphone1" style="width: 100px;">
												<option value="010">010</option>
												<option value="011">011</option>
												<option value="016">016</option>
												<option value="017">017</option>
												<option value="018">018</option>
												<option value="019">019</option>
											</select>
											 - <input type="text" id="uphone2" name="uphone2" maxlength="4" size="4" value="" style="width: 200px;">
											 - <input type="text" id="uphone3" name="uphone3" maxlength="4" size="4" value="" style="width: 200px;">
										</td>
									</tr>
									<tr class="ec-orderform-emailRow ec-shop-deliverySimpleForm">
										<th scope="row">이메일 <span class="icoRequired">필수</span></th>
										<td>
											<div class="ec-base-mail">
												<input type="text" id="uemail1" name="uemail1" class="mailId" style="width: 200px;"> @ 
												<input type="text" id="uemail2" name="uemail2" style="width: 200px;"> 
												<span class="mailAddress" style="width: 152px;"> 
													<select id="uemail3" name="uemail3">
														<option value="1" selected="selected">이메일 선택</option>
														<option value="naver.com">naver.com</option>
														<option value="daum.net">daum.net</option>
														<option value="nate.com">nate.com</option>
														<option value="gmail.com">gmail.com</option>
														<option value="2">직접입력</option>
													</select>
												</span>
											</div><br>
											<p>이메일로 주문 처리 과정을 보내드립니다. 수신 가능한 이메일 주소를 입력해 주세요.</p>
										</td>
									</tr>
									<tr id="ec-receiver-address">
										<th scope="row">주소 <span class=""><span class="icoRequired">필수</span></span></th>
										<td>
											<ul class="ec-address">
												<li id="receiver_zipcode_wrap" class="ec-address-zipcode">
													<input type="text" id="uzipcode1" name="uzipcode1" class="inputTypeText" maxlength="14" readonly="readonly" style="width: 200px;">
													<a href="#none;" class="btnBasic" onclick="execution_daum_address1();return false;">우편번호</a>
												</li> 
												<li id="receiver_baseAddr_wrap">
													<input type="text" id="uaddress1" name="uaddress1" size="60" maxlength="100" readonly="readonly" style="width: 400px;">
												</li>
												<li id="receiver_detailAddr_wrap">
													<input type="text" id="uaddress2" name="uaddress2" size="60" maxlength="255">
												</li>
											</ul>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						<br>
					</div>
				</div>
			</div>
			<!-- 수령자 정보   -->
			<div id="ec-jigsaw-area-shippingInfo" class="ec-base-fold eToggle selected">
				<div id="ec-jigsaw-title-shippingInfo" class="title">
					<h2>배송지</h2>
				</div>
				<div class="contents">
					<!-- 국내배송 정보 -->
					<div>
						<div id="ec-jigsaw-tab-shippingInfo" class="ec-base-tab ">
							<ul>
								<li id="ec-jigsaw-tab-shippingInfo-recentAddress" class=""><a href="#none">최근 배송지</a></li>
								<li id="ec-jigsaw-tab-shippingInfo-newAddress" class="selected"><a href="#none">직접입력</a></li>
							</ul>
						</div>
						<!-- 최근배송지 -->
						<!-- <div id="ec-shippingInfo-recentAddress" class="tabCont recentShipArea">
							<div id="ec-shippingInfo-recentAddressText" class="segment">
								<div class="ec-shop-deliveryInfoText recent">
									<strong class="name"> 
										<span class="txtEm" id="ec-shop-deliveryInfoMainLabel"></span> 
										<span id="ec-shop-deliveryInfoName"></span>
									</strong>
									<p class="address gBlank10">
										[<span id="ec-shop-deliveryInfoZipcode"></span>] <span
											id="ec-shop-deliveryInfoAddress"> </span>
									</p>
									<dl class="contact">
										<dt class="">휴대전화</dt>
										<dd class="" id="ec-shop-deliveryInfoCell">010</dd>
									</dl>
								</div>
								<span class="sideRight">
									<button type="button" id="ec-shippingInfo-showRecentAddressList" class="btnNormal mini">배송지 목록</button>
								</span>
							</div>
							<div id="ec-shippingInfo-recentAddressList" class="segment">
								<h3 class="heading">배송지를 선택해 주세요.</h3>
								<ul class="shippingList">
									<li class="xans-element- xans-order xans-order-deliverylist ">
										<strong class="name"><span id="ec-shippingInfo-recentAddressList-mainLabel-" class="txtEm"></span> </strong>
										<div class="description">
											<span class="choice">
												<input type="radio" id="" name="" value="" class="fRadio">
											</span>
											<p class="address gBlank10">
												[<span class="ec-shippingInfo-recentAddressList-zipcode-"></span>]
												<span class="ec-shippingInfo-recentAddressList-addr1-"></span><br>
												<span class="ec-shippingInfo-recentAddressList-addr2-"></span>
											</p>
											<dl class="contact">
												<dt>휴대전화</dt>
												<dd></dd>
											</dl>
										</div> 
										<span class="button">
											<button type="button" id="" class="btnText">수정</button>
										</span>
									</li>
								</ul>
								<span class="sideRight">
									<button type="button" id="ec-shippingInfo-closeRecentAddressList" class="btnBase mini">닫기</button>
								</span>
							</div>
						</div> -->

						<!-- 새 배송지 -->
						<div id="ec-shippingInfo-newAddress" class="tabCont newShipArea ">
							<div class="segment ec-shippingInfo-sameaddr ">
								<input type="radio" id="sameuser" name="sameaddr" value="S">
								<label for="sameuser">회원 정보와 동일</label> 
								<input type="radio" id="newuser" name="sameaddr" value="N" checked="checked">
								<label for="newuser">새로운 배송지</label>
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
											<th scope="row">받는사람 <span class="icoRequired">필수</span></th>
											<td><input type="text" id="rname" name="rname" class="inputTypeText" placeholder="" size="15"></td>
										</tr>
										<tr class="ec-shippingInfo-receiverCell ">
											<th scope="row">휴대전화 <span class=""> <span class="icoRequired">필수</span></span></th>
											<td>
												<select id="rphone1" name="rphone1" style="width: 100px;">
													<option value="010">010</option>
													<option value="011">011</option>
													<option value="016">016</option>
													<option value="017">017</option>
													<option value="018">018</option>
													<option value="019">019</option>
												</select>
												 - <input type="text" id="rphone2" name="rphone2" maxlength="4" size="4" value="" style="width: 200px;">
												 - <input type="text" id="rphone3" name="rphone3" maxlength="4" size="4" value="" style="width: 200px;">
											</td>
										</tr>
										<tr class="ec-orderform-emailRow ec-shop-deliverySimpleForm">
											<th scope="row">이메일 <span class="icoRequired">필수</span></th>
											<td>
												<div class="ec-base-mail">
													<input type="text" id="remail1" name="remail1" class="mailId" style="width: 200px;"> @ 
													<input type="text" id="remail2" name="remail2" style="width: 200px;"> 
													<span class="mailAddress" style="width: 152px;"> 
														<select id="remail3" name="remail3">
															<option value="1" selected="selected">이메일 선택</option>
															<option value="naver.com">naver.com</option>
															<option value="daum.net">daum.net</option>
															<option value="nate.com">nate.com</option>
															<option value="gmail.com">gmail.com</option>
															<option value="2">직접입력</option>
														</select>
													</span>
												</div><br>
												<p>이메일로 주문 처리 과정을 보내드립니다. 수신 가능한 이메일 주소를 입력해 주세요.</p>
											</td>
										</tr>
										<tr id="ec-receiver-address">
												<th scope="row">주소 <span><span class="icoRequired">필수</span></span>
												</th>
												<td>
													<ul class="ec-address">
														<li id="receiver_zipcode_wrap" class="ec-address-zipcode">
															<input type="text" id="rzipcode1" name="rzipcode1" class="inputTypeText" maxlength="14" readonly="readonly" style="width: 200px;">
															<a href="#none;" class="btnBasic" onclick="execution_daum_address2();return false;">우편번호</a>
														</li> 
														<li id="receiver_baseAddr_wrap">
															<input type="text" id="raddress1" name="raddress1" size="60" maxlength="100" readonly="readonly" style="width: 400px;">
														</li>
														<li id="receiver_detailAddr_wrap">
															<input type="text" id="raddress2" name="raddress2" size="60" maxlength="255">
														</li>
													</ul>
												</td>
											</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>

					<!-- 배송 메시지 -->
					<div class="ec-shippingInfo-shippingMessage segment unique">
						<select id="ordermessage" name="ordermessage" style="width: 750px;">
							<option value="1" selected="selected">배송요청사항(선택)</option>
							<option value="oMessage-1">배송 전에 미리 연락바랍니다.</option>
							<option value="oMessage-2">부재 시 경비실에 맡겨주세요.</option>
							<option value="oMessage-3">부재 시 문 앞에 놓아주세요.</option>
							<option value="oMessage-4">빠른 배송 부탁드립니다.</option>
							<option value="oMessage-5">택배함에 보관해 주세요.</option>
							<option value="2">직접 입력</option>
						</select>
						<div class="ec-shippingInfo-omessageInput gBlank10">
							<textarea id="omessage" name="omessage" maxlength="255" cols="70"></textarea>
						</div>
					</div>
					<!-- 국내배송 기본 배송지 사용 -->
					<div class="ec-shippingInfo-newAddress-setMain segment">
						<input type="checkbox" id="set_main_address0" name="set_main_address[]" value="T"> 
						<label for="set_main_address0">기본 배송지로 저장</label>
					</div>
				</div>
			</div>
		</div>
		<div class="ec-base-fold eToggle selected">
			<div class="title">
				<h2>주문상품</h2>
				<span class="txtStrong gRight">${fn:length(productList)}개</span>
			</div>
			<div class="contents">
				<div class="orderArea ">
					<!-- 기본배송 -->
					<div class="xans-element- xans-order xans-order-normallist">
						<!-- 참고: 상품반복 -->
						<c:forEach items="${productList }" var="productList">
							<div class="ec-base-prdInfo xans-record-">
								<div class="prdBox">
									<div class="thumbnail">
										<input type="hidden" id="productno" name="productno" value="${productList.productNo}"/>
										<a href="#none;" onclick="productDetail('${productList.productNo}');">
											<img src="${pageContext.request.contextPath}/resources/img/product${productList.mainImg}" width="90" height="90">
										</a>
									</div>
									<div class="description">
										<a href="#none;" id="productname" onclick="productDetail('${productList.productNo}');">${productList.productName}</a>
										<ul class="info">
											<li>수량 : ${orderQuantity }개</li>
											<li>상품옵션 : ${productList.productSize } / ${productList.productColor }</li>
											<li><span>상품구매금액 : <fmt:formatNumber value="${productList.productPrice}" pattern="#,###" />원 </span></li>
										</ul>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
					
				</div>
			</div>
		</div>
		<div id="ec-jigsaw-area-payment" class="ec-base-fold eToggle selected">
			<div id="ec-jigsaw-title-payment" class="title">
				<h2>결제정보</h2>
			</div>
			<div class="contents">
				<div class="segment">
					<div class="ec-base-table gCellNarrow">
						<table>
							<caption>결제정보 상세</caption>
							<colgroup>
								<col style="width: 122px">
								<col style="width: auto">
							</colgroup>
							<tbody>
								<tr>
									<th scope="row">주문상품</th>
									<td class="right"><span><fmt:formatNumber value="${orderPrice }" pattern="#,###" />원</span></td>
								</tr>
								<tr>
									<th scope="row">배송비</th>
									<td class="right"><span>무료</span></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="totalPay gBlank10">
						<h3 class="heading">결제금액</h3>
						<strong class="txtStrong"> <span id="totalPrice"><fmt:formatNumber value="${orderPrice }" pattern="#,###" /></span>원</strong>
					</div>
				</div>
			</div>
		</div>
		<div id="ec-jigsaw-area-agreement">
			<div class="agreeArea" id="all_agreement_checkbox">
				<div class="allAgree">
					<input type="checkbox" id="allAgree" name="allAgree"><label for="allAgree"><strong>모든 약관 동의</strong></label>
				</div>
				<div class="agreement">
					<ul>
						<!-- 구매조건 확인 및 결제진행 동의 -->
						<li>
							<div class="agree">
								<span class="check"> 
									<input type="checkbox" id="payAgree" name="payAgree">
									<label for="chk_purchase_agreement0">
										<span class="txtEm">[필수]</span> 구매조건 확인 및 결제진행 동의
									</label>
								</span>
							</div>
						</li>
						<!-- 쇼핑몰 이용약관 동의 -->
						<li>
							<div class="agree">
								<span class="check"> 
									<input type="checkbox" id="mallAgree" name="mallAgree" value=""> 
										<label for="mallAgree"><span class="txtEm">[필수]</span> 쇼핑몰 이용약관 동의</label>
								</span>
							</div>
						</li>
						<!-- 개인정보수집 이용동의 -->
						<li>
							<div class="agree">
								<span class="check"> 
									<input type="checkbox" id="userAgree" name="userAgree" value=""> 
										<label for="privacy_agreement_check_box0"><span class="txtEm">[필수]</span> 개인정보 수집 및 이용 동의</label>
								</span>
							</div>
						</li>
						<li></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="ec-base-button gFull">
			<button type="button" id="payBtn" class="btnSubmit" >
				<span>결제하기</span>
			</button>
		</div>
	</div>
	<form id="movedPayPage" method="post" action="/orderResult.do">
		<input type="hidden" id="orderNo" name="orderNo" value=""/>
		<input type="hidden" id="orderPrice" name="orderPrice" value=""/>
		<input type="hidden" id="orderTime" name="orderTime" value=""/>
		<input type="hidden" id="orderStatus" name="orderStatus" value=""/>
		<input type="hidden" id="userNo" name="userNo" value=""/>
		<input type="hidden" id="receiver" name="receiver" value=""/>
		<input type="hidden" id="zipcode" name="zipcode" value=""/>
		<input type="hidden" id="address" name="address" value=""/>
		<input type="hidden" id="detailedAddress" name="detailedAddress" value=""/>
		<input type="hidden" id="phone" name="phone" value=""/>
		<input type="hidden" id="productNo" name="productNo" value=""/>
		<input type="hidden" id="mainImg" name="mainImg" value=""/>
		<input type="hidden" id="productName" name="productName" value=""/>
		<input type="hidden" id="productSize" name="productSize" value=""/>
		<input type="hidden" id="productColor" name="productColor" value=""/>
		<input type="hidden" id="productPrice" name="productPrice" value=""/>
		<input type="hidden" id="quantity" name="quantity" value=""/>
	</form>
	<form id="movedProductDetail" method="post" action="/productDetail.do">
		<input type="hidden" id="productNum" name="productNo" value=""/>
	</form>
</body>
<script type="text/javascript">
$(document).ready(function(){
	var userName = localStorage.getItem('userName');
	var phone = localStorage.getItem('phone');
	var email = localStorage.getItem('email');
	var zipcode = localStorage.getItem('zipcode');
	var address = localStorage.getItem('address');
	var detailed_address = localStorage.getItem('detailed_address');
	
	
	var phoneList = phone.split("-");
	var emailList = email.split("@");
	
	$('#uname').val(userName); //주문자 이름
	
	//휴대전화
	$('#uphone2').val(phoneList[1]);
	$('#uphone3').val(phoneList[2]);
	
	//이메일
	$('#uemail1').val(emailList[0]);
	$('#uemail2').val(emailList[1]);
	
	//주소
	$('#uzipcode1').val(zipcode);
	$('#uaddress1').val(address);
	$('#uaddress2').val(detailed_address);
	
	//주문자 이메일 선택
	$('#uemail3').change(function() {
		$("#uemail3 option:selected").each(function() {
			if ($(this).val() == '2') { //직접입력일 경우 
				$("#uemail2").val(''); //값 초기화 
				$("#uemail2").attr("disabled", false); //활성화 
			} else if ($(this).val() == '1') { //이메일 선택을 누른경우
				alert("이메일을 선택해주세요.");
				$("#uemail2").val(''); //값 초기화 
				$("#uemail2").attr("disabled", false); //활성화
			}
			else { //직접입력이 아닐경우 
				$("#uemail2").val($(this).text()); //선택값 입력 
				$("#uemail2").attr("disabled", true); //비활성화 
			}
		});
	});
	
	//받는사람 이메일 선택
	$('#remail3').change(function() {
		$("#remail3 option:selected").each(function() {
			if ($(this).val() == '2') { //직접입력일 경우 
				$("#remail2").val(''); //값 초기화 
				$("#remail2").attr("disabled", false); //활성화 
			} else if ($(this).val() == '1') { //이메일 선택을 누른경우
				alert("이메일을 선택해주세요.");
				$("#remail2").val(''); //값 초기화 
				$("#remail2").attr("disabled", false); //활성화
			}
			else { //직접입력이 아닐경우 
				$("#remail2").val($(this).text()); //선택값 입력 
				$("#remail2").attr("disabled", true); //비활성화 
			}
		});
	});
	
	//라디오버튼 - 회원정보와 동일
	$("input:radio[id=sameuser]").click(function(){
    	$('#rname').val(userName);
    	$('#rphone2').val(phoneList[1]);
    	$('#rphone3').val(phoneList[2]);
    	$('#remail1').val(emailList[0]);
    	$('#remail2').val(emailList[1]);
    	$('#rzipcode1').val(zipcode);
    	$('#raddress1').val(address);
    	$('#raddress2').val(detailed_address);
	});
	//라디오버튼 - 새로운 배송지
	$("input:radio[id=newuser]").click(function(){
    	$('#rname').val('');
    	$('#rphone2').val('');
    	$('#rphone3').val('');
    	$('#remail1').val('');
    	$('#remail2').val('');
    	$('#rzipcode1').val('');
    	$('#raddress1').val('');
    	$('#raddress2').val('');
	});

	//받는사람 배송요청사항 선택
	$('#ordermessage').change(function() {
		$("#ordermessage option:selected").each(function() {
			if ($(this).val() == '2') { //직접입력일 경우 
				$("#omessage").val(''); //값 초기화 
				$("#omessage").attr("disabled", false); //활성화 
			} else if ($(this).val() == '1') { //배송요청사항 선택을 누른경우
				$("#omessage").val(''); //값 초기화 
				$("#omessage").attr("disabled", false); //활성화
			}
			else { //직접입력이 아닐경우 
				$("#omessage").val($(this).text()); //선택값 입력 
				$("#omessage").attr("disabled", true); //비활성화 
			}
		});
	});
	
	/* 모든 약관 동의 checkbox */
	$('#allAgree').click(()=>{
		var allAgree = document.getElementById('allAgree').checked;
		if(allAgree == true){
			$('#payAgree').prop("checked",true);
			$('#mallAgree').prop("checked",true);
			$('#userAgree').prop("checked",true);
			return;
		} else {
			$('#payAgree').prop("checked",false);
			$('#mallAgree').prop("checked",false);
			$('#userAgree').prop("checked",false);
			return;
		}
	});
	/* 결제하기 버튼 */
	$('#payBtn').click(()=>{
		//현재날짜 구하기
		var today = new Date();
		var year = today.getFullYear(); // 년도
		var month = today.getMonth() + 1;  // 월
		var date = today.getDate();  // 날짜
		var orderTime = "";
		if(date < 10){
			date = "0" + date;
		}
		
		orderTime = year + '-' + month + '-' + date;
		
		var orderPrice = "${orderPrice }";
		var userNo = localStorage.getItem("userNo");
		var receiver = $('#rname').val();
		var zipcode = $('#rzipcode1').val();
		var address = $('#raddress1').val();
		var detailedAddress = $('#raddress2').val();
		var phone = $('#rphone1 option:selected').val() + "-" + $('#rphone2').val() + "-" + $('#rphone3').val();
		
		var productNo = $('#productno').val();
		var mainImg = "${productList.get(0).mainImg }";
		var productName = "${productList.get(0).productName }";
		var productSize = "${productList.get(0).productSize }";
		var productColor = "${productList.get(0).productColor }";
		var productPrice = "${productList.get(0).productPrice }";
		var quantity = "${orderQuantity }";
		
		//주문자 정보
		if($('#uname').val() == ""){
			alert("주문자의 이름을 입력해주세요.");
			$('#uname').focus();
			return;
		}
		if($('#uphone2').val() == "" && $('#uphone3').val() == ""){
			alert("주문자의 휴대전화를 입력해주세요.");
			$('#uphone2').focus();
			return;
		}
		if($('#uemail1').val() == "" && $('#uemail2').val() == ""){
			alert("주문자의 이메일을 입력해주세요.");
			$('#uemail1').focus();
			return;
		}
		if($('#uzipcode1').val() == "" && $('#uaddress1').val() == "" && $('#uaddress2').val() == ""){
			alert("주문자의 주소를 입력해주세요.");
			$('#uzipcode1').focus();
			return;
		}
		
		//배송지 정보
		if($('#rname').val() == ""){
			alert("받는분의 이름을 입력해주세요.");
			$('#rname').focus();
			return;
		}
		if($('#rphone2').val() == "" && $('#rphone3').val() == ""){
			alert("받는분의 휴대전화를 입력해주세요.");
			$('#rphone2').focus();
			return;
		}
		if($('#remail1').val() == "" && $('#remail2').val() == ""){
			alert("받는분의 이메일을 입력해주세요.");
			$('#remail1').focus();
			return;
		}
		if($('#rzipcode1').val() == "" && $('#raddress1').val() == "" && $('#raddress2').val() == ""){
			alert("받는분의 배송지를 입력해주세요.");
			$('#rzipcode1').focus();
			return;
		}
		
		//모든 약관 동의 체크
		var payAgree = document.getElementById('payAgree').checked;
		var mallAgree = document.getElementById('mallAgree').checked;
		var userAgree = document.getElementById('userAgree').checked;
		
		if(!(payAgree == true && mallAgree == true && userAgree == true)){
			alert("필수체크항목에 체크해주세요.");
			return;
		}
		
		$('#orderPrice').val(orderPrice);
		$('#orderTime').val(orderTime);
		$('#userNo').val(userNo);
		$('#receiver').val(receiver);
		$('#zipcode').val(zipcode);
		$('#address').val(address);
		$('#detailedAddress').val(detailedAddress);
		$('#phone').val(phone);
		
		$('#productNo').val(productNo);
		$('#mainImg').val(mainImg);
		$('#productName').val(productName);
		$('#productSize').val(productSize);
		$('#productColor').val(productColor);
		$('#productPrice').val(productPrice);
		$('#quantity').val(quantity);
		
		$('#movedPayPage').submit();
	});
	
});

/* 해당 상품 상세페이지 이동 */
function productDetail(productNo){
	$('#productNum').val(productNo);
	$('#movedProductDetail').submit();
}
/* 다음 우편번호 검색 api - 주문자 주소 */
function execution_daum_address1() {
	new daum.Postcode({
		oncomplete : function(data) {
			/* 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분. */
			// 각 주소의 노출 규칙에 따라 주소를 조합한다.
			// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
			var addr = ''; // 주소 변수
			var extraAddr = ''; // 참고항목 변수

			//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
			if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
				addr = data.roadAddress;
			} else { // 사용자가 지번 주소를 선택했을 경우(J)
				addr = data.jibunAddress;
			}

			// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
			if (data.userSelectedType === 'R') {
				// 법정동명이 있을 경우 추가한다. (법정리는 제외)
				// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
				if (data.bname !== ''
						&& /[동|로|가]$/g.test(data.bname)) {
					extraAddr += data.bname;
				}
				// 건물명이 있고, 공동주택일 경우 추가한다.
				if (data.buildingName !== ''
						&& data.apartment === 'Y') {
					extraAddr += (extraAddr !== '' ? ', '
							+ data.buildingName
							: data.buildingName);
				}
				// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
				if (extraAddr !== '') {
					extraAddr = ' (' + extraAddr + ')';
				}
				// 주소변수 문자열과 참고항목 문자열 합치기
				addr += extraAddr;

			} else {
				addr += ' ';
			}

			// 우편번호와 주소 정보를 해당 필드에 넣는다.
			$("#uzipcode1").val(data.zonecode);
			$("#uaddress1").val(addr);
			// 커서를 상세주소 필드로 이동한다.
			document.getElementById("uaddress2").focus();
		}
	}).open();

}

/* 다음 우편번호 검색 api - 받는사람 주소 */
function execution_daum_address2() {
	new daum.Postcode({
		oncomplete : function(data) {
			/* 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분. */
			// 각 주소의 노출 규칙에 따라 주소를 조합한다.
			// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
			var addr = ''; // 주소 변수
			var extraAddr = ''; // 참고항목 변수

			//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
			if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
				addr = data.roadAddress;
			} else { // 사용자가 지번 주소를 선택했을 경우(J)
				addr = data.jibunAddress;
			}

			// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
			if (data.userSelectedType === 'R') {
				// 법정동명이 있을 경우 추가한다. (법정리는 제외)
				// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
				if (data.bname !== ''
						&& /[동|로|가]$/g.test(data.bname)) {
					extraAddr += data.bname;
				}
				// 건물명이 있고, 공동주택일 경우 추가한다.
				if (data.buildingName !== ''
						&& data.apartment === 'Y') {
					extraAddr += (extraAddr !== '' ? ', '
							+ data.buildingName
							: data.buildingName);
				}
				// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
				if (extraAddr !== '') {
					extraAddr = ' (' + extraAddr + ')';
				}
				// 주소변수 문자열과 참고항목 문자열 합치기
				addr += extraAddr;

			} else {
				addr += ' ';
			}

			// 우편번호와 주소 정보를 해당 필드에 넣는다.
			$("#rzipcode1").val(data.zonecode);
			$("#raddress1").val(addr);
			// 커서를 상세주소 필드로 이동한다.
			document.getElementById("raddress2").focus();
		}
	}).open();

}
</script>
</html>