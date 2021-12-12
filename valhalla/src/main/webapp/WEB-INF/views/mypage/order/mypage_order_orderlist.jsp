<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<%@ include file="../../common/myshopwishCss.jsp" %>	
	<%@ include file="../../common/header.jsp" %>	
	
	<div id="myshopMain" module="myshop_main">
		
		<hr class="layout">
		
		<div id="container">
			<div id="contents">
				<span class="xans-element- xans-layout xans-layout-mobileaction RTMB ">
				<a href="#none" onclick="history.go(-1);return false;">
					<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24" class="icon">
							<path stroke="#000" stroke-width="1.5" d="M9.826 20L2 12.5 9.826 5M2 12.5h20"></path>
							</svg>뒤로가기</a> 
							</span>

				<div class="path">
					<span>현재 위치</span>
					<ol>
						<li><a href="/">홈</a></li>
						<li title="현재 위치"><strong>주문조회</strong></a></li> 
					</ol>
				</div>

				<div class="myshopArea">
    <div class="titleArea titleArea--myshop">
        <h2>주문조회</h2>
    </div>
    <div module="Myshop_OrderHistoryTab" class="ec-base-tab typeNav">
        <ul class="menu">
            <li class="{$tab_class}"><a href="#none;">주문내역조회 ({$total_orders})</a></li>
           </ul>
    </div>

    <div module="Myshop_OrderOldHistoryList">
        
        <div class="orderList {$list_display|display}">
            <div class="order">
                <h3>
                    <span class="date" title="주문일자">{$order_date}</span>
                    <span class="number" title="주문번호"><a href="detail_old.html{$param_detail}">({$order_id})</a></span>
                </h3>
                <div class="ec-base-prdInfo">
                    <div class="prdBox">
                        <div class="description">
                            <strong class="prdName" title="상품명">{$product_name}</strong>
                            <div class="price">
                                <span title="판매가">{$product_price}</span>
                            </div>
                            <ul class="info">
                                <li title="수량">총 {$product_count}개 품목</li>
                            </ul>
                        </div>
                    </div>
                    <div class="prdFoot" title="주문처리상태">
                        <div class="gLeft">
                            <span class="txtStatus">{$cur_state}</span>
                        </div>
                    </div>
                </div>
                <a href="detail_old.html{$param_detail}" class="btnDetail">상세보기 <i aria-hidden="true" class="icon icoArrowRight"></i></a>
            </div>
            <div class="order">
                <h3>
                    <span class="date" title="주문일자">{$order_date}</span>
                    <span class="number" title="주문번호"><a href="detail_old.html{$param_detail}">({$order_id})</a></span>
                </h3>
                <div class="ec-base-prdInfo">
                    <div class="prdBox">
                        <div class="description">
                            <strong class="prdName" title="상품명">{$product_name}</strong>
                            <div class="price">
                                <span title="판매가">{$product_price}</span>
                            </div>
                            <ul class="info">
                                <li title="수량">총 {$product_count}개 품목</li>
                            </ul>
                        </div>
                    </div>
                    <div class="prdFoot" title="주문처리상태">
                        <div class="gLeft">
                            <span class="txtStatus">{$cur_state}</span>
                        </div>
                    </div>
                </div>
                <a href="detail_old.html{$param_detail}" class="btnDetail">상세보기 <i aria-hidden="true" class="icon icoArrowRight"></i></a>
            </div>
        </div>
        <p class="ec-base-prdEmpty {$empty_display|display}">주문 내역이 없습니다.</p>
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
			<%@ include file="../../common/mypageMenu.jsp" %>	 
				</div>
			</div>
			<hr class="layout">
		</div>
		<hr class="layout">
	<%@ include file="../../common/footer.jsp" %>	
	
</body>
</html>