<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<%@ include file="../common/myshopwishCss.jsp" %>	
	<%@ include file="../common/header.jsp" %>	
	
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
						<li title="현재 위치"><strong>나의 위시리스트</strong></li>
					</ol>
				</div>

				<div class="myshopArea">
					<div class="titleArea titleArea--myshop">
						<h2>나의 위시리스트</h2>
					</div>
					<div class="xans-element- xans-myshop xans-myshop-wishlist xans-record-">
						<!--
            $login_page = /member/login.html
            $count = 10
            $use_per_add_option = yes
        -->
						<div class="xans-element- xans-myshop xans-myshop-wishlistitem">
							<div class="ec-base-prdInfo gCheck xans-record-">
								<div class="prdBox">
									<span class="check"><input name="wish_idx[]"
										id="wish_idx_0" enable-order="" reserve-order="N"
										enable-purchase="1" class="" is-set-product="F" value="192"
										type="checkbox"></span>
									<div class="thumbnail">
										<a
											href="/product/regular-fit-crew-neck-t-shirt/18/category/29/"><img
											src="//ecudemo199138.cafe24.com/web/product/medium/202107/f46d04dc642d3b8507058c347ccf4fb0.jpg"
											alt="" width="83" height="83"></a>
									</div>
									<div class="description">
										<strong class="prdName" title="상품명"><a
											href="/product/regular-fit-crew-neck-t-shirt/18/category/29/"
											class="ec-product-name">REGULAR FIT CREW-NECK T-SHIRT</a></strong>
										<ul class="price">
											<li><strong class="" title="판매가">28,000원</strong></li>
										</ul>
										<ul
											class="xans-element- xans-myshop xans-myshop-optionall optionGroup">
											<li class="xans-record-"><span
												class="product displaynone"></span><span class="optionStr"></span>
												<span class="displaynone">(개)</span><a href="#none"
												onclick="NewWishlist.showOptionChangeLayer('wishlist_option_modify_layer_0')"
												class="btnText displaynone">옵션변경</a>
												<div class="optionModifyLayer ec-base-layer-area"
													id="wishlist_option_modify_layer_0">
													<div class="ec-base-layer typeModal">
														<div class="header">
															<h4>옵션변경</h4>
														</div>
														<div class="content">
															<ul class="prdInfo">
																<li></li>
																<li class="option"></li>
															</ul>
															<div class="prdModify">
																<h5>상품옵션</h5>
																<ul
																	class="xans-element- xans-myshop xans-myshop-optionlist">
																	<li class="xans-record-"><span class="optionDesc">Color</span>
																		<select option_product_no="18"
																		option_select_element="ec-option-select-finder"
																		option_sort_no="1" option_type="T"
																		item_listing_type="S" option_title="Color"
																		product_type="product_option"
																		product_option_area="wishlist_product_option_18_0"
																		name="wishlist_option1"
																		id="wishlist_product_option_id1"
																		class="ProductOption0" option_style="select"
																		required="true"><option value="*" selected=""
																				link_image="">- [필수] 옵션을 선택해 주세요 -</option>
																			<option value="**" disabled="" link_image="">-------------------</option>
																			<option value="그레이" link_image="">그레이</option>
																			<option value="베이지" link_image="">베이지</option>
																			<option value="블루" link_image="">블루</option>
																			<option value="블랙" link_image="">블랙</option></select></li>
																	<li class="xans-record-"><span class="optionDesc">Size</span>
																		<select option_product_no="18"
																		option_select_element="ec-option-select-finder"
																		option_sort_no="2" option_type="T"
																		item_listing_type="S" option_title="Size"
																		product_type="product_option"
																		product_option_area="wishlist_product_option_18_0"
																		name="wishlist_option2"
																		id="wishlist_product_option_id2"
																		class="ProductOption0" option_style="select"
																		required="true"><option value="*" selected=""
																				link_image="">- [필수] 옵션을 선택해 주세요 -</option>
																			<option value="**" disabled="" link_image="">-------------------</option></select></li>
																</ul>
																<ul
																	class="xans-element- xans-myshop xans-myshop-optionaddlist">
																	<li class="xans-record-"><span class="optionDesc">이름</span>
																		<input name="이름" input_name="add_option0"
																		input_id="add_option_0" limit="10" require="T"
																		class="ProductAddOption0" optionname="이름"
																		id="add_option_0" maxlength="10" value="" type="text"></li>
																	<li class="xans-record-"><span class="optionDesc">사은품
																			입력</span> <input name="사은품 입력" input_name="add_option1"
																		input_id="add_option_1" limit="15" require="F"
																		class="ProductAddOption0" optionname="사은품 입력"
																		id="add_option_1" maxlength="15" value="" type="text"></li>
																</ul>
															</div>
														</div>
														<div class="ec-base-button">
															<a href="#none" class="btnNormalFix sizeM "
																onclick="NewWishlist.modify('add', '0', '18');">추가</a> <a
																href="#none" class="btnSubmitFix sizeM"
																onclick="NewWishlist.modify('update', '0', '18');">변경</a>
														</div>
														<a href="#none" class="btnClose"
															onclick="$('.optionModifyLayer').hide();">닫기</a>
													</div>
												</div></li>
										</ul>
									</div>
									<div class="buttonGroup">
										<span class="gRight">
											<button type="button"
												onclick="CAPP_SHOP_NEW_PRODUCT_OPTIONSELECT.selectOptionCommon(18,  29, 'wishlist', '')"
												class="btnNormal sizeS ">장바구니</button>
											<button type="button"
												onclick="CAPP_SHOP_NEW_PRODUCT_OPTIONSELECT.selectOptionCommon(18,  29, 'wishlist', '')"
												class="btnSubmit sizeS ">주문하기</button>
										</span>
									</div>
								</div>
								<a href="#none" class="btnDelete btn_wishlist_del" rel="18||||">삭제</a>
							</div>
						</div>
						<p class="ec-base-prdEmpty displaynone">관심상품 내역이 없습니다.</p>
					</div>

					<div
						class="xans-element- xans-myshop xans-myshop-wishlistbutton xans-record-">
						<div class="ec-base-button">
							<span class="gRight"> <a href="#none"
								class="btnNormal sizeS" onclick="NewWishlist.deleteAll();">전체삭제</a>
								<a href="#none" class="btnNormal sizeS"
								onclick="NewWishlist.deleteSelect();">선택삭제</a>
							</span>
						</div>
						<div class="ec-base-button gBottom">
							<a href="#none" class="btnSubmitFix sizeM"
								onclick="NewWishlist.orderAll();">전체상품주문</a>
						</div>
					</div>

					<div
						class="xans-element- xans-myshop xans-myshop-wishlistpaging ec-base-paginate typeList">
						<a href="#none" class="first">첫 페이지</a> <a href="#none">이전 페이지</a>
						<ol>
							<li class="xans-record-"><a href="?page=1" class="this">1</a></li>
						</ol>
						<a href="#none">다음 페이지</a> <a href="#none" class="last">마지막
							페이지</a>
					</div>

			<%@ include file="../common/mypageMenu.jsp" %>	

				</div>
			</div>
			<hr class="layout">
		</div>
		<hr class="layout">
	<%@ include file="../common/footer.jsp" %>	
	
</body>
</html>