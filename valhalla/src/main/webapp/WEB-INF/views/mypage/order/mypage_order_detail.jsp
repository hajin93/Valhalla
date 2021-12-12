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
					<li title="현재 위치"><strong>주문상세조회</strong></li>
				</ol>
			</div>

			<div class="myshopArea">
				<div class="titleArea titleArea--myshop">
					<h2>주문상세조회</h2>
				</div>
				<div module="MyShop_OrderHistoryDetail" unroll="1">
					<!--@css(/css/module/myshop/orderHistoryDetail.css)-->
					<!--
            $print_spec_url = /myshop/order/print/spec.html
            $print_pg_card_url = /myshop/order/print/pg.html
            $print_tax_url = /myshop/order/print/tax.html
            $issue_tax_url = /myshop/order/issue/tax.html
            $issue_cash_url = /myshop/order/issue/cash.html
            $select_gift_url = /order/gift_select.html
         -->

					<div class="ec-base-fold theme1 gBottomLine selected eToggle">
						<div class="title">
							<h3>주문정보</h3>
						</div>
						<div class="contents">
							<div class="ec-base-table">
								<table border="1">
									<caption>주문정보</caption>
									<colgroup>
										<col class="colOrder" />
										<col style="width: auto" />
									</colgroup>
									<tbody>
										<tr>
											<th scope="row">주문번호</th>
											<td>{$order.order_id} <span>{$order.order_icon}</span><br />
												<a href="{$order.subscription_invoice_link}"
												class="btnText {$order.subscription_invoice_order_display|display}"
												title="페이지 이동">[{$order.subscription_invoice_no}]</a></td>
										</tr>
										<tr>
											<th scope="row">주문일자</th>
											<td>{$order.date}</td>
										</tr>
										<tr>
											<th scope="row">주문자</th>
											<td>{$order.name}</td>
										</tr>
										<tr>
											<th scope="row">주문처리상태</th>
											<td>{$order.state}
												<button type="submit"
													class="btnNormal sizeS {$cancel_display|display}">주문취소</button>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>

					<div class="ec-base-fold theme1 gBottomLine selected eToggle">
						<div class="title">
							<h3>결제정보</h3>
						</div>
						<div class="contents">
							<div class="ec-base-table">
								<table border="1">
									<caption>결제정보</caption>
									<colgroup>
										<col class="colOrder" />
										<col style="width: auto" />
									</colgroup>
									<tbody>
										<tr>
											<th scope="row">총 주문금액</th>
											<td><span class="gSpace20">
													{$total.total_order_price_front_head}<strong>{$total.total_order_price_front}</strong>{$total.total_order_price_front_tail}
													<span
													class="{$total.total_order_price_ref_display|display}">{$total.total_order_price_back_head}{$total.total_order_price_back}{$total.total_order_price_back_tail}</span>
											</span> <a href="#none" onclick="{$total.total_order_layer_on}"
												class="btnNormal sizeS">내역보기</a>
												
												
												<!-- 내역보기 클릭시 나오는 레이어 팝업  -->
												<!-- <div id="{$total.total_order_layer}" class="totalDetail ec-base-layer typeLayer">
													<div class="header">
														<h3>총 주문금액 상세내역</h3>
													</div>
													<div class="content">
														<p>{$total.price_unit_head}{$total.total_order_price}{$total.price_unit_tail}</p>
														<ul class="ec-base-desc typeDot gLarge rightDD">
															<li><strong class="term">상품금액</strong><span
																class="desc">{$total.price_unit_head}{$total.total_product_price}{$total.price_unit_tail}</span></li>
															<li class="{$total.total_vat_price_display|display}"><strong
																class="term">부가세</strong><span class="desc">{$total.price_unit_head}{$total.total_vat_price}{$total.price_unit_tail}</span></li>
															<li><strong class="term">배송비</strong><span
																class="desc">{$total.price_unit_head}{$total.total_ship_fee}{$total.price_unit_tail}</span></li>
															<li><strong class="term">지역별 배송비</strong><span
																class="desc">{$total.price_unit_head}{$total.total_local_ship_fee}{$total.price_unit_tail}</span></li>
														</ul>
													</div>
													<a href="#none" class="btnClose"
														onclick="{$total.total_order_layer_off}"></a>
												</div> -->
												
												
												</td>
										</tr>
									</tbody>
									<tbody class="{$total.total_addsale_summary_display|display}">
										<tr>
											<th scope="row">총 할인금액</th>
											<td>{$total.price_unit_head}<strong class="txt14">{$total.total_addsale_price}</strong>{$total.price_unit_tail}
											</td>
										</tr>
										<tr class="{$total.total_coupon_price_display|display}">
											<th scope="row">쿠폰할인</th>
											<td><span class="gSpace20">{$total.price_unit_head}{$total.total_coupon_price}{$total.price_unit_tail}</span>
												<a href="#none" class="btnNormal sizeS RW eUsedCouponDetail">내역보기</a>
											</td>
										</tr>
										<tr class="{$total.total_discountcode_price_display|display}">
											<th scope="row">할인코드 적용</th>
											<td><span class="gSpace20">{$total.price_unit_head}{$total.total_discountcode_price}{$total.price_unit_tail}
													/ {$total.total_discountcode_price_detail}</span></td>
										</tr>
										<tr class="{$total.total_benefit_price_display|display}">
											<th scope="row">추가할인금액</th>
											<td><span class="gSpace20">{$total.price_unit_head}{$total.total_benefit_price}{$total.price_unit_tail}</span>
												<a href="#none" class="btnNormal sizeS"
												onclick="{$total.total_benefit_layer_on}">내역보기</a>
												
												<!-- 내역보기 클릭시 나오는 레이어 팝업  -->
												<!-- <div id="{$total.total_benefit_layer}" class="totalDetail ec-base-layer typeLayer">
													<div class="header">
														<h3>추가금액할인 내역보기</h3>
													</div>
													<div class="content">
														<p>{$total.price_unit_head}{$total.total_benefit_price}{$total.price_unit_tail}</p>
														<ul class="ec-base-desc typeDot gLarge rightDD">
															<li
																class="{$total.total_mobilesale_price_display|display}"><strong
																class="term">모바일할인</strong><span class="desc">{$total.price_unit_head}{$total.total_mobilesale_price}{$total.price_unit_tail}</span></li>
															<li
																class="{$total.total_subscriptionpayseqsale_price_display|display}"><strong
																class="term">정기배송할인</strong><span class="desc">{$total.price_unit_head}{$total.total_subscriptionpayseqsale_price}{$total.price_unit_tail}</span></li>
															<li
																class="{$total.total_periodsale_price_display|display}"><strong
																class="term">기간할인</strong><span class="desc">{$total.price_unit_head}{$total.total_periodsale_price}{$total.price_unit_tail}</span></li>
															<li
																class="{$total.total_membersale_price_display|display}"><strong
																class="term">회원할인</strong><span class="desc">{$total.price_unit_head}{$total.total_membersale_price}{$total.price_unit_tail}</span></li>
															<li
																class="{$total.total_rebuysale_price_display|display}"><strong
																class="term">{$rebuysale_head}재구매할인</strong><span
																class="desc">{$total.price_unit_head}{$total.total_rebuysale_price}{$total.price_unit_tail}</span></li>
															<li
																class="{$total.total_paymethodsale_price_display|display}"><strong
																class="term">결제수단할인</strong><span class="desc">{$total.price_unit_head}{$total.total_paymethodsale_price}{$total.price_unit_tail}</span></li>
															<li
																class="{$total.total_newproductsale_price_display|display}"><strong
																class="term">신규상품할인</strong><span class="desc">{$total.price_unit_head}{$total.total_newproductsale_price}{$total.price_unit_tail}</span></li>
															<li class="{$total.total_bulksale_price_display|display}"><strong
																class="term">대량구매할인</strong><span class="desc">{$total.price_unit_head}{$total.total_bulksale_price}{$total.price_unit_tail}</span></li>
															<li class="{$total.total_pbpsale_price_display|display}"><strong
																class="term">어바웃pbp할인</strong><span class="desc">{$total.price_unit_head}{$total.total_pbpsale_price}{$total.price_unit_tail}</span></li>
															<li
																class="{$total.total_livelinkonsale_price_display|display}"><strong
																class="term">바로가기(링콘)할인</strong><span class="desc">{$total.price_unit_head}{$total.total_livelinkonsale_price}{$total.price_unit_tail}</span></li>
															<li
																class="{$total.total_membergroupsale_price_display|display}"><strong
																class="term">회원등급할인</strong><span class="desc">{$total.price_unit_head}{$total.total_membergroupsale_price}{$total.price_unit_tail}</span></li>
															<li
																class="{$total.total_setproductsale_price_display|display}"><strong
																class="term">세트할인</strong><span class="desc">{$total.price_unit_head}{$total.total_setproductsale_price}{$total.price_unit_tail}</span></li>
															<li
																class="{$total.explode_set_product_discount_amount_display|display}"><strong
																class="term">세트상품할인</strong><span class="desc">{$total.price_unit_head}{$total.explode_set_product_discount_amount}{$total.price_unit_tail}</span></li>
															<li
																class="{$total.total_shipfeesale_price_display|display}"><strong
																class="term">배송비할인</strong><span class="desc">{$total.price_unit_head}{$total.total_shipfeesale_price}{$total.price_unit_tail}</span></li>
															<li
																class="{$total.total_externaladdsale_price_display|display}"><strong
																class="term">추가할인(상품)</strong><span class="desc">{$total.price_unit_head}{$total.total_externaladdsale_price}{$total.price_unit_tail}</span></li>
														</ul>
														<ul
															class="ec-base-desc typeDot gLarge rightDD {$total.total_appproductsale_price_display|display}">
															{$total.total_appproductsale_price_detail}
														</ul>
														<ul
															class="ec-base-desc typeDot gLarge rightDD {$total.total_appordersale_price_display|display}">
															{$total.total_appordersale_price_detail}
														</ul>
													</div>
													<a href="#none" class="btnClose"
														onclick="{$total.total_benefit_layer_off}">닫기</a>
												</div> -->
												
												</td>
										</tr>
									</tbody>
									<tbody class="{$total.total_addpay_summary_display|display}">
										<tr>
											<th scope="row">총 부가결제금액</th>
											<td>{$total.price_unit_head}<strong>{$total.total_addpay_price}</strong>{$total.price_unit_tail}
											</td>
										</tr>
										<tr class="{$total.mileage_display|display}">
											<th scope="row">{$mileage_name}</th>
											<td>{$total.mileage_unit_head}{$total.mileage_used}{$total.mileage_unit_tail}</td>
										</tr>
										<tr class="{$total.naver_mileage_display|display}">
											<th scope="row">네이버 마일리지/캐쉬</th>
											<td>{$total.total_naver_mileage_rate} 적립 /
												{$total.price_unit_head}{$total.naver_mileage_cash_used}{$total.price_unit_tail}
												(마일리지 {$total.price_unit_head}<strong>{$total.naver_mileage_used}</strong>{$total.price_unit_tail}
												+ 캐쉬 {$total.price_unit_head}<strong>{$total.naver_cash_used}</strong>{$total.price_unit_tail})
											</td>
										</tr>
										<tr class="{$total.deposit_display|display}">
											<th scope="row">{$deposit_name}</th>
											<td>{$total.deposit_used}{$deposit_unit}</td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="ec-base-table total">
								<table border="1">
									<caption>결제정보</caption>
									<colgroup>
										<col class="colOrder" />
										<col style="width: auto" />
									</colgroup>
									<tbody>
										<tr>
											<th scope="row">총 결제금액</th>
											<td><span class="txtEm"> <strong>{$payment.price_front_head}{$payment.price_front}</strong>{$payment.price_front_tail}
													<span class="{$payment.price_ref_display|display}">{$payment.price_back_head}{$payment.price_back}{$payment.price_back_tail}</span>
											</span></td>
										</tr>
										<tr class="{$payment.paymethod_display|display}">
											<th scope="row">결제수단</th>
											<td><strong>{$payment.paymethod}</strong>
												<p>
													{$payment.paymethod_detail} <a target="_blank"
														href="{$payment.bank_url}"
														class="btnNormal sizeS {$payment.display_banking|display}">인터넷뱅킹
														바로가기</a> <a target="_blank" href="{$payment.pay_extra_url}"
														class="btnNormal sizeS {$payment.paymenturl_display|display}"
														id="{$payment.btn_payment_link_id}">결제사이트 바로가기</a>
												</p></td>
										</tr>
										<tr class="{$payment.eguarantee_display|display}">
											<th scope="row">전자보증보험<br />서비스정보
											</th>
											<td>{$payment.eguarantee_detail}</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>

					<div class="ec-base-fold theme1 gBottomLine selected eToggle">
						<div class="title">
							<h3>
								주문 상품 정보 <span class="order">(총 {$item_count}개 / {$total.price_unit_head}{$total.total_order_price}{$total.price_unit_tail})</span>
							</h3>
						</div>
						<div class="contents">
							<div class="{$basic_display|display}">
								<div module="Myshop_OrderHistoryDetailBasic">
									<div class="ec-base-prdInfo">
										<div class="prdBox">
											<div class="thumbnail">
												<a href="/product/detail.html{$param_product}"><img
													src="{$thumbnail}" alt="{$product_name_alt}"
													onerror="this.src='//img.echosting.cafe24.com/thumb/img_product_small.gif';"
													width="83" height="83" /></a>
											</div>
											<div class="description">
												<strong class="prdName" title="상품명">{$product_name_link}</strong>
												<div class="price" title="상품구매금액">
													{$product_purchase_price_front_head}<strong>{$product_purchase_price_front}</strong>{$product_purchase_price_front_tail}
													<span
														class="refer {$product_purchase_price_ref_display|display}">({$product_purchase_price_back_head}{$product_purchase_price_back}{$product_purchase_price_back_tail})</span>
													<span class="qty">({$quantity}개)</span>
												</div>
												<p class="optionGroup {$option_display|display}">{$option_str}</p>
												<ul class="optionGroup" module="Myshop_optionSet">
													<li><span class="product">{$product_name}</span>{$option_str}
														({$qty}개)</li>
													<li><span class="product">{$product_name}</span>{$option_str}
														({$qty}개)</li>
												</ul>
												<ul class="info">
													<li class="{$shipping_company_display|display}"><a
														href="{$shipping_company_link}"
														target="{$shipping_company_target}">{$shipping_company}</a></li>
													<li class="{$invoice_no_display|display}"><a
														href="#none" class="line"
														onclick="{$shipping_trace_popup}">[{$invoice_no}]</a></li>
													<li>배송 : {$type_all} <span
														class="{$oversea_able_display|display}">(해외배송가능)</span></li>
													<li class="{$card_installment_display|display}">무이자할부
														상품</li>
												</ul>
											</div>
										</div>
										<div class="prdFoot" title="주문처리상태">
											<div class="gLeft">
												<span class="txtStatus">{$status}</span> <span class="store">{$mobile_store_info}</span>
												<span class="{$detail_info_display|display}"><a
													href="#none" onclick="{$detail_info}" class="btnText">상세정보</a></span>
											</div>
											<div class="gRight">
												<a href="/board/product/write.html{$param_postscript}"
													class="btnNormal sizeS {$postscript_display|display}">구매후기</a>
												<a href="#none"
													class="btnNormal sizeS {$withdraw_cancel_display|display}"
													onclick="{$action_withdraw_cancel}">취소철회</a> <a
													href="#none"
													class="btnNormal sizeS {$withdraw_exchange_display|display}"
													onclick="{$action_withdraw_exchange}">교환철회</a> <a
													href="#none"
													class="btnNormal sizeS {$withdraw_return_display|display}"
													onclick="{$action_withdraw_return}">반품철회</a>
											</div>
										</div>
									</div>

									<div class="ec-base-prdInfo">
										<div class="prdBox">
											<div class="thumbnail">
												<a href="/product/detail.html{$param_product}"><img
													src="{$thumbnail}" alt="{$product_name_alt}"
													onerror="this.src='//img.echosting.cafe24.com/thumb/img_product_small.gif';"
													width="83" height="83" /></a>
											</div>
											<div class="description">
												<strong class="prdName" title="상품명">{$product_name_link}</strong>
												<div class="price" title="상품구매금액">
													{$product_purchase_price_front_head}<strong>{$product_purchase_price_front}</strong>{$product_purchase_price_front_tail}
													<span
														class="refer {$product_purchase_price_ref_display|display}">({$product_purchase_price_back_head}{$product_purchase_price_back}{$product_purchase_price_back_tail})</span>
													<span class="qty">({$quantity}개)</span>
												</div>
												<p class="optionGroup {$option_display|display}">{$option_str}</p>
												<ul class="optionGroup" module="Myshop_optionSet">
													<li><span class="product">{$product_name}</span>{$option_str}
														({$qty}개)</li>
													<li><span class="product">{$product_name}</span>{$option_str}
														({$qty}개)</li>
												</ul>
												<ul class="info">
													<li class="{$shipping_company_display|display}"><a
														href="{$shipping_company_link}"
														target="{$shipping_company_target}">{$shipping_company}</a></li>
													<li class="{$invoice_no_display|display}"><a
														href="#none" class="line"
														onclick="{$shipping_trace_popup}">[{$invoice_no}]</a></li>
													<li>배송 : {$type_all} <span
														class="{$oversea_able_display|display}">(해외배송가능)</span></li>
													<li class="{$card_installment_display|display}">무이자할부
														상품</li>
												</ul>
											</div>
										</div>

										<div class="prdFoot" title="주문처리상태">
											<div class="gLeft">
												<span class="txtStatus">{$status}</span> <span class="store">{$mobile_store_info}</span>
												<span class="{$detail_info_display|display}"><a
													href="#none" onclick="{$detail_info}" class="btnText">상세정보</a></span>
											</div>
											<div class="gRight">
												<a href="/board/product/write.html{$param_postscript}"
													class="btnNormal sizeS {$postscript_display|display}">구매후기</a>
												<a href="#none"
													class="btnNormal sizeS {$withdraw_cancel_display|display}"
													onclick="{$action_withdraw_cancel}">취소철회</a> <a
													href="#none"
													class="btnNormal sizeS {$withdraw_exchange_display|display}"
													onclick="{$action_withdraw_exchange}">교환철회</a> <a
													href="#none"
													class="btnNormal sizeS {$withdraw_return_display|display}"
													onclick="{$action_withdraw_return}">반품철회</a>
											</div>
										</div>
									</div>
								</div>
								<div class="summary">
									<div class="title">
										<h4>[기본배송]</h4>
									</div>
									<div class="contents">
										상품구매금액 {$basic.product_price} <span
											class="{$total.total_vat_price_display|display}">+ 부가세
											{$basic.vat_price}</span> + 배송비 {$basic.ship_fee} + 지역별배송비
										{$basic.special_ship_fee}<span
											class="{$basic.product_benefit_price_display|display}">
											- 상품할인금액 {$basic.product_benefit_price}</span> <span class="total">합계
											: {$basic.total_price_front_head}<strong>{$basic.total_price_front}</strong>{$basic.total_price_front_tail}<span
											class="{$basic.total_price_ref_display|display}">{$basic.total_price_back_head}{$basic.total_price_back}{$basic.total_price_back_tail}</span>
										</span>
									</div>
								</div>
							</div>

							<div class="{$individual_display|display}">
								<div module="Myshop_OrderHistoryDetailIndividual">
									<div class="ec-base-prdInfo">
										<div class="prdBox">
											<div class="thumbnail">
												<a href="/product/detail.html{$param_product}"><img
													src="{$thumbnail}" alt="{$product_name_alt}"
													onerror="this.src='//img.echosting.cafe24.com/thumb/img_product_small.gif';"
													width="83" height="83" /></a>
											</div>
											<div class="description">
												<strong class="prdName" title="상품명">{$product_name_link}</strong>
												<div class="price" title="상품구매금액">
													{$product_purchase_price_front_head}<strong>{$product_purchase_price_front}</strong>{$product_purchase_price_front_tail}
													<span
														class="refer {$product_purchase_price_ref_display|display}">({$product_purchase_price_back_head}{$product_purchase_price_back}{$product_purchase_price_back_tail})</span>
													<span class="qty">({$quantity}개)</span>
												</div>
												<p class="optionGroup {$option_display|display}">{$option_str}</p>
												<ul class="optionGroup" module="Myshop_optionSet">
													<li><span class="product">{$product_name}</span>{$option_str}
														({$qty}개)</li>
													<li><span class="product">{$product_name}</span>{$option_str}
														({$qty}개)</li>
												</ul>
												<ul class="info">
													<li class="{$shipping_company_display|display}"><a
														href="{$shipping_company_link}"
														target="{$shipping_company_target}">{$shipping_company}</a></li>
													<li class="{$invoice_no_display|display}"><a
														href="#none" class="line"
														onclick="{$shipping_trace_popup}">[{$invoice_no}]</a></li>
													<li>배송 : {$type_all} <span
														class="{$oversea_able_display|display}">(해외배송가능)</span></li>
													<li class="{$card_installment_display|display}">무이자할부
														상품</li>
												</ul>
											</div>
										</div>
										<div class="prdFoot" title="주문처리상태">
											<div class="gLeft">
												<span class="txtStatus">{$status}</span> <span class="store">{$mobile_store_info}</span>
												<span class="{$detail_info_display|display}"><a
													href="order_detail_cs.html{$params}" target="_blank"
													class="btnText">상세정보</a></span>
											</div>
											<div class="gRight">
												<a href="/board/product/write.html{$param_postscript}"
													class="btnNormal sizeS {$postscript_display|display}">구매후기</a>
												<a href="#none"
													class="btnNormal sizeS {$withdraw_cancel_display|display}"
													onclick="{$action_withdraw_cancel}">취소철회</a> <a
													href="#none"
													class="btnNormal sizeS {$withdraw_exchange_display|display}"
													onclick="{$action_withdraw_exchange}">교환철회</a> <a
													href="#none"
													class="btnNormal sizeS {$withdraw_return_display|display}"
													onclick="{$action_withdraw_return}">반품철회</a>
											</div>
										</div>
									</div>

									<div class="ec-base-prdInfo">
										<div class="prdBox">
											<div class="thumbnail">
												<a href="/product/detail.html{$param_product}"><img
													src="{$thumbnail}" alt="{$product_name_alt}"
													onerror="this.src='//img.echosting.cafe24.com/thumb/img_product_small.gif';"
													width="83" height="83" /></a>
											</div>
											<div class="description">
												<strong class="prdName" title="상품명">{$product_name_link}</strong>
												<div class="price" title="상품구매금액">
													{$product_purchase_price_front_head}<strong>{$product_purchase_price_front}</strong>{$product_purchase_price_front_tail}
													<span
														class="refer {$product_purchase_price_ref_display|display}">({$product_purchase_price_back_head}{$product_purchase_price_back}{$product_purchase_price_back_tail})</span>
													<span class="qty">({$quantity}개)</span>
												</div>
												<p class="optionGroup {$option_display|display}">{$option_str}</p>
												<ul class="optionGroup" module="Myshop_optionSet">
													<li><span class="product">{$product_name}</span>{$option_str}
														({$qty}개)</li>
													<li><span class="product">{$product_name}</span>{$option_str}
														({$qty}개)</li>
												</ul>
												<ul class="info">
													<li class="{$shipping_company_display|display}"><a
														href="{$shipping_company_link}"
														target="{$shipping_company_target}">{$shipping_company}</a></li>
													<li class="{$invoice_no_display|display}"><a
														href="#none" class="line"
														onclick="{$shipping_trace_popup}">[{$invoice_no}]</a></li>
													<li>배송 : {$type_all} <span
														class="{$oversea_able_display|display}">(해외배송가능)</span></li>
													<li class="{$card_installment_display|display}">무이자할부
														상품</li>
												</ul>
											</div>
										</div>
										<div class="prdFoot" title="주문처리상태">
											<div class="gLeft">
												<span class="txtStatus">{$status}</span> <span class="store">{$mobile_store_info}</span>
												<span class="{$detail_info_display|display}"><a
													href="order_detail_cs.html{$params}" target="_blank"
													class="btnText">상세정보</a></span>
											</div>
											<div class="gRight">
												<a href="/board/product/write.html{$param_postscript}"
													class="btnNormal sizeS {$postscript_display|display}">구매후기</a>
												<a href="#none"
													class="btnNormal sizeS {$withdraw_cancel_display|display}"
													onclick="{$action_withdraw_cancel}">취소철회</a> <a
													href="#none"
													class="btnNormal sizeS {$withdraw_exchange_display|display}"
													onclick="{$action_withdraw_exchange}">교환철회</a> <a
													href="#none"
													class="btnNormal sizeS {$withdraw_return_display|display}"
													onclick="{$action_withdraw_return}">반품철회</a>
											</div>
										</div>
									</div>
								</div>
								<div class="summary">
									<div class="title">
										<h4>[개별배송]</h4>
									</div>
									<div class="contents">
										상품구매금액 {$individual.product_price} <span
											class="{$total.total_vat_price_display|display}">+ 부가세
											{$individual.vat_price}</span> + 배송비 {$individual.ship_fee} + 지역별배송비
										{$individual.special_ship_fee}<span
											class="{$individual.product_benefit_price_display|display}">
											- 상품할인금액 {$individual.product_benefit_price}</span> <span
											class="total">합계 :
											{$individual.total_price_front_head}<strong>{$individual.total_price_front}</strong>{$individual.total_price_front_tail}<span
											class="{$individual.total_price_ref_display|display}">{$individual.total_price_back_head}{$individual.total_price_back}{$individual.total_price_back_tail}</span>
										</span>
									</div>
								</div>
							</div>

							<div class="{$oversea_display|display}">
								<div module="Myshop_OrderHistoryDetailOversea">
									<div class="ec-base-prdInfo">
										<div class="prdBox">
											<p class="thumbnail">
												<a href="/product/detail.html{$param_product}"><img
													src="{$thumbnail}" alt="{$product_name_alt}"
													onerror="this.src='//img.echosting.cafe24.com/thumb/img_product_small.gif';"
													width="83" height="83" /></a>
											</p>
											<div class="description">
												<strong class="prdName" title="상품명">{$product_name_link}</strong>
												<div class="price" title="상품구매금액">
													{$product_purchase_price_front_head}<strong>{$product_purchase_price_front}</strong>{$product_purchase_price_front_tail}
													<span
														class="refer {$product_purchase_price_ref_display|display}">({$product_purchase_price_back_head}{$product_purchase_price_back}{$product_purchase_price_back_tail})</span>
													<span class="qty">({$quantity}개)</span>
												</div>
												<p class="optionGroup {$option_display|display}">{$option_str}</p>
												<ul class="optionGroup" module="Myshop_optionSet">
													<li><span class="product">{$product_name}</span>{$option_str}
														({$qty}개)</li>
													<li><span class="product">{$product_name}</span>{$option_str}
														({$qty}개)</li>
												</ul>
												<ul class="info">
													<li class="{$shipping_company_display|display}"><a
														href="{$shipping_company_link}"
														target="{$shipping_company_target}">{$shipping_company}</a></li>
													<li class="{$invoice_no_display|display}"><a
														href="#none" class="line"
														onclick="{$shipping_trace_popup}">[{$invoice_no}]</a></li>
													<li>배송 : {$type_all}</li>
													<li class="{$card_installment_display|display}">무이자할부
														상품</li>
												</ul>
											</div>
										</div>
										<div class="prdFoot" title="주문처리상태">
											<div class="gLeft">
												<span class="txtStatus">{$status}</span> <span
													class="{$detail_info_display|display}"><a
													href="order_detail_cs.html{$params}" target="_blank"
													class="btnText">상세정보</a></span>
											</div>
											<div class="gRight">
												<a href="/board/product/write.html{$param_postscript}"
													class="btnNormal sizeS {$postscript_display|display}">구매후기</a>
												<a href="#none"
													class="btnNormal sizeS {$withdraw_cancel_display|display}"
													onclick="{$action_withdraw_cancel}">취소철회</a> <a
													href="#none"
													class="btnNormal sizeS {$withdraw_exchange_display|display}"
													onclick="{$action_withdraw_exchange}">교환철회</a> <a
													href="#none"
													class="btnNormal sizeS {$withdraw_return_display|display}"
													onclick="{$action_withdraw_return}">반품철회</a>
											</div>
										</div>
									</div>

									<div class="ec-base-prdInfo">
										<div class="prdBox">
											<p class="thumbnail">
												<a href="/product/detail.html{$param_product}"><img
													src="{$thumbnail}" alt="{$product_name_alt}"
													onerror="this.src='//img.echosting.cafe24.com/thumb/img_product_small.gif';"
													width="83" height="83" /></a>
											</p>
											<div class="description">
												<strong class="prdName" title="상품명">{$product_name_link}</strong>
												<div class="price" title="상품구매금액">
													{$product_purchase_price_front_head}<strong>{$product_purchase_price_front}</strong>{$product_purchase_price_front_tail}
													<span
														class="refer {$product_purchase_price_ref_display|display}">({$product_purchase_price_back_head}{$product_purchase_price_back}{$product_purchase_price_back_tail})</span>
													<span class="qty">({$quantity}개)</span>
												</div>
												<p class="optionGroup {$option_display|display}">{$option_str}</p>
												<ul class="optionGroup" module="Myshop_optionSet">
													<li><span class="product">{$product_name}</span>{$option_str}
														({$qty}개)</li>
													<li><span class="product">{$product_name}</span>{$option_str}
														({$qty}개)</li>
												</ul>
												<ul class="info">
													<li class="{$shipping_company_display|display}"><a
														href="{$shipping_company_link}"
														target="{$shipping_company_target}">{$shipping_company}</a></li>
													<li class="{$invoice_no_display|display}"><a
														href="#none" class="line"
														onclick="{$shipping_trace_popup}">[{$invoice_no}]</a></li>
													<li>배송 : {$type_all}</li>
													<li class="{$card_installment_display|display}">무이자할부
														상품</li>
												</ul>
											</div>
										</div>
										<div class="prdFoot" title="주문처리상태">
											<div class="gLeft">
												<span class="txtStatus">{$status}</span> <span
													class="{$detail_info_display|display}"><a
													href="order_detail_cs.html{$params}" target="_blank"
													class="btnText">상세정보</a></span>
											</div>
											<div class="gRight">
												<a href="/board/product/write.html{$param_postscript}"
													class="btnNormal sizeS {$postscript_display|display}">구매후기</a>
												<a href="#none"
													class="btnNormal sizeS {$withdraw_cancel_display|display}"
													onclick="{$action_withdraw_cancel}">취소철회</a> <a
													href="#none"
													class="btnNormal sizeS {$withdraw_exchange_display|display}"
													onclick="{$action_withdraw_exchange}">교환철회</a> <a
													href="#none"
													class="btnNormal sizeS {$withdraw_return_display|display}"
													onclick="{$action_withdraw_return}">반품철회</a>
											</div>
										</div>
									</div>
								</div>
								<div class="summary">
									<div class="title">
										<h4>[해외배송]</h4>
									</div>
									<div class="contents">
										상품구매금액 {$oversea.product_price} <span
											class="{$total.total_vat_price_display|display}">+ 부가세
											{$oversea.vat_price}</span> + 배송비 {$oversea.total_ship_fee}<span
											class="{$oversea.product_benefit_price_display|display}">
											- 상품할인금액 {$oversea.product_benefit_price}</span> <span class="total">합계
											: {$oversea.total_price_front_head}<strong>{$oversea.total_price_front}</strong>{$oversea.total_price_front_tail}<span
											class="{$oversea.total_price_ref_display|display}">{$oversea.total_price_back_head}{$oversea.total_price_back}{$oversea.total_price_back_tail}</span>
										</span>
									</div>
								</div>
							</div>

							<div class="{$gift_display|display}">
								<div module="Myshop_OrderHistoryDetailGift">
									<div class="ec-base-prdInfo">
										<div class="prdBox">
											<div class="thumbnail">
												<img src="{$thumbnail}" alt="{$product_name_alt}"
													onerror="this.src='//img.echosting.cafe24.com/thumb/img_product_small.gif';"
													width="83" height="83" />
											</div>
											<div class="description">
												<strong class="prdName" title="상품명">{$product_name}</strong>
												<p class="optionGroup {$option_display|display}">{$option_str}</p>
												<ul class="optionGroup" module="Myshop_optionSet">
													<li><span class="product">{$product_name}</span>{$option_str}
														({$qty}개)</li>
													<li><span class="product">{$product_name}</span>{$option_str}
														({$qty}개)</li>
												</ul>
												<ul class="info">
													<li class="{$shipping_company_display|display}"><a
														href="{$shipping_company_link}"
														target="{$shipping_company_target}">{$shipping_company}</a></li>
													<li class="{$invoice_no_display|display}"><a
														href="#none" class="line"
														onclick="{$shipping_trace_popup}">[{$invoice_no}]</a></li>
													<li>배송 : {$type_all}</li>
													<li>수량 : {$quantity}개</li>
												</ul>
											</div>
										</div>
										<div class="prdFoot" title="주문처리상태">
											<div class="gLeft">
												<span class="txtStatus">{$status}</span>
											</div>
											<div class="gRight">
												<a href="/board/product/write.html{$param_postscript}"
													class="btnNormal sizeS {$postscript_display|display}">구매후기</a>
												<a href="#none"
													class="btnNormal sizeS {$withdraw_cancel_display|display}"
													onclick="{$action_withdraw_cancel}">취소철회</a> <a
													href="#none"
													class="btnNormal sizeS {$withdraw_exchange_display|display}"
													onclick="{$action_withdraw_exchange}">교환철회</a> <a
													href="#none"
													class="btnNormal sizeS {$withdraw_return_display|display}"
													onclick="{$action_withdraw_return}">반품철회</a>
											</div>
										</div>
									</div>

									<div class="ec-base-prdInfo">
										<div class="prdBox">
											<div class="thumbnail">
												<img src="{$thumbnail}" alt="{$product_name_alt}"
													onerror="this.src='//img.echosting.cafe24.com/thumb/img_product_small.gif';"
													width="83" height="83" />
											</div>
											<div class="description">
												<strong class="prdName" title="상품명">{$product_name}</strong>
												<p class="optionGroup {$option_display|display}">{$option_str}</p>
												<ul class="optionGroup" module="Myshop_optionSet">
													<li><span class="product">{$product_name}</span>{$option_str}
														({$qty}개)</li>
													<li><span class="product">{$product_name}</span>{$option_str}
														({$qty}개)</li>
												</ul>
												<ul class="info">
													<li class="{$shipping_company_display|display}"><a
														href="{$shipping_company_link}"
														target="{$shipping_company_target}">{$shipping_company}</a></li>
													<li class="{$invoice_no_display|display}"><a
														href="#none" class="line"
														onclick="{$shipping_trace_popup}">[{$invoice_no}]</a></li>
													<li>배송 : {$type_all}</li>
													<li>수량 : {$quantity}개</li>
												</ul>
											</div>
										</div>
										<div class="prdFoot" title="주문처리상태">
											<div class="gLeft">
												<span class="txtStatus">{$status}</span>
											</div>
											<div class="gRight">
												<a href="/board/product/write.html{$param_postscript}"
													class="btnNormal sizeS {$postscript_display|display}">구매후기</a>
												<a href="#none"
													class="btnNormal sizeS {$withdraw_cancel_display|display}"
													onclick="{$action_withdraw_cancel}">취소철회</a> <a
													href="#none"
													class="btnNormal sizeS {$withdraw_exchange_display|display}"
													onclick="{$action_withdraw_exchange}">교환철회</a> <a
													href="#none"
													class="btnNormal sizeS {$withdraw_return_display|display}"
													onclick="{$action_withdraw_return}">반품철회</a>
											</div>
										</div>
									</div>
									<div class="summary">
										<div class="title">
											<h4>[사은품]</h4>
										</div>
										<div class="contents">
											상품구매금액 0 + 배송비 0 + 지역별배송비 0 <span class="total">합계 :
												{$price_unit_head}<strong>0</strong>{$price_unit_tail}
											</span>
										</div>
									</div>
								</div>
							</div>
							<div class="ec-base-button {$button_display|display}">
								<span class="gRight">
									<button type="submit"
										class="btnNormal sizeS {$cancel_display|display}">주문취소</button>
								</span>
							</div>
						</div>
					</div>

					<div
						class="ec-base-fold theme1 gBottomLine selected eToggle {$final_payed_display|display}">
						<div class="title">
							<h3>최종 결제 정보</h3>
						</div>
						<div class="contents">
							<div class="ec-base-table">
								<table border="1">
									<caption>최종 결제 정보</caption>
									<colgroup>
										<col class="colOrder" />
										<col style="width: auto" />
									</colgroup>
									<tbody>
										<tr>
											<th scope="row">총 결제금액</th>
											<td><span class="txtEm">{$total.price_unit_head}<strong
													class="txt18">{$total.final_payed_order_price}</strong>{$total.price_unit_tail}
											</span> <span
												class="{$total.final_payed_order_price_ref_display|display}">{$total.final_payed_order_price_ref}</span>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="ec-base-table">
								<table border="1">
									<caption>최종 결제 정보</caption>
									<colgroup>
										<col class="colOrder" />
										<col style="width: auto" />
									</colgroup>
									<tbody module="Myshop_OrderHistoryDetailPaymentFinal">
										<tr>
											<th scope="row">{$title}</th>
											<td><strong>{$price_unit_head}{$price}{$price_unit_tail}</strong>
												<p>{$detail}</p></td>
										</tr>
										<tr>
											<th scope="row">{$title}</th>
											<td><strong>{$price_unit_head}{$price}{$price_unit_tail}</strong>
												<p>{$detail}</p></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>

					<div
						class="ec-base-fold theme1 gBottomLine selected eToggle {$cs_info_display|display}">
						<div class="title">
							<h3>취소/교환/반품 신청 정보</h3>
						</div>
						<div class="contents">
							<div class="ec-base-table"
								module="Myshop_OrderHistoryDetailCsInfo">
								<table border="1">
									<caption>취소/교환/반품 신청 정보</caption>
									<colgroup>
										<col style="width: 170px" />
										<col style="width: auto" />
										<col style="width: 120px" class="RW" />
										<col style="width: 150px" class="RW" />
									</colgroup>
									<thead class="RW">
										<tr>
											<th scope="col" class="left">구분</th>
											<th scope="col">상품정보</th>
											<th scope="col">수량</th>
											<th scope="col">상품구매금액</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th scope="row" class="RW">{$cancel_action_type}</th>
											<td class="productList" colspan="3">
												<h4 class="subTitle RTMB">{$cancel_action_type}</h4>
												<ul module="Myshop_cancelProduct">
													<li>
														<div class="product">
															{$product_name} <span class="option">{$option_str}</span>
															<ul class="option" module="Myshop_optionSet">
																<li><strong class="productName">{$product_name}</strong>{$option_str}</li>
																<li><strong class="productName">{$product_name}</strong>{$option_str}</li>
															</ul>
														</div>
														<p class="quantity">
															{$quantity}<span class="RTMI">개</span>
														</p>
														<p class="price RW">{$product_price}</p>
													</li>
													<li>
														<div class="product">
															{$product_name} <span class="option">{$option_str}</span>
															<ul class="option" module="Myshop_optionSet">
																<li><strong class="productName">{$product_name}</strong>{$option_str}</li>
																<li><strong class="productName">{$product_name}</strong>{$option_str}</li>
															</ul>
														</div>
														<p class="quantity">
															{$quantity}<span class="RTMI">개</span>
														</p>
														<p class="price RW">{$product_price}</p>
													</li>
												</ul>
											</td>
										</tr>
										<tr class="{$exchange_action_display|display}">
											<th scope="row" class="RW">{$exchange_action_type}</th>
											<td class="productList" colspan="3">
												<h4 class="subTitle RTMB">{$exchange_action_type}</h4>
												<ul module="Myshop_exchangeProduct">
													<li>
														<div class="product">
															{$product_name} <span class="option">{$option_str}</span>
															<ul class="option" module="Myshop_optionSet">
																<li><strong class="productName">{$product_name}</strong>{$option_str}</li>
																<li><strong class="productName">{$product_name}</strong>{$option_str}</li>
															</ul>
														</div>
														<p class="quantity">
															{$quantity}<span class="RTMI">개</span>
														</p>
														<p class="price RW">{$product_price}</p>
													</li>
													<li>
														<div class="product">
															{$product_name} <span class="option">{$option_str}</span>
															<ul class="option" module="Myshop_optionSet">
																<li><strong class="productName">{$product_name}</strong>{$option_str}</li>
																<li><strong class="productName">{$product_name}</strong>{$option_str}</li>
															</ul>
														</div>
														<p class="quantity">
															{$quantity}<span class="RTMI">개</span>
														</p>
														<p class="price RW">{$product_price}</p>
													</li>
												</ul>
											</td>
										</tr>
										<tr>
											<th scope="row">신청일</th>
											<td colspan="3">{$request_date}</td>
										</tr>
										<!-- 취소/교환/반품신청 추가정보 -->
										<tr module="Myshop_Csaddinfo">
											<th scope="row">{$cs_add_info_title}</th>
											<td colspan="3">{$cs_add_info_value}</td>
										</tr>
										<tr class="{$cs_shipfee_display|display}">
											<th scope="row">{$cs_shipfee_label}</th>
											<td colspan="3">{$cs_shipfee_paid_by} / {$cs_shipfee} /
												{$cs_shipfee_paymethod}</td>
										</tr>
										<tr>
											<th scope="row">환불예정금액</th>
											<td colspan="3">환불예정금액은 판매자가 접수처리 완료 후 확인할 수 있습니다.<span
												class="gBlank5 {$refund_exchange_comment_display|display}">교환상품에
													따라 추가결제금액이 발생할 수 있습니다.</span></td>
										</tr>
										<tr class="{$refund_account_display|display}">
											<th scope="row">환불계좌</th>
											<td colspan="3">[{$bank_name}] {$bank_acc_no} 예금주 :
												{$bank_acc_owner} <a href="#none"
												onclick="{$action_bank_acc_change}"
												class="btnNormal sizeS {$bank_acc_change_display|display}">환불계좌변경</a>
											</td>
										</tr>
									</tbody>
									<tbody>
										<tr>
											<th scope="row" class="RW">{$cancel_action_type}</th>
											<td class="productList" colspan="3">
												<h4 class="subTitle RTMB">{$cancel_action_type}</h4>
												<ul module="Myshop_cancelProduct">
													<li>
														<div class="product">
															{$product_name} <span class="option">{$option_str}</span>
															<ul class="option" module="Myshop_optionSet">
																<li><strong class="productName">{$product_name}</strong>{$option_str}</li>
																<li><strong class="productName">{$product_name}</strong>{$option_str}</li>
															</ul>
														</div>
														<p class="quantity">
															{$quantity}<span class="RTMI">개</span>
														</p>
														<p class="price RW">{$product_price}</p>
													</li>
													<li>
														<div class="product">
															{$product_name} <span class="option">{$option_str}</span>
															<ul class="option" module="Myshop_optionSet">
																<li><strong class="productName">{$product_name}</strong>{$option_str}</li>
																<li><strong class="productName">{$product_name}</strong>{$option_str}</li>
															</ul>
														</div>
														<p class="quantity">
															{$quantity}<span class="RTMI">개</span>
														</p>
														<p class="price RW">{$product_price}</p>
													</li>
												</ul>
											</td>
										</tr>
										<tr class="{$exchange_action_display|display}">
											<th scope="row" class="RW">{$exchange_action_type}</th>
											<td class="productList" colspan="3">
												<h4 class="subTitle RTMB">{$exchange_action_type}</h4>
												<ul module="Myshop_exchangeProduct">
													<li>
														<div class="product">
															{$product_name} <span class="option">{$option_str}</span>
															<ul class="option" module="Myshop_optionSet">
																<li><strong class="productName">{$product_name}</strong>{$option_str}</li>
																<li><strong class="productName">{$product_name}</strong>{$option_str}</li>
															</ul>
														</div>
														<p class="quantity">
															{$quantity}<span class="RTMI">개</span>
														</p>
														<p class="price RW">{$product_price}</p>
													</li>
													<li>
														<div class="product">
															{$product_name} <span class="option">{$option_str}</span>
															<ul class="option" module="Myshop_optionSet">
																<li><strong class="productName">{$product_name}</strong>{$option_str}</li>
																<li><strong class="productName">{$product_name}</strong>{$option_str}</li>
															</ul>
														</div>
														<p class="quantity">
															{$quantity}<span class="RTMI">개</span>
														</p>
														<p class="price RW">{$product_price}</p>
													</li>
												</ul>
											</td>
										</tr>
										<tr>
											<th scope="row">신청일</th>
											<td colspan="3">{$request_date}</td>
										</tr>
										<tr module="Myshop_Csaddinfo">
											<th scope="row">{$cs_add_info_title}</th>
											<td colspan="3">{$cs_add_info_value}</td>
										</tr>
										<tr class="{$cs_shipfee_display|display}">
											<th scope="row">{$cs_shipfee_label}</th>
											<td colspan="3">{$cs_shipfee_paid_by} / {$cs_shipfee} /
												{$cs_shipfee_paymethod}</td>
										</tr>
										<tr>
											<th scope="row">환불예정금액</th>
											<td colspan="3">환불예정금액은 판매자가 접수처리 완료 후 확인할 수 있습니다.<span
												class="gBlank5 {$refund_exchange_comment_display|display}">교환상품에
													따라 추가결제금액이 발생할 수 있습니다.</span></td>
										</tr>
										<tr class="{$refund_account_display|display}">
											<th scope="row">환불계좌</th>
											<td colspan="3">[{$bank_name}] {$bank_acc_no} 예금주 :
												{$bank_acc_owner} <a href="#none"
												onclick="{$action_bank_acc_change}"
												class="btnNormal sizeS {$bank_acc_change_display|display}">환불계좌변경</a>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>

					<div class="ec-base-fold theme1 gBottomLine selected eToggle"
						module="Myshop_OrderHistoryDetailRefundNew">
						<div class="title">
							<h3>환불정보</h3>
						</div>
						<div class="contents">
							<div class="ec-base-table">
								<table border="1">
									<caption>환불정보</caption>
									<colgroup>
										<col style="width: 170px" />
										<col style="width: auto" />
										<col style="width: 120px" class="RW" />
										<col style="width: 150px" class="RW" />
									</colgroup>
									<thead class="RW">
										<tr class="ec-payment-refund-header">
											<th scope="col" class="left">구분</th>
											<th scope="col">상품정보</th>
											<th scope="col">수량</th>
											<th scope="col">상품구매금액</th>
										</tr>
									</thead>
									<tbody>
										<tr class="{$add_payment_product_display|display}">
											<th scope="row" class="RW">{$cancel_action_type}</th>
											<td class="productList" colspan="3">
												<h4 class="subTitle RTMB">{$cancel_action_type}</h4>
												<ul module="Myshop_cancelProduct">
													<li>
														<div class="product">
															{$product_name} <span class="option">{$option_str}</span>
															<ul class="option" module="Myshop_optionSet">
																<li><strong class="productName">{$product_name}</strong>{$option_str}</li>
																<li><strong class="productName">{$product_name}</strong>{$option_str}</li>
															</ul>
														</div>
														<p class="quantity">
															{$quantity}<span class="RTMI">개</span>
														</p>
														<p class="price RW">{$product_price}</p>
													</li>
													<li>
														<div class="product">
															{$product_name} <span class="option">{$option_str}</span>
															<ul class="option" module="Myshop_optionSet">
																<li><strong class="productName">{$product_name}</strong>{$option_str}</li>
																<li><strong class="productName">{$product_name}</strong>{$option_str}</li>
															</ul>
														</div>
														<p class="quantity">
															{$quantity}<span class="RTMI">개</span>
														</p>
														<p class="price RW">{$product_price}</p>
													</li>
												</ul>
											</td>
										</tr>
										<tr class="{$exchange_action_display|display}">
											<th scope="row" class="RW">{$exchange_action_type}</th>
											<td class="productList" colspan="3">
												<h4 class="subTitle RTMB">{$exchange_action_type}</h4>
												<ul module="Myshop_exchangeProduct">
													<li>
														<div class="product">
															{$product_name} <span class="option">{$option_str}</span>
															<ul class="option" module="Myshop_optionSet">
																<li><strong class="productName">{$product_name}</strong>{$option_str}</li>
																<li><strong class="productName">{$product_name}</strong>{$option_str}</li>
															</ul>
														</div>
														<p class="quantity">
															{$quantity}<span class="RTMI">개</span>
														</p>
														<p class="price RW">{$product_price}</p>
													</li>
													<li>
														<div class="product">
															{$product_name} <span class="option">{$option_str}</span>
															<ul class="option" module="Myshop_optionSet">
																<li><strong class="productName">{$product_name}</strong>{$option_str}</li>
																<li><strong class="productName">{$product_name}</strong>{$option_str}</li>
															</ul>
														</div>
														<p class="quantity">
															{$quantity}<span class="RTMI">개</span>
														</p>
														<p class="price RW">{$product_price}</p>
													</li>
												</ul>
											</td>
										</tr>
										<tr>
											<th scope="row">{$display_date_title} (처리상태)</th>
											<td colspan="3">{$display_date} <strong>({$status})</strong></td>
										</tr>
										<tr class="{$cancel_form_display|display}">
											<th scope="row">{$refund_amount_title}</th>
											<td colspan="3" class="total">상품금액 {$product_amount_org}
												<span class="amount">{$additional_amount}</span> = 합계 <strong>{$payment_amount_front_head}{$payment_amount_front}{$payment_amount_front_tail}<span
													class="{$payment_amount_ref_display|display}">{$payment_amount_back_head}{$payment_amount_back}{$payment_amount_back_tail}</span></strong>
											</td>
										</tr>
										<tr class="{$add_payment_amount_display|display}">
											<th scope="row">{$refund_amount_title}</th>
											<td colspan="3" class="total">배송비 추가결제 <strong>{$payment_amount_front_head}{$payment_amount_front}{$payment_amount_front_tail}<span
													class="{$payment_amount_ref_display|display}">{$payment_amount_back_head}{$payment_amount_back}{$payment_amount_back_tail}</span></strong></td>
										</tr>
										<tr class="{$cancel_only_shipping_amount_display|display}">
											<th scope="row">{$refund_amount_title}</th>
											<td colspan="3" class="total">배송비 <span class="amount">{$additional_amount}</span>
												= 합계 <strong>{$payment_amount_front_head}{$payment_amount_front}{$payment_amount_front_tail}<span
													class="{$payment_amount_ref_display|display}">{$payment_amount_back_head}{$payment_amount_back}{$payment_amount_back_tail}</span></strong>
											</td>
										</tr>
										<tr class="{$hold_show_ord_detail|display}">
											<th scope="row">보류 사유</th>
											<td colspan="3">{$hold_reason_customer_display|nl2br}</td>
										</tr>
										<tr>
											<th scope="row">환불수단</th>
											<td colspan="3">{$refund_paymethod}</td>
										</tr>
										<tr class="{$bank_display|display}">
											<th scope="row">환불계좌</th>
											<td colspan="3">[{$bank_name}] {$bank_acc_no} 예금주 :
												{$bank_acc_owner} <a href="#none"
												onclick="{$action_bank_acc_change}"
												class="btnNormal sizeS {$bank_acc_change_display|display}">환불계좌변경</a>
											</td>
										</tr>
										<tr class="{$additional_display|display}">
											<th scope="row">할인 및 부가결제<br />복원 내역
											</th>
											<td colspan="3">
												<ul class="coupon">
													<li class="{$coupon_display|display}">쿠폰 복원 금액 :
														{$total.price_unit_head}{$coupon_price}{$total.price_unit_tail}</li>
													<li class="{$addsale_display|display}">할인 복원 금액 :
														{$total.price_unit_head}{$addsale_price}{$total.price_unit_tail}</li>
													<li class="{$mileage_display|display}">적립금 복원 :
														{$total.price_unit_head}{$mileage_price}{$total.price_unit_tail}</li>
													<li class="{$deposit_display|display}">예치금 복원 :
														{$total.price_unit_head}{$deposit_price}{$total.price_unit_tail}</li>
													<li class="{$navermileage_display|display}">네이버마일리지
														&amp; 캐시 복원 :
														{$total.price_unit_head}{$navermileage_price}{$total.price_unit_tail}
														({$navermieage_detail})</li>
												</ul>
											</td>
										</tr>
									</tbody>

									<tbody>
										<tr class="{$add_payment_product_display|display}">
											<th scope="row" class="RW">{$cancel_action_type}</th>
											<td class="productList" colspan="3">
												<h4 class="subTitle RTMB">{$cancel_action_type}</h4>
												<ul module="Myshop_cancelProduct">
													<li>
														<div class="product">
															{$product_name} <span class="option">{$option_str}</span>
															<ul class="option" module="Myshop_optionSet">
																<li><strong class="productName">{$product_name}</strong>{$option_str}</li>
																<li><strong class="productName">{$product_name}</strong>{$option_str}</li>
															</ul>
														</div>
														<p class="quantity">
															{$quantity}<span class="RTMI">개</span>
														</p>
														<p class="price RW">{$product_price}</p>
													</li>
													<li>
														<div class="product">
															{$product_name} <span class="option">{$option_str}</span>
															<ul class="option" module="Myshop_optionSet">
																<li><strong class="productName">{$product_name}</strong>{$option_str}</li>
																<li><strong class="productName">{$product_name}</strong>{$option_str}</li>
															</ul>
														</div>
														<p class="quantity">{$quantity}</p>
														<p class="price RW">{$product_price}</p>
													</li>
												</ul>
											</td>
										</tr>
										<tr class="{$exchange_action_display|display}">
											<th scope="row" class="RW">{$exchange_action_type}</th>
											<td class="productList" colspan="3">
												<h4 class="subTitle RTMB">{$exchange_action_type}</h4>
												<ul module="Myshop_exchangeProduct">
													<li>
														<div class="product">
															{$product_name} <span class="option">{$option_str}</span>
															<ul class="option" module="Myshop_optionSet">
																<li><strong class="productName">{$product_name}</strong>{$option_str}</li>
																<li><strong class="productName">{$product_name}</strong>{$option_str}</li>
															</ul>
														</div>
														<p class="quantity">{$quantity}</p>
														<p class="price RW">{$product_price}</p>
													</li>
													<li>
														<div class="product">
															{$product_name} <span class="option">{$option_str}</span>
															<ul class="option" module="Myshop_optionSet">
																<li><strong class="productName">{$product_name}</strong>{$option_str}</li>
																<li><strong class="productName">{$product_name}</strong>{$option_str}</li>
															</ul>
														</div>
														<p class="quantity">
															{$quantity}<span class="RTMI">개</span>
														</p>
														<p class="price RW">{$product_price}</p>
													</li>
												</ul>
											</td>
										</tr>
										<tr>
											<th scope="row">{$display_date_title} (처리상태)</th>
											<td colspan="3">{$display_date} <strong>({$status})</strong></td>
										</tr>
										<tr class="{$cancel_form_display|display}">
											<th scope="row">{$refund_amount_title}</th>
											<td colspan="3" class="total">상품금액 {$product_amount_org}
												<span class="amount">{$additional_amount}</span> = 합계 : <strong>{$payment_amount_front_head}{$payment_amount_front}{$payment_amount_front_tail}<span
													class="{$payment_amount_ref_display|display}">{$payment_amount_back_head}{$payment_amount_back}{$payment_amount_back_tail}</span></strong>
											</td>
										</tr>
										<tr class="{$add_payment_amount_display|display}">
											<th scope="row">{$refund_amount_title}</th>
											<td colspan="3" class="total">배송비 추가결제 <strong>{$payment_amount_front_head}{$payment_amount_front}{$payment_amount_front_tail}<span
													class="{$payment_amount_ref_display|display}">{$payment_amount_back_head}{$payment_amount_back}{$payment_amount_back_tail}</span></strong></td>
										</tr>
										<tr class="{$cancel_only_shipping_amount_display|display}">
											<th scope="row">{$refund_amount_title}</th>
											<td colspan="3" class="total">배송비 <strong>{$payment_amount_front_head}{$payment_amount_front}{$payment_amount_front_tail}<span
													class="{$payment_amount_ref_display|display}">{$payment_amount_back_head}{$payment_amount_back}{$payment_amount_back_tail}</span></strong></td>
										</tr>
										<tr class="{$hold_show_ord_detail|display}">
											<th scope="row">보류 사유</th>
											<td colspan="3">{$hold_reason_customer_display|nl2br}</td>
										</tr>
										<tr>
											<th scope="row">환불수단</th>
											<td colspan="3">{$refund_paymethod}</td>
										</tr>
										<tr class="{$bank_display|display}">
											<th scope="row">환불계좌</th>
											<td colspan="3">[{$bank_name}] {$bank_acc_no} 예금주 :
												{$bank_acc_owner} <a href="#none"
												onclick="{$action_bank_acc_change}"
												class="btnNormal sizeS {$bank_acc_change_display|display}">환불계좌변경</a>
											</td>
										</tr>
										<tr class="{$additional_display|display}">
											<th scope="row">할인 및 부가결제<br />복원 내역
											</th>
											<td colspan="3">
												<ul class="coupon">
													<li class="{$coupon_display|display}">쿠폰 복원 금액 :
														{$total.price_unit_head}<strong>{$coupon_price}</strong>{$total.price_unit_tail}
													</li>
													<li class="{$addsale_display|display}">할인 복원 금액 :
														{$total.price_unit_head}<strong>{$addsale_price}</strong>{$total.price_unit_tail}
													</li>
													<li class="{$mileage_display|display}">적립금 복원 :
														{$total.price_unit_head}<strong>{$mileage_price}</strong>{$total.price_unit_tail}
													</li>
													<li class="{$deposit_display|display}">예치금 복원 :
														{$total.price_unit_head}<strong>{$deposit_price}</strong>{$total.price_unit_tail}
													</li>
													<li class="{$navermileage_display|display}">네이버마일리지
														&amp; 캐시 복원 : {$total.price_unit_head}<strong>{$navermileage_price}</strong>{$total.price_unit_tail}
														({$navermieage_detail})
													</li>
												</ul>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>

					<div class="ec-base-fold theme1 gBottomLine selected eToggle"
						module="Myshop_OrderHistoryDetailPaymentAdd">
						<div class="title">
							<h3>추가결제</h3>
						</div>
						<div class="contents">
							<div class="ec-base-table total">
								<table border="1">
									<caption>추가결제</caption>
									<colgroup>
										<col style="width: 170px" />
										<col style="width: auto" />
										<col style="width: 120px" class="RW" />
										<col style="width: 150px" class="RW" />
									</colgroup>
									<thead class="RW">
										<tr class="ec-payment-add-header">
											<th scope="col" class="left">구분</th>
											<th scope="col">상품정보</th>
											<th scope="col">수량</th>
											<th scope="col">상품구매금액</th>
										</tr>
									</thead>
									<tbody>
										<tr
											class="{$cancel_product_class} {$cancel_product_display|display}">
											<th scope="row" class="RW">{$sType}</th>
											<td class="productList" colspan="3">
												<h4 class="subTitle RTMB">{$sType}</h4>
												<ul module="Myshop_cancelProduct">
													<li>
														<div class="product">
															{$product_name} <span class="option">{$option_str}</span>
															<ul class="option" module="Myshop_optionSet">
																<li><strong class="productName">{$product_name}</strong>{$option_str}</li>
																<li><strong class="productName">{$product_name}</strong>{$option_str}</li>
															</ul>
														</div>
														<p class="quantity">
															{$quantity}<span class="RTMI">개</span>
														</p>
														<p class="price RW">{$product_price}</p>
													</li>
													<li>
														<div class="product">
															{$product_name} <span class="option">{$option_str}</span>
															<ul class="option" module="Myshop_optionSet">
																<li><strong class="productName">{$product_name}</strong>{$option_str}</li>
																<li><strong class="productName">{$product_name}</strong>{$option_str}</li>
															</ul>
														</div>
														<p class="quantity">
															{$quantity}<span class="RTMI">개</span>
														</p>
														<p class="price RW">{$product_price}</p>
													</li>
												</ul>
											</td>
										</tr>
										<tr
											class="{$return_shipfee_title_class} {$return_shipfee_title_display|display}">
											<th scope="row">{$shipfee_title_label}</th>
											<td colspan="3">{$shipfee_title}</td>
										</tr>
										<tr>
											<th scope="row">결제금액</th>
											<td colspan="3" class="total"><strong class="txtEm">{$total_payment_price_front_head}{$total_payment_price_front}{$total_payment_price_front_tail}
													<span class="{$total_payment_price_ref_display|display}">{$total_payment_price_back_head}{$total_payment_price_back}{$total_payment_price_back_tail}</span>
											</strong></td>
										</tr>
										<tr class="{$payer_name_area_display|display}">
											<th scope="row">결제(입금)자</th>
											<td colspan="3">{$payer_name}</td>
										</tr>
										<tr>
											<th scope="row">결제수단</th>
											<td colspan="3">{$paymethod} {$paymethod_detail}<span
												class="{$paid_display|display}">(결제완료)</span><span
												class="{$unpaid_display|display}">(<span
													class="txtWarn">결제취소</span>)
											</span>
												<ul class="{$payment_date_area_display|display}">
													<li class="{$pay_date_display|display}">결제일자 :
														{$pay_date}</li>
													<li class="{$canel_date_display|display}">취소일자 : <span
														class="txtWarn">{$canel_date}</span></li>
												</ul>
											</td>
										</tr>
									</tbody>
									<tbody>
										<tr
											class="{$cancel_product_class} {$cancel_product_display|display}">
											<th scope="row" class="RW">{$sType}</th>
											<td class="productList" colspan="3">
												<h4 class="subTitle RTMB">{$sType}</h4>
												<ul module="Myshop_cancelProduct">
													<li>
														<div class="product">
															{$product_name} <span class="option">{$option_str}</span>
															<ul class="option" module="Myshop_optionSet">
																<li><strong class="productName">{$product_name}</strong>{$option_str}</li>
																<li><strong class="productName">{$product_name}</strong>{$option_str}</li>
															</ul>
														</div>
														<p class="quantity">
															{$quantity}<span class="RTMI">개</span>
														</p>
														<p class="price RW">{$product_price}</p>
													</li>
													<li>
														<div class="product">
															{$product_name} <span class="option">{$option_str}</span>
															<ul class="option" module="Myshop_optionSet">
																<li><strong class="productName">{$product_name}</strong>{$option_str}</li>
																<li><strong class="productName">{$product_name}</strong>{$option_str}</li>
															</ul>
														</div>
														<p class="quantity">
															{$quantity}<span class="RTMI">개</span>
														</p>
														<p class="price RW">{$product_price}</p>
													</li>
												</ul>
											</td>
										</tr>
										<tr
											class="{$return_shipfee_title_class} {$return_shipfee_title_display|display}">
											<th scope="row">{$shipfee_title_label}</th>
											<td colspan="3">{$shipfee_title}</td>
										</tr>
										<tr>
											<th scope="row">결제금액</th>
											<td colspan="3" class="total"><strong class="txtEm">{$total_payment_price_front_head}{$total_payment_price_front}{$total_payment_price_front_tail}
													<span class="{$total_payment_price_ref_display|display}">{$total_payment_price_back_head}{$total_payment_price_back}{$total_payment_price_back_tail}</span>
											</strong></td>
										</tr>
										<tr class="{$payer_name_area_display|display}">
											<th scope="row">결제(입금)자</th>
											<td colspan="3">{$payer_name}</td>
										</tr>
										<tr>
											<th scope="row">결제수단</th>
											<td colspan="3">{$paymethod} {$paymethod_detail}<span
												class="{$paid_display|display}">(결제완료)</span><span
												class="{$unpaid_display|display}">(<span
													class="txtWarn">결제취소</span>)
											</span>
												<ul class="{$payment_date_area_display|display}">
													<li class="{$pay_date_display|display}">결제일자 :
														{$pay_date}</li>
													<li class="{$canel_date_display|display}">취소일자 : <span
														class="txtWarn">{$canel_date}</span></li>
												</ul>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>

					<div class="ec-base-fold theme1 gBottomLine selected eToggle">
						<div class="title {$delivery_info_display|display}">
							<h3>배송지정보</h3>
						</div>
						<div class="contents">
							<div class="ec-base-table {$delivery_info_display|display}">
								<table border="1">
									<caption>배송지정보</caption>
									<colgroup>
										<col class="colOrder" />
										<col style="width: auto" />
									</colgroup>
									<tbody>
										<tr class="{$delivery.receive_info_display|display}">
											<th scope="row">수령지</th>
											<td><strong>{$delivery.store_name}</strong>
												<ul class="list">
													<li>- 주소 : {$delivery.store_receive_addr}</li>
													<li>- 전화번호 : {$delivery.store_main_phone}</li>
													<li>- 영업시간 : {$delivery.store_office_hour}</li>
													<li>- 수령 가능일 : {$delivery.store_receive_period}</li>
													<li>- 수령지 안내 : {$delivery.store_receive_info}</li>
												</ul>
												<div
													class="map {$delivery.store_receive_map_display|display}">
													<p>* 약도</p>
													{$delivery.store_receive_map}
												</div></td>
										</tr>
										<tr>
											<th scope="row">받으시는분</th>
											<td>{$delivery.name}</td>
										</tr>
										<tr class="{$delivery.english_name_display|display}">
											<th scope="row">영문이름</th>
											<td>{$delivery.english_name}</td>
										</tr>
										<tr class="{$delivery.pron_name_display|display}">
											<th scope="row">이름(발음기호)</th>
											<td>{$delivery.pron_name}</td>
										</tr>
										<tr class="{$delivery.country_name_display|display}">
											<th scope="row">국가</th>
											<td>{$delivery.country_name}</td>
										</tr>
										<tr class="{$delivery.rzipcode_display|display}">
											<th scope="row">우편번호</th>
											<td>{$delivery.rzipcode} <span
												class="{$delivery.receiver_update_button_display|display}">
													<a href="#none"
													onclick="{$delivery.action_receiver_update_button}"
													class="btnNormal sizeS gIndent10">배송지 변경</a>
											</span>
											</td>
										</tr>
										<tr class="{$delivery.raddr_display|display}">
											<th scope="row">주소</th>
											<td>{$delivery.raddr}</td>
										</tr>
										<tr class="{$delivery.si_gun_do_display|display}">
											<th scope="row">도시</th>
											<td>{$delivery.si_gun_do}</td>
										</tr>
										<tr class="{$delivery.ju_do_display|display}">
											<th scope="row">주/지방</th>
											<td>{$delivery.ju_do}</td>
										</tr>
										<tr>
											<th scope="row">일반전화</th>
											<td>{$delivery.rphone_1}</td>
										</tr>
										<tr>
											<th scope="row">휴대전화</th>
											<td>{$delivery.rphone_2}</td>
										</tr>
										<tr>
											<th scope="row">배송메시지</th>
											<td>{$delivery.message}</td>
										</tr>
										<tr class="{$hope_shipping_date_display|display}">
											<th scope="row">희망 배송일</th>
											<td>{$delivery.hope_shipping_date}</td>
										</tr>
										<tr class="{$hope_shipping_time_display|display}">
											<th scope="row">희망 배송시간</th>
											<td>{$delivery.hope_shipping_time}</td>
										</tr>
										<tr class="{$delivery.sc_display|display}">
											<th scope="row">희망배송업체/방식</th>
											<td>{$delivery.sc_name}</td>
										</tr>
										<tr class="{$delivery.store_receive_period_display|display}">
											<th scope="row">수령가능일</th>
											<td>{$delivery.store_receive_period}</td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="title {$delivery_info_list_display|display}">
								<h3>배송지정보</h3>
							</div>
							<div
								class="ec-base-table multiDelivery {$delivery_info_list_display|display}">
								<table border="1">
									<caption>배송지정보</caption>
									<colgroup>
										<col style="width: 60px" />
										<col style="width: 400px" />
										<col style="width: 92px" />
										<col style="width: auto" />
										<col style="width: 60px" />
									</colgroup>
									<thead>
										<tr>
											<th scope="col">No.</th>
											<th scope="col">배송지정보</th>
											<th scope="col" colspan="2">상품정보</th>
											<th scope="col">수량</th>
										</tr>
									</thead>
									<tbody module="Myshop_DeliveryList">
										<tr>
											<th {$rowspan} scope="row"
												class="center {$delivery_code_column_display|display}">{$no}</th>
											<td
												{$rowspan} class="top {$delivery_code_column_display|display}">
												<ul class="list {$receive_info_display|display}">
													<li>- 수령지 : {$store_name}</li>
													<li>- 주소 : {$store_receive_addr}</li>
													<li>- 전화번호 : {$store_main_phone}</li>
													<li>- 영업시간 : {$store_office_hour}</li>
													<li>- 수령 가능일 : {$store_receive_period}</li>
													<li>- 수령지 안내 : {$store_receive_info}</li>
												</ul>
												<ul class="list">
													<li>- 받으시는분 : {$name}</li>
													<li class="{$english_name_display|display}">- 영문이름 :
														{$english_name}</li>
													<li class="{$pron_name_display|display}">- 이름(발음기호) :
														{$pron_name}</li>
													<li class="{$country_name_display|display}">- 국가 :
														{$country_name}</li>
													<li class="{$rzipcode_display|display}">- 우편번호 :
														{$rzipcode}</li>
													<li class="{$raddr_display|display}">- 주소 : {$raddr}</li>
													<li class="{$si_gun_do_display|display}">- 도시 :
														{$si_gun_do}</li>
													<li class="{$ju_do_display|display}">- 주/지방 : {$ju_do}</li>
													<li>- 일반전화 : {$rphone_1}</li>
													<li>- 휴대전화 : {$rphone_2}</li>
													<li>- 배송메시지 : {$message}</li>
													<li class="{$hope_shipping_date_display|display}">- 희망
														배송일 : {$hope_shipping_date}</li>
													<li class="{$hope_shipping_time_display|display}">- 희망
														배송시간 : {$hope_shipping_time}</li>
													<li class="{$sc_display|display}">- 희망배송업체/방식 :
														{$sc_name}</li>
												</ul>
												<p class="{$receiver_update_button_display|display}">
													<a href="#none" onclick="{$action_receiver_update_button}"
														class="btnNormal sizeS">배송지 변경</a>
												</p>
											</td>
											<td class="thumb"><a
												href="/product/detail.html{$param_product}"><img
													src="{$thumbnail}" alt="{$product_name_alt}"
													onerror="this.src='//img.echosting.cafe24.com/thumb/img_product_small.gif';" /></a></td>
											<td class="left"><strong class="name">{$product_name_link}</strong>
												<div class="option {$option_display|display}">{$option_str}</div>
												<ul class="option" module="Myshop_optionSet">
													<li><strong>{$product_name}</strong>{$option_str}
														({$qty}개)</li>
													<li><strong>{$product_name}</strong>{$option_str}
														({$qty}개)</li>
												</ul>
												<p class="gBlank5 {$card_installment_display|display}">무이자할부
													상품</p></td>
											<td>{$quantity}</td>
										</tr>
										<tr>
											<th {$rowspan} scope="row"
												class="center {$delivery_code_column_display|display}">{$no}</th>
											<td
												{$rowspan} class="top {$delivery_code_column_display|display}">
												<ul class="list {$receive_info_display|display}">
													<li>- 수령지 : {$store_name}</li>
													<li>- 주소 : {$store_receive_addr}</li>
													<li>- 전화번호 : {$store_main_phone}</li>
													<li>- 영업시간 : {$store_office_hour}</li>
													<li>- 수령 가능일 : {$store_receive_period}</li>
													<li>- 수령지 안내 : {$store_receive_info}</li>
												</ul>
												<ul class="list">
													<li>- 받으시는분 : {$name}</li>
													<li class="{$english_name_display|display}">- 영문이름 :
														{$english_name}</li>
													<li class="{$pron_name_display|display}">- 이름(발음기호) :
														{$pron_name}</li>
													<li class="{$country_name_display|display}">- 국가 :
														{$country_name}</li>
													<li class="{$rzipcode_display|display}">- 우편번호 :
														{$rzipcode}</li>
													<li class="{$raddr_display|display}">- 주소 : {$raddr}</li>
													<li class="{$si_gun_do_display|display}">- 도시 :
														{$si_gun_do}</li>
													<li class="{$ju_do_display|display}">- 주/지방 : {$ju_do}</li>
													<li>- 일반전화 : {$rphone_1}</li>
													<li>- 휴대전화 : {$rphone_2}</li>
													<li>- 배송메시지 : {$message}</li>
													<li class="{$hope_shipping_date_display|display}">- 희망
														배송일 : {$hope_shipping_date}</li>
													<li class="{$hope_shipping_time_display|display}">- 희망
														배송시간 : {$hope_shipping_time}</li>
													<li class="{$sc_display|display}">- 희망배송업체/방식 :
														{$sc_name}</li>
												</ul>
												<p class="{$receiver_update_button_display|display}">
													<a href="#none" onclick="{$action_receiver_update_button}"
														class="btnNormal sizeS">배송지 변경</a>
												</p>
											</td>
											<td class="thumb"><a
												href="/product/detail.html{$param_product}"><img
													src="{$thumbnail}" alt="{$product_name_alt}"
													onerror="this.src='//img.echosting.cafe24.com/thumb/img_product_small.gif';" /></a></td>
											<td class="left"><strong class="name">{$product_name_link}</strong>
												<div class="option {$option_display|display}">{$option_str}</div>
												<ul class="option" module="Myshop_optionSet">
													<li><strong>{$product_name}</strong>{$option_str}
														({$qty}개)</li>
													<li><strong>{$product_name}</strong>{$option_str}
														({$qty}개)</li>
												</ul>
												<p class="gBlank5 {$card_installment_display|display}">무이자할부
													상품</p></td>
											<td>{$quantity}</td>
										</tr>
									</tbody>
								</table>
							</div>

						</div>
					</div>

					<div
						class="ec-base-fold theme1 gBottomLine selected eToggle {$ordadd.display|display}">
						<div class="title">
							<h3>추가정보</h3>
						</div>
						<div class="contents">
							<div class="ec-base-table">
								<table border="1">
									<caption>추가 정보</caption>
									<colgroup>
										<col class="colOrder" />
										<col style="width: auto" />
									</colgroup>
									<tbody module="Myshop_ordadd">
										<tr>
											<th scope="row">{$title}</th>
											<td>{$content}</td>
										</tr>
										<tr>
											<th scope="row">{$title}</th>
											<td>{$content}</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>

					<div
						class="ec-base-fold theme1 gBottomLine selected eToggle {$pickup_info_display|display}">
						<div class="title">
							<h3>수거신청 정보</h3>
						</div>
						<div class="contents">
							<div class="ec-base-table"
								module="Myshop_OrderHistoryDetailPickup">
								<table border="1">
									<caption>수거신청 정보</caption>
									<colgroup>
										<col style="width: 170px" />
										<col style="width: auto" />
										<col style="width: 120px" class="RW" />
										<col style="width: 150px" class="RW" />
									</colgroup>
									<thead class="RW">
										<tr>
											<th scope="col" class="left">구분</th>
											<th scope="col" class="center">상품정보</th>
											<th scope="col" class="center">수량</th>
											<th scope="col" class="center">상품구매금액</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th scope="row" class="RW">{$cancel_action_type}</th>
											<td class="productList" colspan="3">
												<h4 class="subTitle RTMB">{$cancel_action_type}</h4>
												<ul module="Myshop_cancelProduct">
													<li>
														<div class="product">
															{$product_name} <span class="option">{$option_str}</span>
															<ul class="option" module="Myshop_optionSet">
																<li><strong class="productName">{$product_name}</strong>{$option_str}</li>
																<li><strong class="productName">{$product_name}</strong>{$option_str}</li>
															</ul>
														</div>
														<p class="quantity">
															{$quantity}<span class="RTMI">개</span>
														</p>
														<p class="price RW">{$product_price}</p>
													</li>
													<li>
														<div class="product">
															{$product_name} <span class="option">{$option_str}</span>
															<ul class="option" module="Myshop_optionSet">
																<li><strong class="productName">{$product_name}</strong>{$option_str}</li>
																<li><strong class="productName">{$product_name}</strong>{$option_str}</li>
															</ul>
														</div>
														<p class="quantity">
															{$quantity}<span class="RTMI">개</span>
														</p>
														<p class="price RW">{$product_price}</p>
													</li>
												</ul>
											</td>
										</tr>
										<tr>
											<th scope="row">수거신청 여부</th>
											<td colspan="3">{$is_pickup}</td>
										</tr>
										<tr class="{$pickup_display|display}">
											<th scope="row">수거지 주소</th>
											<td colspan="3">{$pickup_name}<br /> {$pickup_addr}<br />
												{$pickup_cell}
											</td>
										</tr>
									</tbody>
									<tbody>
										<tr>
											<th scope="row" class="RW">{$cancel_action_type}</th>
											<td class="productList" colspan="3">
												<h4 class="subTitle RTMB">{$cancel_action_type}</h4>
												<ul module="Myshop_cancelProduct">
													<li>
														<div class="product">
															{$product_name} <span class="option">{$option_str}</span>
															<ul class="option" module="Myshop_optionSet">
																<li><strong class="productName">{$product_name}</strong>{$option_str}</li>
																<li><strong class="productName">{$product_name}</strong>{$option_str}</li>
															</ul>
														</div>
														<p class="quantity">
															{$quantity}<span class="RTMI">개</span>
														</p>
														<p class="price RW">{$product_price}</p>
													</li>
													<li>
														<div class="product">
															{$product_name} <span class="option">{$option_str}</span>
															<ul class="option" module="Myshop_optionSet">
																<li><strong class="productName">{$product_name}</strong>{$option_str}</li>
																<li><strong class="productName">{$product_name}</strong>{$option_str}</li>
															</ul>
														</div>
														<p class="quantity">
															{$quantity}<span class="RTMI">개</span>
														</p>
														<p class="price RW">{$product_price}</p>
													</li>
												</ul>
											</td>
										</tr>
										<tr>
											<th scope="row">수거신청 여부</th>
											<td colspan="3">{$is_pickup}</td>
										</tr>
										<tr class="{$pickup_display|display}">
											<th scope="row">수거지 주소</th>
											<td colspan="3">{$pickup_name}<br /> {$pickup_addr}<br />
												{$pickup_cell}
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>

					<div
						class="ec-base-fold theme1 gBottomLine selected eToggle {$customer_msg_display|display}">
						<div class="title">
							<h3>고객알림</h3>
						</div>
						<div class="contents">
							<p class="customer">{$customer_msg}</p>
						</div>
					</div>

					<div class="ec-base-button">
						<span class="gRight"> <a href="#none"
							onclick="{$action_issue_cash}"
							class="btnNormal sizeS {$issue_cash_display|display}">현금영수증
								신청</a> <a href="#none" onclick="{$action_print_pg_cash}"
							class="btnNormal sizeS RW {$print_pg_cash_display|display}">현금영수증전표
								인쇄</a> <a href="#none" onclick="{$action_issue_tax}"
							class="btnNormal sizeS {$issue_tax_display|display}">세금계산서 신청</a>
							<a href="#none" onclick="{$action_print_tax}"
							class="btnNormal sizeS RW {$print_tax_display|display}">세금계산서
								인쇄</a> <a href="#none" onclick="{$action_print_spec}"
							class="btnNormal sizeS RW {$print_spec_display|display}">거래명세서
								인쇄</a> <a href="#none" onclick="{$action_print_pg_card}"
							class="btnNormal sizeS RW {$print_pg_card_display|display}">카드매출전표
								인쇄</a> <a href="#none" onclick="{$action_select_gift}"
							class="btnNormal sizeS RW {$select_gift_display|display}">사은품
								선택</a> <a href="#none" onclick="{$action_print_store}"
							class="btnNormal sizeS RW {$delivery.print_store_display|display}">수령지정보
								인쇄</a>
						</span>
					</div>

					<div class="ec-base-button gBottom">
						<span class="gRight"> <a
							href="/myshop/order/list.html{$param_list}"
							class="btnSubmitFix sizeM">주문목록보기</a>
						</span>
					</div>

					<div class="ec-base-help">
						<h3>이용안내</h3>
						<div class="inner">
							<h4>신용카드매출전표 발행 안내</h4>
							<p>신용카드 결제는 사용하는 PG사 명의로 발행됩니다.</p>
							<h4>세금계산서 발행 안내</h4>
							<ul>
								<li>부가가치세법 제 54조에 의거하여 세금계산서는 배송완료일로부터 다음달 10일까지만 요청하실 수
									있습니다.</li>
								<li>세금계산서는 사업자만 신청하실 수 있습니다.</li>
								<li>배송이 완료된 주문에 한하여 세금계산서 발행신청이 가능합니다.</li>
								<li>[세금계산서 신청]버튼을 눌러 세금계산서 신청양식을 작성한 후 팩스로 사업자등록증사본을 보내셔야
									세금계산서 발생이 가능합니다.</li>
								<li>[세금계산서 인쇄]버튼을 누르면 발행된 세금계산서를 인쇄하실 수 있습니다.</li>
								<li>세금계산서는 실결제금액에 대해서만 발행됩니다.({$mileage_name}과 할인금액은 세금계산서
									금액에서 제외됨)</li>
							</ul>
							<h4>부가가치세법 변경에 따른 신용카드매출전표 및 세금계산서 변경 안내</h4>
							<ul>
								<li>변경된 부가가치세법에 의거, 2004.7.1 이후 신용카드로 결제하신 주문에 대해서는 세금계산서
									발행이 불가하며<br />신용카드매출전표로 부가가치세 신고를 하셔야 합니다.(부가가치세법 시행령 57조)
								</li>
								<li>상기 부가가치세법 변경내용에 따라 신용카드 이외의 결제건에 대해서만 세금계산서 발행이 가능함을
									양지하여 주시기 바랍니다.</li>
								</ol>
								<h4>현금영수증 이용안내</h4>
								<ul>
									<li>현금영수증은 1원 이상의 현금성거래(무통장입금, 실시간계좌이체, 에스크로,
										{$deposit_name})에 대해 발행이 됩니다.</li>
									<li>현금영수증 발행 금액에는 배송비는 포함되고, {$mileage_name}사용액은 포함되지
										않습니다.</li>
									<li>발행신청 기간제한 현금영수증은 입금확인일로 부터 48시간안에 발행을 해야 합니다.</li>
									<li>현금영수증 발행 취소의 경우는 시간 제한이 없습니다. (국세청의 정책에 따라 변경 될 수
										있습니다.)</li>
									<li>현금영수증이나 세금계산서 중 하나만 발행 가능 합니다.</li>
									</ol>
						</div>
					</div>
				</div>

				<!--@import(/myshop/myshop_main.html)-->

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