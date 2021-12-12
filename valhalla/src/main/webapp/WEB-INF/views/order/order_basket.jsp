<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>

<%@ include file="../common/orderbasketCss.jsp" %>
<%@ include file="../common/header.jsp" %>
			
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
						<li title="현재 위치"><strong>장바구니</strong></li>
					</ol>
				</div>

				<div class="titleArea">
					<h2>장바구니</h2>
				</div>

				<div class="ec-base-step">
					<ol class="step">
						<li class="selected">1. 장바구니</li>
						<li>2. 주문서작성</li>
						<li>3. 주문완료</li>
					</ol>
				</div>

				<div class="xans-element- xans-order xans-order-basketpackage ">
					<div
						class="xans-element- xans-order xans-order-tabinfo ec-base-tab typeNav ">
						<ul class="menu">
							<li class="selected "><a href="/order/basket.html">국내배송상품
									(1)</a></li>
							<li class=" "><a href="/order/basket.html?delvtype=B">해외배송상품
									(0)</a></li>
						</ul>
						<p class="right displaynone RW">장바구니에 담긴 상품은 7일 동안 보관됩니다.</p>
					</div>
					<div class="cart-container">
						<div class="cart-product">


							<div
								class="xans-element- xans-order xans-order-emptyitem ec-base-fold theme1 selected eToggle ">
								<div class="title">
									<h3>장바구니 상품</h3>
								</div>
								<div class="contents">
									<div
										class="xans-element- xans-order xans-order-normtitle title subTitle ">
										<h4>일반상품 (1)</h4>
									</div>




									<div
										class="xans-element- xans-order xans-order-normindividual xans-record-">
										<div class="xans-element- xans-order xans-order-list">
											<div class="ec-base-prdInfo gCheck xans-record-">
												<div class="prdBox">
													<input type="checkbox" id="basket_chk_id_0"
														name="basket_product_normal_type_individual" class="check">
													&nbsp;
													<div class="thumbnail">
														<a
															href="/product/detail.html?product_no=18&amp;cate_no=29"><img
															src="//ecudemo199138.cafe24.com/web/product/tiny/202107/5442209a622bcb23bb14ed58d3ca4b1a.jpg"
															alt="" width="83" height="83"></a>
													</div>
													<div class="description">
														<strong class="prdName" title="상품명"><a
															href="/product/regular-fit-crew-neck-t-shirt/18/category/29/"
															class="ec-product-name">REGULAR FIT CREW-NECK T-SHIRT</a>
															<img src="/web/upload/custom_116267853189341.png" alt="">
															<img
															src="/web/upload/benefit/benefit_shop1_35255360f6c2af670155.07810785.png"
															alt=""></strong>
														<ul class="price">
															<li id=""><strong>28,000</strong>원 <span
																class="displaynone"><span></span></span></li>
															<li class="" id=""><span class="txtWarn">-14,000</span>원
																<span class="displaynone"><span></span></span></li>
														</ul>
														<ul class="info">
															<li>배송 : <span class="displaynone">0원<span
																	class="refer displaynone"></span></span>[무료] / 개별배송
															</li>
															<li class="displaynone">배송주기 <span class="txtEm"></span>
															</li>
															<li title="적립금" id="product_mileage0" class="mileage">-</li>
															<li class="displaynone">상품중량: <span>2.20kg *
																	1개 = 2.20kg</span>
															</li>
														</ul>
														<ul
															class="xans-element- xans-order xans-order-optionall optionGroup">
															<li class="xans-record-">
																<div class="name">
																	<span class="displaynone">REGULAR FIT CREW-NECK
																		T-SHIRT : </span>[옵션: 베이지/S], <br>[이름:ㅇㄴ,사은품 입력:ㄴㅇ] <span
																		class="displaynone">(1개)</span> <span class=""><a
																		href="#none"
																		onclick="Basket.showOptionChangeLayer('option_modify_layer_0', $(this))"
																		class="btnText displaynone">옵션변경</a></span>
																</div>
															</li>
														</ul>
													</div>
													<div class="sumPrice">
														<strong>28,000</strong>원 <span class="displaynone"></span>
													</div>
													<div class="quantity">
														<div class="">
															<span class="ec-base-qty"> <input
																id="quantity_id_0" name="quantity_name_0" size="2"
																value="1" type="text"> <a href="javascript:;"
																class="up"
																onclick="Basket.addQuantityShortcut('quantity_id_0', 0);">수량증가</a>
																<a href="javascript:;" class="down"
																onclick="Basket.outQuantityShortcut('quantity_id_0', 0);">수량감소</a>
															</span> <a href="javascript:;" class="btnNormal sizeQty"
																onclick="Basket.modifyQuantity()">변경</a>
														</div>
														<div class="displaynone">1</div>
													</div>
													<div class="buttonGroup">
														<a href="#none" onclick="BasketNew.moveWish(0);"
															class="btnNormal sizeS">관심상품</a> <a href="#none"
															onclick="Basket.orderBasketItem(0);"
															class="btnSubmit sizeS ">주문하기</a> <a href="#none"
															onclick="Basket.orderBasketItem(0);"
															class="btnSubmit sizeS displaynone">정기배송 신청</a>
													</div>
												</div>
												<a href="#none" onclick="Basket.deleteBasketItem(0);"
													class="btnDelete">삭제</a>
											</div>
										</div>
										<div class="summary">
											<div class="title">
												<h5>[개별배송]</h5>
											</div>
											<div class="contents">
												상품구매금액 <strong>28,000</strong> <span class="displaynone">()</span>
												<span class="displaynone"></span> <span class="displaynone">
													+ 부가세 <strong></strong><span class="displaynone"> </span>
												</span> + 배송비 <strong id="normal_individual_ship_fee">0
													(무료)</strong> <span class="displaynone"></span> <span
													id="normal_individual_benefit_price_area"
													class="sale displaynone"> - 상품할인금액 <strong
													id="normal_individual_benefit_price">14,000</strong>
												</span> <span class="total">합계 : <strong
													id="normal_individual_ship_fee_sum">28,000</strong>원 <span
													class="displaynone"></span></span>
											</div>
										</div>
									</div>







									<div
										class="xans-element- xans-order xans-order-weight displaynone ">
										<div class="totalWeight">
											전체 상품중량 : <span>2.20kg</span>
										</div>
									</div>
									<div
										class="xans-element- xans-order xans-order-selectorder ec-base-button typeMulti ">
										<div class="gLeft ">
											<a href="#none" onclick="Basket.moveOversea()"
												class="btnNormal sizeS">해외장바구니로 이동</a> <a href="#none"
												onclick="Basket.orderStorePickupSelectBasket(this)"
												class="btnNormal sizeS displaynone"
												link-order="/order/orderform.html?basket_type=all_buy"
												link-login="/member/login.html">스토어픽업 상품 선택</a> <a
												href="#none" class="btnNormal sizeS RW"
												onclick="Basket.estimatePrint(this)"
												link="/estimate/userform.html">견적서출력</a>
										</div>
										<div class="gRight">
											<a href="#none" class="btnNormal sizeS"
												id="product_select_all" data-status="off">전체선택</a> <a
												href="#none" onclick="Basket.deleteBasket()"
												class="btnNormal sizeS">선택삭제</a>
										</div>
									</div>
								</div>
							</div>

						</div>
						<div class="cart-total">
							<div class="sticky">
								<!-- 총 주문금액 : 국내배송상품 -->
								<div
									class="xans-element- xans-order xans-order-totalsummary  totalSummary ">
									<h3 class="totalSummary__title">주문상품</h3>
									<div class="totalSummary__item">
										<div class="heading">
											<h4 class="title">총 상품금액</h4>
											<div class="data">
												<strong>28,000</strong>원 <span class="refer displaynone"></span>
											</div>
										</div>
										<div class="contents displaynone">
											<div class="item">
												<h5 class="title">상품금액</h5>
												<div class="data"></div>
											</div>
											<div class="item">
												<h5 class="title">부가세</h5>
												<div class="data">0원</div>
											</div>
										</div>
									</div>
									<div class="title shipping totalSummary__item">
										<div class="heading">
											<h4 class="title">총 배송비</h4>
											<div class="data">
												<strong id="total_delv_price_front">0</strong>원 <span
													class="refer displaynone"></span>
												<div class="shippingArea displaynone">
													<span class="status">(</span>
													<div class="shippingFee">
														<a href="#none" class="btnText" id="">자세히</a>)
														<div class="ec-base-tooltip" style="display: none;">
															<strong class="title">배송비할인</strong>
															<div class="content">
																<strong class="title"></strong>
																<div class="ec-base-table">
																	<table border="1">
																		<caption>배송비 할인 이벤트 정보</caption>
																		<colgroup>
																			<col style="width: 80px;">
																			<col style="width: auto;">
																		</colgroup>
																		<tbody>
																			<tr>
																				<th scope="row">혜택</th>
																				<td><strong class="txtEm"></strong>
																					<p></p></td>
																			</tr>
																			<tr class="displaynone">
																				<th scope="row">기간</th>
																				<td><strong class="txtEm"></strong>
																					<p></p></td>
																			</tr>
																			<tr class="displaynone">
																				<th scope="row">대상</th>
																				<td></td>
																			</tr>
																		</tbody>
																	</table>
																</div>
															</div>
															<button type="button" class="btnClose">닫기</button>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<p class="displaynone ec-base-help">착불 상품이 포함되어 있습니다.</p>
									<div id="total_benefit_price_title_area"
										class="totalSummary__item displaynone">
										<div class="heading">
											<h4 class="title">총 할인금액</h4>
											<div class="data">
												<strong id="total_product_discount_price_front">14,000</strong>원
												<span class="refer displaynone"><span
													id="total_product_discount_price_back"></span></span>
											</div>
										</div>
										<div id="total_benefit_price_area"
											class="contents displaynone">
											<div id="total_benefit_list">
												<div class="item displaynone">
													<h5 class="title">정기배송할인</h5>
													<div class="data" id="">0원</div>
												</div>
												<div class="item ">
													<h5 class="title">기간할인</h5>
													<div class="data" id="">14,000원</div>
												</div>
												<div class="item displaynone">
													<h5 class="title">회원할인</h5>
													<div class="data" id="">0원</div>
												</div>
												<div class="item displaynone">
													<h5 class="title">재구매할인</h5>
													<div class="data" id="">0원</div>
												</div>
												<div class="item displaynone">
													<h5 class="title">대량구매할인</h5>
													<div class="data" id="">0원</div>
												</div>
												<div class="item displaynone">
													<h5 class="title">어바웃pbp할인</h5>
													<div class="data" id="">원</div>
												</div>
												<div class="item displaynone">
													<h5 class="title">신규상품할인</h5>
													<div class="data" id="">0원</div>
												</div>
												<div class="item displaynone">
													<h5 class="title">세트할인</h5>
													<div class="data" id="">0원</div>
												</div>
												<div class="item displaynone">
													<h5 class="title">결제수단할인</h5>
													<div class="data" id="">원</div>
												</div>
												<div class="item displaynone">
													<h5 class="title">회원등급할인</h5>
													<div class="data" id="mBenefitMembergroupSale">0원</div>
												</div>
												<div class="item displaynone">
													<h5 class="title">배송비할인</h5>
													<div class="data" id="">0원</div>
												</div>
											</div>
										</div>
									</div>
									<div class="total">
										<h3 class="title">결제예정금액</h3>
										<div class="paymentPrice">
											<strong id="total_order_price_front">28,000</strong>원 <span
												class="refer displaynone"><span
												id="total_order_price_back"></span></span>
										</div>
									</div>
								</div>
								<!-- 총 주문금액 : 해외배송상품 -->
								<div
									class="xans-element- xans-order xans-order-totaloversea displaynone totalSummary ">
									<h3 class="totalSummary__title">주문상품</h3>
									<div class="totalSummary__item">
										<div class="heading">
											<h4 class="title">총 상품금액</h4>
											<div class="data">
												<strong>28,000</strong>원 <span class="refer displaynone"></span>
											</div>
										</div>
										<div class="contents displaynone">
											<div class="item">
												<h5 class="title">상품금액</h5>
												<div class="data"></div>
											</div>
											<div class="item">
												<h5 class="title">부가세</h5>
												<div class="data">0원</div>
											</div>
										</div>
									</div>
									<div id="oversea_total_benefit_price_title_area"
										class="totalSummary__item displaynone">
										<div class="heading">
											<h4 class="title">총 할인금액</h4>
											<div class="data">
												<strong id="oversea_total_product_discount_price_front">14,000</strong>원
												<span class="refer displaynone"><span
													id="oversea_total_product_discount_price_back"></span></span>
											</div>
										</div>
										<div id="oversea_total_benefit_price_area"
											class="contents displaynone">
											<div id="oversea_total_benefit_list">
												<div class="item displaynone">
													<h5 class="title">정기배송할인</h5>
													<div class="data" id="">0원</div>
												</div>
												<div class="item ">
													<h5 class="title">기간할인</h5>
													<div class="data" id="">14,000원</div>
												</div>
												<div class="item displaynone">
													<h5 class="title">회원할인</h5>
													<div class="data" id="">0원</div>
												</div>
												<div class="item displaynone">
													<h5 class="title">재구매할인</h5>
													<div class="data" id="">0원</div>
												</div>
												<div class="item displaynone">
													<h5 class="title">대량구매할인</h5>
													<div class="data" id="">0원</div>
												</div>
												<div class="item displaynone">
													<h5 class="title">어바웃pbp할인</h5>
													<div class="data" id="">원</div>
												</div>
												<div class="item displaynone">
													<h5 class="title">신규상품할인</h5>
													<div class="data" id="">0원</div>
												</div>
												<div class="item displaynone">
													<h5 class="title">세트할인</h5>
													<div class="data" id="">0원</div>
												</div>
												<div class="item displaynone">
													<h5 class="title">결제수단할인</h5>
													<div class="data" id="">원</div>
												</div>
												<div class="item displaynone">
													<h5 class="title">회원등급할인</h5>
													<div class="data" id="mOverseaBenefitMembergroupSale">0원</div>
												</div>
											</div>
										</div>
									</div>
									<div class="total">
										<h3 class="title">결제예정금액</h3>
										<div class="paymentPrice">
											<strong id="oversea_total_order_price_front">28,000</strong>원
											<span class="refer displaynone"><span
												id="oversea_total_order_price_back"></span></span>
										</div>
									</div>
								</div>

								<div id="orderFixItem"
									class="xans-element- xans-order xans-order-totalorder ">
									<div class="ec-base-button">
										<a href="#none" onclick="Basket.orderAll(this)"
											link-order="/order/orderform.html?basket_type=all_buy"
											link-login="/member/login.html"
											class="btnSubmit gFull sizeL  ">전체상품주문</a> <a href="#none"
											onclick="Basket.orderSelectBasket(this)"
											link-order="/order/orderform.html?basket_type=all_buy"
											link-login="/member/login.html"
											class="btnNormal gFull sizeL ">선택상품주문</a>
									</div>
									<!-- 네이버 체크아웃 구매 버튼  -->
									<div id="NaverChk_Button"></div>
								</div>

								<div
									class="xans-element- xans-order xans-order-basketpriceinfoguide gInnerMargin  ">
									<ul class="ec-base-help">
										<li class="">할인 적용 금액은 주문서작성의 결제예정금액에서 확인 가능합니다.</li>
										<li class="displaynone">결제예정금액은 배송비가 포함된 금액이므로 주문서작성에서 확인
											가능합니다.</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div id="orderFixArea"
						class="xans-element- xans-order xans-order-totalorder ec-base-button gFixed "
						style="display: none;">
						<div class="ec-base-button gColumn">
							<a href="#none" onclick="Basket.orderSelectBasket(this)"
								link-order="/order/orderform.html?basket_type=all_buy"
								link-login="/member/login.html" class="btnNormal sizeM ">선택상품주문</a>
							<a href="#none" onclick="Basket.orderAll(this)"
								link-order="/order/orderform.html?basket_type=all_buy"
								link-login="/member/login.html" class="btnSubmit sizeM  ">전체상품주문</a>
						</div>
					</div>
				</div>

				<div
					class="xans-element- xans-order xans-order-basketguide ec-base-help ">
					<h3>이용안내</h3>
					<div class="inner">
						<h4>장바구니 이용안내</h4>
						<ul>
							<li>해외배송 상품과 국내배송 상품은 함께 결제하실 수 없으니 장바구니 별로 따로 결제해 주시기 바랍니다.</li>
							<li>해외배송 가능 상품의 경우 국내배송 장바구니에 담았다가 해외배송 장바구니로 이동하여 결제하실 수
								있습니다.</li>
							<li>선택하신 상품의 수량을 변경하시려면 수량변경 후 [변경] 버튼을 누르시면 됩니다.</li>
							<li>[쇼핑계속하기] 버튼을 누르시면 쇼핑을 계속 하실 수 있습니다.</li>
							<li>장바구니와 관심상품을 이용하여 원하시는 상품만 주문하거나 관심상품으로 등록하실 수 있습니다.</li>
							<li>파일첨부 옵션은 동일상품을 장바구니에 추가할 경우 마지막에 업로드 한 파일로 교체됩니다.</li>
						</ul>
						<h4>무이자할부 이용안내</h4>
						<ul>
							<li>상품별 무이자할부 혜택을 받으시려면 무이자할부 상품만 선택하여 [주문하기] 버튼을 눌러 주문/결제
								하시면 됩니다.</li>
							<li>[전체 상품 주문] 버튼을 누르시면 장바구니의 구분없이 선택된 모든 상품에 대한 주문/결제가
								이루어집니다.</li>
							<li>단, 전체 상품을 주문/결제하실 경우, 상품별 무이자할부 혜택을 받으실 수 없습니다.</li>
							<li>무이자할부 상품은 장바구니에서 별도 무이자할부 상품 영역에 표시되어, 무이자할부 상품 기준으로
								배송비가 표시됩니다.<br>실제 배송비는 함께 주문하는 상품에 따라 적용되오니 주문서 하단의 배송비 정보를
								참고해주시기 바랍니다.
							</li>
						</ul>
					</div>
				</div>


				<div id="ec-basketOptionModifyLayer"
					class="optionModifyLayer ec-base-layer-area" style="display: none;">
					<div class="ec-base-layer typeModal">
						<div class="header">
							<h5>옵션변경</h5>
						</div>
						<div class="content">
							<ul class="prdInfo">
								<li class="ec-basketOptionModifyLayer-productName">{$product_name}</li>
								<li class="ec-basketOptionModifyLayer-optionStr">{$layer_option_str}</li>
							</ul>
							<div class="prdModify">
								<h6 class="title">상품옵션</h6>
								<ul>
									<li class="ec-basketOptionModifyLayer-options"
										style="display: none;"><span class="optionDesc">{$option_name}</span>
										{$form.option_value}</li>
									<li class="ec-basketOptionModifyLayer-addOptions"
										style="display: none;"><span class="optionDesc">{$option_name}</span>
										{$form.option_value}</li>
								</ul>
							</div>
						</div>
						<div class="ec-base-button">
							<a href="#none"
								class="btnNormalFix sizeM ec-basketOptionModifyLayer-add">추가</a>
							<a href="#none"
								class="btnSubmitFix sizeM ec-basketOptionModifyLayer-modify">변경</a>
						</div>
						<a href="#none" class="btnClose"
							onclick="$('#ec-basketOptionModifyLayer').hide();">닫기</a>
					</div>
				</div>
			</div>
			<hr class="layout">
		</div>
		<hr class="layout">
		
<%@ include file="../common/footer.jsp" %>
</body>
</html>