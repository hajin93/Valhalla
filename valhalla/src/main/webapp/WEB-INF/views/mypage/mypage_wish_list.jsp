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
				<div class="path">
					<span>현재 위치</span>
					<ol>
						<li><a href="/index.do">홈</a></li>
						<li><a href="/">마이쇼핑</a></li> 
						<li title="현재 위치"><strong>나의 위시리스트</strong></li>
					</ol>
				</div>
				<div class="myshopArea">
					<div class="titleArea titleArea--myshop">
						<h2>나의 위시리스트</h2>
					</div>
					<!-- 반복 구간 시작 -->
					<c:forEach var="wishList" items="${list}" varStatus="status">
					<div class="xans-element- xans-myshop xans-myshop-wishlist xans-record-">
						<div class="xans-element- xans-myshop xans-myshop-wishlistitem">
							<div class="ec-base-prdInfo gCheck xans-record-">
								<div class="prdBox">
									<span class="check">
										<input name="wishck" id="wish${status.index}" enable-order="" reserve-order="N" enable-purchase="1" class="" is-set-product="F" value="" type="checkbox">
									</span>
									<div class="thumbnail">
										<a href="#none;">
										<img src="${pageContext.request.contextPath}/resources/img/product${wishList.mainImg}" alt="" width="83" height="83"></a>
									</div>
									<div class="description">
										<strong class="prdName" title="상품명">
										<a href="#none;" class="ec-product-name">${wishList.productName}</a></strong>
										<ul class="price">
											<li><strong class="" title="판매가"><fmt:formatNumber value="${wishList.productPrice}" pattern="#,###" />원</strong></li>
										</ul>
									</div>
									<div class="buttonGroup">
										<span class="gRight">
											<button type="button" onclick="#none;" class="btnNormal sizeS ">장바구니</button>
											<button type="button" onclick="#none;" class="btnSubmit sizeS ">주문하기</button>
										</span>
									</div>
								</div>
							</div>
						</div>
						<p class="ec-base-prdEmpty displaynone">관심상품 내역이 없습니다.</p>
					</div>
					<!-- 반복구간 끝 -->
					</c:forEach>
					<!-- 삭제 및 주문 버튼 이벤트들-->
					<div class="xans-element- xans-myshop xans-myshop-wishlistbutton xans-record-">
						<div class="ec-base-button">
							<span class="gRight">
								<a href="#none" class="btnNormal sizeS" onclick="NewWishlist.deleteAll();">전체삭제</a>
								<a href="#none" class="btnNormal sizeS" onclick="NewWishlist.deleteSelect();">선택삭제</a>
							</span>
						</div>
						<div class="ec-base-button gBottom">
							<a href="#none" class="btnSubmitFix sizeM" onclick="NewWishlist.orderAll();">전체상품주문</a>
						</div>
					</div>
					
					<!-- 페이징 시작 -->
					<div class="xans-element- xans-myshop xans-myshop-wishlistpaging ec-base-paginate typeList">
						<a href="#none" class="first">첫 페이지</a> <a href="#none">이전 페이지</a>
						<ol>
							<li class="xans-record-"><a href="?page=1" class="this">1</a></li>
						</ol>
						<a href="#none">다음 페이지</a> <a href="#none" class="last">마지막 페이지</a>
					</div>
					<!-- 페이징 끝 -->
			<%@ include file="../common/mypageMenu.jsp" %>	

				</div>
			</div>
			<hr class="layout">
		</div>
		<hr class="layout">
	<%@ include file="../common/footer.jsp" %>	
	
</body>
</html>