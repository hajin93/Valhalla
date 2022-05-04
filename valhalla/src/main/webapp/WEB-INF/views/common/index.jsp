<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="indexCss.jsp" %>
<%@ include file="header.jsp" %>
		<hr class="layout">
		<div id="container">
			<main id="contents" role="main">
				<!-- collection -->
				<section class="collection">
					<div class="xans-element- xans-custom xans-custom-moduleedit-2 xans-custom-moduleedit xans-custom-2 collection-item ">
						<a href="#none;" id="summer">
							<img src="${pageContext.request.contextPath}/resources/img/collection/summercollection.png" width="100%" height="100%" alt="banner1"> &nbsp;</a>
					</div>
					<div class="xans-element- xans-custom xans-custom-moduleedit-3 xans-custom-moduleedit xans-custom-3 collection-item ">
						<a href="#none;" id="winter">
							<img src="${pageContext.request.contextPath}/resources/img/collection/wintercollection.png" width="100%" height="100%" alt="banner2"> &nbsp;</a>
					</div>
					<div class="xans-element- xans-custom xans-custom-moduleedit-4 xans-custom-moduleedit xans-custom-4 collection-item ">
						<a href="#none;" id="ac"> 
							<img src="${pageContext.request.contextPath}/resources/img/collection/acccollection.PNG" width="100%" height="100%" alt="banner3"> &nbsp;</a>
					</div>
				</section>
				<!-- //collection -->
				<div class="xans-element- xans-product xans-product-listmain-1 xans-product-listmain xans-product-1 productItem ec-base-product">
					<div class="mainTitle">
						<h2>
							<span style="display:;">All Product</span> 
							<span style="display: none;">
						</h2>
					</div>
					<ul class="prdList grid4">
					<!-- 상품 시작 -->
					<c:forEach var="proList" items="${list}" varStatus="status">
						<li id="anchorBoxId_18" class="xans-record-">
							<div class="prdList__item">
								<div class="thumbnail">
									<a href="#none;" id="img${status.index}" onclick="movePD('${proList.productNo}')">
									<img src="${pageContext.request.contextPath}/resources/img/product${proList.mainImg}" id="eListPrdImage18_2" alt="REGULAR FIT CREW-NECK T-SHIRT" loading="lazy" width="100%" height="100%">
									</a>
								</div>
								<div class="description">
									<strong class="name">
									<a href="#none;" id="proName${status.index}" onclick="movePD('${proList.productNo}')"class="">
									<span class="title displaynone">
									<span style="font-size: 13px; color: #000000;" data-i18n="PRODUCT.PRD_INFO_PRODUCT_NAME">상품명</span> :</span>
									<span style="font-size: 13px; color: #000000;">${proList.productName}</span>
									</a>
									</strong>
									<ul class="xans-element- xans-product xans-product-listitem spec">
										<li class=" xans-record-">
										<strong class="title displaynone">
										<span style="font-size: 12px; color: #6d6d6d;" data-i18n="PRODUCT.PRD_INFO_SUMMARY_DESC">상품요약정보</span> :</strong> 
										<span style="font-size: 12px; color: #6d6d6d;">${proList.productEx}</span>
										</li>
										<li class=" xans-record-">
										<strong class="title displaynone">
										<span style="font-size: 16px; color: #000000;" data-i18n="PRODUCT.PRD_INFO_PRODUCT_PRICE">판매가</span> :</strong> 
										<span style="font-size: 16px; color: #000000;"><fmt:formatNumber value="${proList.productPrice}" pattern="#,###" />원</span>
										<span id="span_product_tax_type_text" style=""> </span>
										</li>
									</ul>
									
								</div>
							</div>
						</li>
						</c:forEach>
						<!-- 상품 끝 -->
					</ul>
				</div>
			</main>
		</div>
<%@ include file="footer.jsp" %>
<form id="movedPD" method="post" action="/productDetail.do">
	<input type="hidden" id="productNo" name="productNo" val=""/>
</form>
<form id="movedColl" method="post" action="/collection.do">
   <input type="hidden" id="productSeason" name="productSeason" value=""/>
   <input type="hidden" id="collec" name="collec" value="collec"/>
</form>
</body>
<script type="text/javascript">
//$(document).ready(function(){
//$(function(){
$(()=>{
	
	const value = ["summer", "winter", "ac"];
	const gubn = ["s", "w", "a"];
	
	$.each(value, (idx, val)=>{
		$('#'+val).click(()=>{
			$('#productSeason').val(gubn[idx]);
			//$('#productSeason').val(value[idx].substring(0,1));
			$('#movedColl').submit();
		});
	});
	
// 	$('#summer').click(()=>{//썸머 컬렉션 클릭시 인풋히든 값으로 s 를 productSeason안으로 넣어서 폼서브밋시킴
// 		$('#productSeason').val('s');
// 		$('#movedColl').submit();
// 	});
	
// 	$('#winter').on('click',(()=>{ // 윈터 컬렉션 클릭시 인풋히든 값으로 w 를 productSeason안으로 넣어서 폼서브밋시킴
// 		$('#productSeason').val('w');
// 		$('#movedColl').submit();
// 	});
	
// 	$('#ac').on('click',function(){ // 악세사리 컬렉션 클릭시 인풋히든 값으로 a 를 productSeason안으로 넣어서 폼서브밋시킴
// 		$('#productSeason').val('a');
// 		$('#movedColl').submit();
// 	});
});

// function movePD(productNo){
// 	$('#productNo').val(productNo);
// 	$('#movedPD').submit();
// }

let movePD = ((productNo)=>{ //function을 전역변수화 
	$('#productNo').val(productNo);
	$('#movedPD').submit();
});

</script>
</html>