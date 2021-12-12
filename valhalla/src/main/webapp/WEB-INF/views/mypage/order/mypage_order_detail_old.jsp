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

			<div class="titleArea">
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

				<div class="myshopArea">
					<div class="titleArea titleArea--middle">
						<h3>주문정보</h3>
					</div>

					<div class="ec-base-table">
						<table border="1">
							<caption>주문 정보</caption>
							<colgroup>
								<col style="width: 160px" />
								<col style="width: auto" />
							</colgroup>
							<tbody>
								<tr>
									<th scope="row">주문번호</th>
									<td>{$order.order_id}</td>
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
									<td>{$order.status}</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>

				<div class="myshopArea">
					<div class="titleArea titleArea--middle">
						<h3>결제정보</h3>
					</div>
					<div class="ec-base-table">
						<table border="1">
							<caption>결제정보</caption>
							<colgroup>
								<col style="width: 160px" />
								<col style="width: auto" />
							</colgroup>
							<tbody>
								<tr class="sum">
									<th scope="row">총 주문금액</th>
									<td>{$total.price_unit_head}<strong class="txt14">{$total.total_order_price}</strong>{$total.price_unit_tail}
									</td>
								</tr>
							</tbody>
							<tbody class="{$total.total_addpay_summary_display|display}">
								<tr class="sum">
									<th scope="row">총 부가결제금액</th>
									<td>{$total.price_unit_head}<strong class="txt14">{$total.total_addpay_price}</strong>{$total.price_unit_tail}
									</td>
								</tr>
								<tr class="{$total.mileage_display|display}">
									<th scope="row">적립금</th>
									<td>{$total.price_unit_head}{$total.mileage_used}{$total.price_unit_tail}</td>
								</tr>
								<tr class="{$total.deposit_display|display}">
									<th scope="row">예치금</th>
									<td>{$total.price_unit_head}{$total.deposit_used}{$total.price_unit_tail}</td>
								</tr>
							</tbody>
							<tbody class="{$total.total_addsale_summary_display|display}">
								<tr class="sum">
									<th scope="row">총 할인금액</th>
									<td>{$total.price_unit_head}<strong class="txt14">{$total.total_addsale_price}</strong>{$total.price_unit_tail}
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="ec-base-table total">
						<table border="1">
							<caption>결제정보</caption>
							<colgroup>
								<col style="width: 160px" />
								<col style="width: auto" />
							</colgroup>
							<tbody>
								<tr class="sum">
									<th scope="row">총 결제금액</th>
									<td><span class="txtEm">{$total.price_unit_head}<strong
											class="txt18">{$payment.price}</strong>{$total.price_unit_tail}
									</span></td>
								</tr>
								<tr class="{$payment.paymethod_display|display}">
									<th scope="row">결제수단</th>
									<td><strong>{$payment.paymethod}</strong>
										<p>
											{$payment.paymethod_detail} <a target="_blank"
												href="{$payment.bank_url}"
												class="btnNormal {$payment.display_banking|display}">인터넷뱅킹
												바로가기</a>
										</p></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>

				<div class="myshopArea">
					<div class="titleArea titleArea--middle">
						<h3>주문 상품 정보</h3>
					</div>

					<div class="ec-base-table typeList">
						<table border="1" class="{$basic_display|display}">
							<caption>기본배송</caption>
							<colgroup>
								<col style="width: 92px" />
								<col style="width: auto" />
								<col style="width: 60px" />
								<col style="width: 100px" />
								<col style="width: 95px" />
								<col style="width: 110px" />
							</colgroup>
							<thead>
								<tr>
									<th scope="col">이미지</th>
									<th scope="col">상품정보</th>
									<th scope="col">수량</th>
									<th scope="col">상품구매금액</th>
									<th scope="col">배송구분</th>
									<th scope="col">주문처리상태</th>
								</tr>
							</thead>
							<tfoot class="right">
								<tr>
									<td colspan="6"><span class="gLeft">[기본배송]</span> 상품구매금액 <strong>{$basic.product_price}</strong>
										+ 배송비 {$basic.ship_fee} + 지역별배송비 {$basic.special_ship_fee} =
										합계 : <strong class="txtEm gIndent10"><span
											class="txt18">{$basic.total_price}</span></strong></td>
								</tr>
							</tfoot>
							<tbody module="Myshop_OrderHistoryDetailBasic" class="center">
								<tr>
									<td class="thumb"><a
										href="/product/detail.html{$param_product}"><img
											src="{$thumbnail}" alt="{$name}"
											onerror="this.src='//img.echosting.cafe24.com/thumb/img_product_small.gif';" /></a></td>
									<td class="left"><a
										href="/product/detail.html{$param_product}"><strong>{$name}</strong></a>
										<div class="option">
											{$opt_str} {$option_add} <span
												class="{$opt_price_display|display}">(+{$opt_price}{$price_unit_tail})</span>
										</div>
										<p class="{$review_button_display|display}">
											<a href="/board/product/write.html{$param_postscript}"
												class="btnSubmitFix">구매후기</a>
										</p></td>
									<td>{$quantity}</td>
									<td><strong>{$price}</strong></td>
									<td><span class="txtInfo">{$type}</span></td>
									<td>
										<p class="txtEm">{$status}</p>
										<p class="txtEm">{$shipping_info}</p>
										<p>
											<a href="#none" onclick="{$action_track}"
												class="btnNormalFix {$track_display|display}">배송추적<a>
										</p>
									</td>
								</tr>
								<tr>
									<td class="thumb"><a
										href="/product/detail.html{$param_product}"><img
											src="{$thumbnail}" alt="{$name}"
											onerror="this.src='//img.echosting.cafe24.com/thumb/img_product_small.gif';" /></a></td>
									<td class="left"><a
										href="/product/detail.html{$param_product}"><strong>{$name}</strong></a>
										<div class="option">
											{$opt_str} {$option_add} <span
												class="{$opt_price_display|display}">(+{$opt_price}{$price_unit_tail})</span>
										</div>
										<p class="{$review_button_display|display}">
											<a href="/board/product/write.html{$param_postscript}"
												class="btnSubmitFix">구매후기</a>
										</p></td>
									<td>{$quantity}</td>
									<td><strong>{$price}</strong></td>
									<td><span class="txtInfo">{$type}</span></td>
									<td>
										<p class="txtEm">{$status}</p>
										<p class="txtEm">{$shipping_info}</p>
										<p>
											<a href="#none" onclick="{$action_track}"
												class="btnNormalFix {$track_display|display}">배송추적<a>
										</p>
									</td>
								</tr>
							</tbody>
						</table>
					</div>

					<div class="ec-base-table typeList">
						<table border="1" class="{$individual_display|display}">
							<caption>개별배송</caption>
							<colgroup>
								<col style="width: 92px" />
								<col style="width: auto" />
								<col style="width: 60px" />
								<col style="width: 100px" />
								<col style="width: 95px" />
								<col style="width: 110px" />
							</colgroup>
							<thead>
								<tr>
									<th scope="col">이미지</th>
									<th scope="col">상품정보</th>
									<th scope="col">수량</th>
									<th scope="col">상품구매금액</th>
									<th scope="col">배송구분</th>
									<th scope="col">주문처리상태</th>
								</tr>
							</thead>
							<tfoot class="right">
								<tr>
									<td colspan="6"><span class="gLeft">[개별배송]</span> 상품구매금액 <strong>{$individual.product_price}</strong>
										+ 배송비 {$individual.ship_fee} +
										지역별배송비{$individual.special_ship_fee} = 합계 : <strong
										class="total"><span>{$individual.total_price}</span></strong></td>
								</tr>
							</tfoot>
							<tbody module="Myshop_OrderHistoryDetailIndividual"
								class="center">
								<tr>
									<td class="thumb"><a
										href="/product/detail.html{$param_product}"><img
											src="{$thumbnail}" alt="{$name}"
											onerror="this.src='//img.echosting.cafe24.com/thumb/img_product_small.gif';" /></a></td>
									<td class="left"><a
										href="/product/detail.html{$param_product}"><strong>{$name}</strong></a>
										<div class="option">
											{$opt_str} {$option_add} <span
												class="{$opt_price_display|display}">(+{$opt_price}{$price_unit_tail})</span>
										</div>
										<p class="{$review_button_display|display}">
											<a href="/board/product/write.html{$param_postscript}"
												class="btnSubmitFix">구매후기</a>
										</p></td>
									<td>{$quantity}</td>
									<td><strong>{$price}</strong></td>
									<td><span class="txtInfo">{$type}</span></td>
									<td>
										<p class="txtEm">{$status}</p>
										<p class="txtEm">{$shipping_info}</p>
										<p>
											<a href="#none" onclick="{$action_track}"
												class="btnNormalFix {$track_display|display}">배송추적<a>
										</p>
									</td>
								</tr>
								<tr>
									<td class="thumb"><a
										href="/product/detail.html{$param_product}"><img
											src="{$thumbnail}" alt="{$name}"
											onerror="this.src='//img.echosting.cafe24.com/thumb/img_product_small.gif';" /></a></td>
									<td class="left"><a
										href="/product/detail.html{$param_product}"><strong>{$name}</strong></a>
										<div class="option">
											{$opt_str} {$option_add} <span
												class="{$opt_price_display|display}">(+{$opt_price}{$price_unit_tail})</span>
										</div>
										<p class="{$review_button_display|display}">
											<a href="/board/product/write.html{$param_postscript}"
												class="btnSubmitFix">구매후기</a>
										</p></td>
									<td>{$quantity}</td>
									<td><strong>{$price}</strong></td>
									<td><span class="txtInfo">{$type}</span></td>
									<td>
										<p class="txtEm">{$status}</p>
										<p class="txtEm">{$shipping_info}</p>
										<p>
											<a href="#none" onclick="{$action_track}"
												class="btnNormalFix {$track_display|display}">배송추적<a>
										</p>
									</td>
								</tr>
							</tbody>
						</table>
					</div>

					<div class="ec-base-table typeList">
						<table border="1" class="{$oversea_display|display}">
							<caption>해외배송</caption>
							<colgroup>
								<col style="width: 92px" />
								<col style="width: auto" />
								<col style="width: 60px" />
								<col style="width: 100px" />
								<col style="width: 95px" />
								<col style="width: 110px" />
							</colgroup>
							<thead>
								<tr>
									<th scope="col">이미지</th>
									<th scope="col">상품정보</th>
									<th scope="col">수량</th>
									<th scope="col">상품구매금액</th>
									<th scope="col">배송구분</th>
									<th scope="col">주문처리상태</th>
								</tr>
							</thead>
							<tfoot class="right">
								<tr>
									<td colspan="6"><span class="gLeft">[해외배송]</span> 상품구매금액 <strong>{$oversea.product_price}</strong>
										+ 배송비 {$oversea.ship_fee} + 지역별배송비 {$oversea.special_ship_fee}
										= 합계 : <strong class="total"><span>{$oversea.total_price}</span></strong></td>
								</tr>
							</tfoot>
							<tbody module="Myshop_OrderHistoryDetailOversea" class="center">
								<tr>
									<td class="thumb"><a
										href="/product/detail.html{$param_product}"><img
											src="{$thumbnail}" alt="{$name}"
											onerror="this.src='//img.echosting.cafe24.com/thumb/img_product_small.gif';" /></a></td>
									<td class="left"><a
										href="/product/detail.html{$param_product}"><strong>{$name}</strong></a>
										<div class="option">
											{$opt_str} {$option_add} <span
												class="{$opt_price_display|display}">(+{$opt_price}{$price_unit_tail})</span>
										</div>
										<p class="{$review_button_display|display}">
											<a href="/board/product/write.html{$param_postscript}"
												class="btnSubmitFix">구매후기</a>
										</p></td>
									<td>{$quantity}</td>
									<td><strong>{$price}</strong></td>
									<td><span class="txtInfo">{$type}</span></td>
									<td>
										<p class="txtEm">{$status}</p>
										<p class="txtEm">{$shipping_info}</p>
										<p>
											<a href="#none" onclick="{$action_track}"
												class="btnNormalFix {$track_display|display}">배송추적<a>
										</p>
									</td>
								</tr>
								<tr>
									<td class="thumb"><a
										href="/product/detail.html{$param_product}"><img
											src="{$thumbnail}" alt="{$name}"
											onerror="this.src='//img.echosting.cafe24.com/thumb/img_product_small.gif';" /></a></td>
									<td class="left"><a
										href="/product/detail.html{$param_product}"><strong>{$name}</strong></a>
										<div class="option">
											{$opt_str} {$option_add} <span
												class="{$opt_price_display|display}">(+{$opt_price}{$price_unit_tail})</span>
										</div>
										<p class="{$review_button_display|display}">
											<a href="/board/product/write.html{$param_postscript}"
												class="btnSubmitFix">구매후기</a>
										</p></td>
									<td>{$quantity}</td>
									<td><strong>{$price}</strong></td>
									<td><span class="txtInfo">{$type}</span></td>
									<td>
										<p class="txtEm">{$status}</p>
										<p class="txtEm">{$shipping_info}</p>
										<p>
											<a href="#none" onclick="{$action_track}"
												class="btnNormalFix {$track_display|display}">배송추적<a>
										</p>
									</td>
								</tr>
							</tbody>
						</table>
					</div>

					<div class="ec-base-table typeList">
						<table border="1" class="{$gift_display|display}">
							<caption>사은품</caption>
							<colgroup>
								<col style="width: 92px" />
								<col style="width: auto" />
								<col style="width: 60px" />
								<col style="width: 100px" />
								<col style="width: 95px" />
								<col style="width: 110px" />
							</colgroup>
							<thead>
								<tr>
									<th scope="col">이미지</th>
									<th scope="col">상품정보</th>
									<th scope="col">수량</th>
									<th scope="col">상품구매금액</th>
									<th scope="col">배송구분</th>
									<th scope="col">주문처리상태</th>
								</tr>
							</thead>
							<tfoot class="right">
								<tr>
									<td colspan="6"><span class="gLeft">[사은품]</span> 상품구매금액 <strong>0</strong>
										+ 배송비 0 + 지역별배송비 0 = 합계 : <strong class="total">0</strong></td>
								</tr>
							</tfoot>
							<tbody module="Myshop_OrderHistoryDetailGift" class="center">
								<tr>
									<td class="thumb"><img src="{$thumbnail}" alt="{$name}"
										onerror="this.src='//img.echosting.cafe24.com/thumb/img_product_small.gif';" /></td>
									<td class="left">{$name}
										<div class="option">
											{$opt_str} {$option_add} <span
												class="{$opt_price_display|display}">(+{$opt_price}{$price_unit_tail})</span>
										</div>
									</td>
									<td>{$quantity}</td>
									<td><strong>{$price}</strong></td>
									<td><span class="txtInfo">{$type}</span></td>
									<td>
										<p class="txtEm">{$status}</p>
										<p class="txtEm">{$shipping_info}</p>
										<p>
											<a href="#none" onclick="{$action_track}"
												class="btnNormalFix {$track_display|display}">배송추적<a>
										</p>
									</td>
								</tr>
								<tr>
									<td class="thumb"><img src="{$thumbnail}" alt="{$name}"
										onerror="this.src='//img.echosting.cafe24.com/thumb/img_product_small.gif';" /></td>
									<td class="left">{$name}
										<div class="option">
											{$opt_str} {$option_add} <span
												class="{$opt_price_display|display}">(+{$opt_price}{$price_unit_tail})</span>
										</div>
									</td>
									<td>{$quantity}</td>
									<td><strong>{$price}</strong></td>
									<td><span class="txtInfo">{$type}</span></td>
									<td>
										<p class="txtEm">{$status}</p>
										<p class="txtEm">{$shipping_info}</p>
										<p>
											<a href="#none" onclick="{$action_track}"
												class="btnNormalFix {$track_display|display}">배송추적<a>
										</p>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>

				<div class="myshopArea" module="Myshop_OrderHistoryDetailRefund">
					<div class="titleArea titleArea--middle">
						<h3>환불정보</h3>
					</div>
					<div class="ec-base-table">
						<table border="1">
							<caption>환불정보</caption>
							<colgroup>
								<col style="width: 160px" />
								<col style="width: auto" />
							</colgroup>
							<tbody>
								<tr>
									<th scope="row">{$payment_type}금액</th>
									<td>{$payment_amount}<span
										class="{$display_detail|display}"> = {$product_amount}
											{$additional_amount}</span></td>
								</tr>
								<tr>
									<th scope="row">결제(입금)자</th>
									<td>{$depositor}</td>
								</tr>
								<tr>
									<th scope="row">{$payment_type}수단</th>
									<td>{$payment_info_type} {$payment_info_data}</td>
								</tr>
								<tr class="{$display_reason|display}">
									<th scope="row">환불사유</th>
									<td>{$reason}</td>
								</tr>
							</tbody>
							<tbody>
								<tr>
									<th scope="row">{$payment_type}금액</th>
									<td>{$payment_amount}<span
										class="{$display_detail|display}"> = {$product_amount}
											{$additional_amount}</span></td>
								</tr>
								<tr>
									<th scope="row">결제(입금)자</th>
									<td>{$depositor}</td>
								</tr>
								<tr>
									<th scope="row">{$payment_type}수단</th>
									<td>{$payment_info_type} {$payment_info_data}</td>
								</tr>
								<tr class="{$display_reason|display}">
									<th scope="row">환불사유</th>
									<td>{$reason}</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>

				<div class="myshopArea">
					<div class="titleArea titleArea--middle">
						<h3>배송지정보</h3>
					</div>
					<div class="ec-base-table">
						<table border="1">
							<caption>배송지정보</caption>
							<colgroup>
								<col style="width: 160px" />
								<col style="width: auto" />
							</colgroup>
							<tbody>
								<tr>
									<th scope="row">받으시는분</th>
									<td>{$delivery.name}</td>
								</tr>
								<tr>
									<th scope="row">주소</th>
									<td>{$delivery.addr}</td>
								</tr>
								<tr>
									<th scope="row">연락처</th>
									<td>{$delivery.phone}</td>
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
							</tbody>
						</table>
					</div>
				</div>

				<div class="myshopArea {$customer_msg_display|display}">
					<div class="titleArea titleArea--middle">
						<h3>고객알림</h3>
					</div>
					<p class="customer">{$customer_msg}</p>
				</div>

				<div class="ec-base-button">
					<span class="gRight"> <a href="#none"
						onclick="{$action_issue_cash}"
						class="btnNormal sizeS {$issue_cash_display|display}">현금영수증 신청</a>
						<a href="#none" onclick="{$action_print_pg_cash}"
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
						class="btnNormal sizeS {$select_gift_display|display}">사은품 선택</a>
					</span>
				</div>
				<div class="ec-base-button gBottom">
					<a href="/myshop/order/list_old.html{$param_list}"
						class="btnSubmitFix sizeM">주문목록보기</a>
				</div>

				<div class="ec-base-help {$naverinfo_display|display}">
					<h3>네이버 마일리지 관련 정책안내</h3>
					<div class="inner">
						<ul>
							<li>무통장입금 주문 후 15일 이내 입급이 확인되지 않으면 네이버 마일리지 적립과 사용은 자동으로
								취소됩니다.</li>
							<li>주문한 상품을 교환할 경우 주문금액 기준으로 지급됩니다.</li>
							<li>주문한 상품을 취소하거나 반품할 경우 적립은 취소되며, 사용금액은 환불처리 됩니다.</li>
						</ul>
					</div>
				</div>
			</div>

			<div class="ec-base-help">
				<h3>이용안내</h3>
				<div class="inner">
					<h4>거래명세서 발행 안내</h4>
					<p>거래명세서는 영수증용도로도 사용이 가능합니다.</p>
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
						<li>세금계산서는 실결제금액에 대해서만 발행됩니다.(적립금과 할인금액은 세금계산서 금액에서 제외됨)</li>
					</ul>
					<h4>부가가치세법 변경에 따른 신용카드매출전표 및 세금계산서 변경 안내</h4>
					<ul>
						<li>변경된 부가가치세법에 의거, 2004.7.1 이후 신용카드로 결제하신 주문에 대해서는 세금계산서 발행이
							불가하며<br />신용카드매출전표로 부가가치세 신고를 하셔야 합니다.(부가가치세법 시행령 57조)
						</li>
						<li>상기 부가가치세법 변경내용에 따라 신용카드 이외의 결제건에 대해서만 세금계산서 발행이 가능함을 양지하여
							주시기 바랍니다.</li>
					</ul>
					<h4>현금영수증 이용안내</h4>
					<ul>
						<li>현금영수증은 1원 이상의 현금성거래(무통장입금, 실시간계좌이체, 에스크로, 예치금)에 대해 발행이
							됩니다.</li>
						<li>현금영수증 발행 금액에는 배송비는 포함되고, 적립금사용액은 포함되지 않습니다.</li>
						<li>발행신청 기간제한 현금영수증은 입금확인일로 부터 48시간안에 발행을 해야 합니다.</li>
						<li>현금영수증 발행 취소의 경우는 시간 제한이 없습니다. (국세청의 정책에 따라 변경 될 수 있습니다.)</li>
						<li>현금영수증이나 세금계산서 중 하나만 발행 가능 합니다.</li>
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