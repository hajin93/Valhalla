<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="../common/productCss.jsp" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../common/header.jsp" %>
<c:set var="proList" value="${list}"/>
	<div id="container">
			<div id="contents">
				<div class="xans-element- xans-product xans-product-headcategory path ">
					<span>현재 위치</span>
					<ol>
						<li>
							<a href="/index.do">홈</a>
						</li>
						<li class="">
							<a href="#none;" id="goCategory">${proList.productCategory}</a>
							<input type="hidden" id="goCate" name="goCate" value="${proList.productCategory}" />
						</li>
					</ol>
				</div>
				<div class="xans-element- xans-product xans-product-detail">
					<div class="detailArea">
						<div class="xans-element- xans-product xans-product-image imgArea">
							<div class="RW ">
								<div class="prdImg">
									<div class="thumbnail">
										<a href="#none;" alt="P000000V" >
											<img src="${pageContext.request.contextPath}/resources/img/product${proList.mainImg}" alt="REGULAR FIT CREW-NECK T-SHIRT" class="BigImage ">
										</a>
									</div>
								</div>
							</div>
						</div>
						<div class="infoArea">
							<div class="headingArea ">
								<h1>${proList.productName}</h1>
								<span class="icon">
								<img src="/web/upload/custom_216267854032243.png" alt=""> 
								<img src="/web/upload/benefit/benefit_shop1_35255360f6c2af670155.07810785.png" alt="">
								</span>
							</div>
							<div class="xans-element- xans-product xans-product-detaildesign">
								<!--  출력 갯수 지정 변수, 없으면 설정된 전체가 나옵니다.  count = 10  -->
								<table border="1">
									<caption>기본 정보</caption>
									<tbody>
										<tr class=" xans-record-">
											<th scope="row">
												<span style="font-size: 16px; color: #000000;" data-i18n="PRODUCT.PRD_INFO_PRODUCT_NAME">상품명</span>
											</th>
											<td>
											<span style="font-size: 16px; color: #000000;">${proList.productName}</span>
											</td>
										</tr>
										<tr class=" xans-record-">
											<th scope="row">
												<span style="font-size: 13px; color: #000000; font-weight: bold;" data-i18n="PRODUCT.PRD_INFO_PRODUCT_PRICE">판매가</span>
											</th>
											<td>
												<span style="font-size: 13px; color: #000000; font-weight: bold;">
												<strong id="span_product_price_text"><fmt:formatNumber value="${proList.productPrice}" pattern="#,###" />원</strong>
												<input id="product_price" name="product_price" value="" type="hidden"></span>
											</td>
										</tr>
										<tr class=" xans-record-">
											<th scope="row">
												<span style="font-size: 13px; color: #000000;"data-i18n="PRODUCT.PRD_INFO_PRODUCT_CODE">상품코드</span>
											</th>
											<td>
												<span style="font-size: 13px; color: #000000;">${proList.productNo}</span>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="productOption">
								<table border="1" class="xans-element- xans-product xans-product-option xans-record-"> 
									<caption>상품 옵션</caption>
									<tbody class="xans-element- xans-product xans-product-option xans-record-">
										<tr>
											<th scope="row">Color</th>
											<td>
											<ul option_product_no="21" option_select_element="ec-option-select-finder" option_sort_no="2" option_type="T" item_listing_type="S" option_title="Size" product_type="product_option" product_option_area="product_option_21_0" option_style="button" ec-dev-id="product_option_id2" ec-dev-name="option2" ec-dev-class="ProductOption0" class="ec-product-button" required="true">
												<li class="ec-product-selected" option_value="M" link_image="" title="Free">
													<a href="#none">
													<span>OneColor</span>
													</a>
												</li>
											</ul>
											</td>
										</tr>
									</tbody>
									<tbody class="xans-element- xans-product xans-product-option xans-record-">
										<tr>
											<th scope="row">Size</th>
											<td>
												<ul option_product_no="21" option_select_element="ec-option-select-finder" option_sort_no="2" option_type="T" item_listing_type="S" option_title="Size" product_type="product_option" product_option_area="product_option_21_0" option_style="button" ec-dev-id="product_option_id2" ec-dev-name="option2" ec-dev-class="ProductOption0" class="ec-product-button" required="true">
													<li class="ec-product-selected" option_value="M" link_image="" title="Free">
														<a href="#none">
															<span>Free</span>
														</a>
													</li>
												</ul>
											</td>
										</tr>
									</tbody>
									<tbody>
									</tbody>
								</table>
							</div>
							<div class="guideArea">
								<p class="info ">
									(최소주문수량 1개 이상<span class="displaynone"> / 최대주문수량 ${proList.stockQuantity}개 이하</span>)
								</p>
							</div>
							<div id="totalProducts" class=" ">
								<table border="1">
									<tbody class="option_products">
										<tr class="option_product " data-option-index="3"target-key="21">
											<td colspan="3">
											<table>
												<colgroup>
													<col style="width: 284px;">
													<col style="width: 80px;">
													<col style="width: 110px;">
												</colgroup>
												<thead>
													<tr>
														<th scope="col">상품명</th>
														<th scope="col">상품수</th>
														<th scope="col">가격</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>
															<p class="product">${proList.productName}<br> - 
																<span>${proList.productColor}/${proList.productSize}</span>
															</p>
														</td>
															<td>
															<span class="quantity" style="width: 65px;">
																<input type="text" id="proCount" name="pop_out" class="quantity_opt eProductQuantityClass" value="1" >
															<a href="#none" class="up eProductQuantityUpClass" data-target="option_box3_up" onclick="fnCalCount('p',this);">
																<img src="//img.echosting.cafe24.com/design/skin/default/product/btn_count_up.gif" id="option_box3_up" class="option_box_up" alt="수량증가">
															</a>
															<a href="#none" class="down eProductQuantityDownClass" data-target="option_box3_down" onclick="fnCalCount('m', this);">
																<img src="//img.echosting.cafe24.com/design/skin/default/product/btn_count_down.gif" id="option_box3_down" class="option_box_down" alt="수량감소">
															</a>
															</span>
															</td>
															<td class="right">
															<span id="option_box3_price">
																<span class="ec-front-product-item-price" ><fmt:formatNumber value="${proList.productPrice}" pattern="#,###" />원</span>
															</span>
														</td>
													</tr>
													</tbody>
												</table>
											</td>
										</tr>
									</tbody>
									<tbody class="add_products"></tbody>
									<!-- // 옵션선택 또는 세트상품 선택시 상품이 추가되는 영역입니다. 쇼핑몰 화면에는 아래와 같은 마크업구조로 표시됩니다. 삭제시 기능이 정상동작 하지 않습니다. -->
								</table>
							</div>

							<div id="totalPrice" class="totalPrice">
								<strong class="title">TOTAL <span class="qty">(QUANTITY)</span>
								</strong>
								<span class="total"><strong><span id="totalPricem"><fmt:formatNumber value="${proList.productPrice}" pattern="#,###" />원 (1개)</span></strong></span>
							</div>
							<div id="" class="xans-element- xans-product xans-product-action productAction">
								<div class=" ">
									<a href="#none" class="btnSubmit gFull sizeL " onclick="product_submit(1, '/exec/front/order/basket/', this)">
									<span id="actionBuy">바로구매</span>
									</a> 
									<span class="gActionButtonColumn">
									<button type="button" class="btnNormal sizeL RW actionCart " onclick="product_submit(2, '/exec/front/order/basket/', this)" id="actionCart">장바구니</button>
									<button type="button" class="btnNormal sizeL actionWish " onclick="add_wishlist(this, true);" id="actionWish">위시리스트</button>
									</span>
								</div>
								<!-- 네이버 체크아웃 구매 버튼  -->
								<div id="NaverChk_Button" style="display: none;"></div>
							</div>
							<!-- 모바일 볼 때 아래 붚어다니는 선택창 -->
							<div id="orderFixArea" class="xans-element- xans-product xans-product-action ec-base-button gFixed "> 
								<!-- 재고가 있을때 보여져야하는 버튼 시작-->
								<div class="ec-base-button gColumn ">
									<button type="button" class="btnNormal sizeM actionCart " onclick="product_submit(2, '/exec/front/order/basket/', this)">장바구니</button>
									<a href="#none" class="btnSubmit sizeM " onclick="product_submit(1, '/exec/front/order/basket/', this)"> <span id="actionBuy">바로구매</span></a>
								</div>
								<!-- 재고가 있을때 보여져야하는 버튼 끝-->
								<!-- 품절시 보여야하는 버튼 시작-->
								<div class="ec-base-button gColumn displaynone">
									<button type="button" class="btnSubmit sizeM displaynone">SOLD OUT</button>
									<button type="button" class="btnNormal sizeM " onclick="add_wishlist(this, true);" id="actionWishSoldout">위시리스트</button>
								</div>
								<!-- 품절시 보여야하는 버튼 끝-->
							</div>
						</div>
					</div>
				</div>
				<div class="xans-element- xans-product xans-product-additional ">
					<div id="prdDetail" class="productDetail">
						<div>
							<p></p>
							<img hspace="5" vspace="0" style="width: 1240px; height: 632px;" src="${pageContext.request.contextPath}/resources/img/product${proList.mainImg}">
							<p></p>
						</div>
					</div>
					
					<div class="ec-base-fold theme1 selected eToggle">
						<div class="title">
							<h2>상품결제정보</h2>
						</div>
						<div class="contents">
							<div class="info">
								고액결제의 경우 안전을 위해 카드사에서 확인전화를 드릴 수도 있습니다. 확인과정에서 도난 카드의 사용이나 타인
								명의의 주문등 정상적인 주문이 아니라고 판단될 경우 임의로 주문을 보류 또는 취소할 수 있습니다. &nbsp; <br>
								<br> 무통장 입금은 상품 구매 대금은 PC뱅킹, 인터넷뱅킹, 텔레뱅킹 혹은 가까운 은행에서 직접
								입금하시면 됩니다. &nbsp;<br> 주문시 입력한&nbsp;입금자명과 실제입금자의 성명이 반드시
								일치하여야 하며, 7일 이내로 입금을 하셔야 하며&nbsp;입금되지 않은 주문은 자동취소 됩니다. <br>
							</div>
						</div>
					</div>
					<div class="ec-base-fold theme1 selected eToggle">
						<div class="title">
							<h2>배송정보</h2>
						</div>
						<div class="contents">
							<ul class="info delivery">
								<li>배송 방법 : 일반등기</li>
								<li>배송 지역 : 서울/경기</li>
								<li>배송 비용 : <strong>무료배송</strong></li>
								<li>배송 기간 : 1일 ~ 3일</li>
								<li>배송 안내 : - 산간벽지나 도서지방은 별도의 추가금액을 지불하셔야 하는 경우가 있습니다.<br>
									고객님께서 주문하신 상품은 입금 확인후 배송해 드립니다. 다만, 상품종류에 따라서 상품의 배송이 다소 지연될 수
									있습니다.<br>
								</li>
							</ul>
						</div>
					</div>
					<div class="ec-base-fold theme1 selected eToggle">
						<div class="title">
							<h2>교환 및 반품정보</h2>
						</div>
						<div class="contents">
							<div class="info">
								<b>교환 및 반품 주소</b><br>- <b><br> <br>교환 및 반품이
									가능한 경우</b><br> - 상품을 공급 받으신 날로부터 7일이내 단, 가전제품의<br>
								&nbsp;&nbsp;경우 포장을 개봉하였거나 포장이 훼손되어 상품가치가 상실된 경우에는 교환/반품이 불가능합니다.<br>
								- 공급받으신 상품 및 용역의 내용이 표시.광고 내용과<br> &nbsp;&nbsp;다르거나 다르게 이행된
								경우에는 공급받은 날로부터 3월이내, 그사실을 알게 된 날로부터 30일이내<br> <br> <b>교환
									및 반품이 불가능한 경우</b><br> - 고객님의 책임 있는 사유로 상품등이 멸실 또는 훼손된 경우. 단,
								상품의 내용을 확인하기 위하여<br> &nbsp;&nbsp;포장 등을 훼손한 경우는 제외<br>
								- 포장을 개봉하였거나 포장이 훼손되어 상품가치가 상실된 경우<br> &nbsp;&nbsp;(예 :
								가전제품, 식품, 음반 등, 단 액정화면이 부착된 노트북, LCD모니터, 디지털 카메라 등의 불량화소에<br>
								&nbsp;&nbsp;따른 반품/교환은 제조사 기준에 따릅니다.)<br> - 고객님의 사용 또는 일부
								소비에 의하여 상품의 가치가 현저히 감소한 경우 단, 화장품등의 경우 시용제품을 <br>
								&nbsp;&nbsp;제공한 경우에 한 합니다.<br> - 시간의 경과에 의하여 재판매가 곤란할 정도로
								상품등의 가치가 현저히 감소한 경우<br> - 복제가 가능한 상품등의 포장을 훼손한 경우<br>
								&nbsp;&nbsp;(자세한 내용은 고객만족센터 1:1 E-MAIL상담을 이용해 주시기 바랍니다.)<br>
								<br> ※ 고객님의 마음이 바뀌어 교환, 반품을 하실 경우 상품반송 비용은 고객님께서 부담하셔야 합니다.<br>
								&nbsp;&nbsp;(색상 교환, 사이즈 교환 등 포함)<br>
							</div>
						</div>
					</div>
					<div class="ec-base-fold theme1 selected eToggle">
						<div class="title">
							<h2>서비스문의</h2>
						</div>
						<div class="contents">
							<div class="info"></div>
						</div>
					</div>
					<div class="ec-base-fold theme1 selected eToggle ">
						<div class="title">
							<h2>상품리뷰</h2>
						</div>
						<div class="contents">
							<p class="nodata" data-i18n="PRODUCT.BOARD_NODATA">게시물이 없습니다</p>
							<div class="ec-base-button gMColumn">
								<span class="gRight">
									<a href="/board/product/list.html?board_no=4&amp;link_product_no=21" class="btnNormalFix sizeM">전체 보기</a> 
									<a href="/board/product/write.html?board_no=4&amp;product_no=21&amp;cate_no=28&amp;display_group=3" class="btnSubmitFix sizeM">리뷰작성</a>
								</span>
							</div>
						</div>
					</div>
					<div class="ec-base-fold theme1 selected eToggle ">
						<div class="title">
							<h2>상품문의</h2>
						</div>
						<div class="contents">
							<p class="nodata" data-i18n="PRODUCT.BOARD_NODATA">게시물이 없습니다</p>
							<div class="ec-base-button gMColumn">
								<span class="gRight">
								<a href="/board/product/list.html?board_no=6&amp;link_product_no=21" class="btnNormalFix sizeM">전체 보기</a> 
								<a href="/board/product/write.html?board_no=6&amp;product_no=21&amp;cate_no=28&amp;display_group=3" class="btnSubmitFix sizeM">상품문의하기</a>
								</span>
							</div>
						</div>
					</div>
				</div>
				<span class="xans-element- xans-layout xans-layout-mobileaction RTMB ">
					<a href="#none" onclick="history.go(-1);return false;">
						<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24" class="icon">
							<path stroke="#000" stroke-width="1.5" d="M9.826 20L2 12.5 9.826 5M2 12.5h20"></path>
						</svg>
						<span>뒤로가기</span>
					</a>
				</span>	
			</div>
			<hr class="layout">
		</div>
	<hr class="layout">

