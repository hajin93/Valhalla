<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../../common/myshopwishCss.jsp"%>
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

			<div class="path">
				<span>현재 위치</span>
				<ol>
					<li><a href="/">홈</a></li>
					<li><a href="/myshop/index.html">마이쇼핑</a></li>
					<li title="현재 위치"><strong>주문내역조회</strong></li>
				</ol>
			</div>

			<div class="myshopArea">
				<div class="titleArea titleArea--myshop">
					<h2>주문내역조회</h2>
				</div>
				<div class="xans-element- xans-myshop xans-myshop-wishlist xans-record-">
					<div class="xans-element- xans-myshop xans-myshop-wishlistitem">
						<div class="ec-base-prdInfo gCheck xans-record-">
							<div class="contents">
								<div class="{$basic_display|display}">
									<div module="Myshop_OrderHistoryDetailBasic">


										<!-- 상품 한 덩어리 -->
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
														class="btnNormal sizeS {$postscript_display|display}">구매확정</a>
													<a href="#none"
														class="btnNormal sizeS {$withdraw_cancel_display|display}"
														onclick="{$action_withdraw_cancel}">주문취소</a> <a
														href="#none"
														class="btnNormal sizeS {$withdraw_exchange_display|display}"
														onclick="{$action_withdraw_exchange}">교환신청</a> <a
														href="#none"
														class="btnNormal sizeS {$withdraw_return_display|display}"
														onclick="{$action_withdraw_return}">반품신청</a> <a
														href="#none"
														class="btnNormal sizeS {$withdraw_return_display|display}"
														onclick="{$action_withdraw_return}">상세보기</a>
												</div>
											</div>
										</div>
										<!-- 상품 한 덩어리 -->
									</div>
								</div>

							</div>

						</div>
					</div>
					
				</div>

				

				<div
					class="xans-element- xans-myshop xans-myshop-wishlistpaging ec-base-paginate typeList">
					<a href="#none" class="first">첫 페이지</a> <a href="#none">이전 페이지</a>
					<ol>
						<li class="xans-record-"><a href="?page=1" class="this">1</a></li>
					</ol>
					<a href="#none">다음 페이지</a> <a href="#none" class="last">마지막 페이지</a>
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