<!-- 해더 jsp에서 사용한 카테고리 이동에서 변하지 않아서 다시 재사용 -->
<form id="movedCate" method="post" action="/productCategory.do">
	<input type="hidden" id="productCategory" name="productCategory" value=""/>
</form> 
<input type="hidden" id="stockQuantity" name="stockQuantity" value="${proList.stockQuantity}"/>
<input type="hidden" id="proPrice" name="proPrice" value="${proList.productPrice}"/>

<form id="" method="post" action="">
	
</form>

<%@ include file="../common/footer.jsp" %>
</body>
<script type="text/javascript">
$( document ).ready(function() {
    
	var cate = $('#goCate').val(); //a태그에 들어가 있는 값을 못읽어 오기 때문에 히든으로 값을 가지고 오기 
	
    
	$('#goCategory').on('click',function(){ //카테고리 이동 a태그를 클릭했을때 기능
		
		// 폼태그의 value값을 바꿔주면서 원하는 카테고리로 이동 하는 구분주기
		//해더부분에서 준 구분값을 활용하여 사용한다 생각하면 이해하기 쉬움
		if(cate == "outer"){ 
			$('#productCategory').val("outer"); 
			$('#movedCate').submit();
		}else if(cate == "tops"){
			$('#productCategory').val("tops");
			$('#movedCate').submit();
		}else if(cate == "dresses"){
			$('#productCategory').val("dresses");	
			$('#movedCate').submit();
		}else if(cate == "bottoms"){
			$('#productCategory').val("bottoms");
			$('#movedCate').submit();
		}else if(cate == "accessories"){
			$('#productCategory').val("accessories");
			$('#movedCate').submit();
		}
		
	});
	
});

//상품 선택 갯수 부분 
function fnCalCount(type, ths){
	
    var $input = $(ths).parents("td").find("input[name='pop_out']"); // td가 부모이면서 input의 name이 pop_out인것
    var tCount = Number($input.val());
    var tEqCount = Number($('#stockQuantity').val());//재고 이상으로 카운트가 올라가는 것을 방지
    
    if(type=='p'){
    	if(tCount < tEqCount) $input.val(Number(tCount)+1);
        }else{
        	if(tCount >0) $input.val(Number(tCount)-1);
		}
    var proCount = $('#proCount').val(); //상품선택 개수
    var proPrice = $('#proPrice').val(); //상품가격
    var totalPrice = proPrice*proCount; //총가격 = 선택된 상품 개수* 상품 가격
    
    $('#totalPricem').text(comma(totalPrice)+"원 ("+proCount+"개)"); //html 상에서  콤마가 들어가서 보이게 하기위해 fmt사용했지만 함수사용으로 갈아치기 위해 comma함수 사용하면서 text로 갈아침
	}

</script>
</html>