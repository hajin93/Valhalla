<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/productCss.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../common/header.jsp" %>

		<div id="container">
			<div id="contents">
				<div class="xans-element- xans-product xans-product-menupackage ">
					<div class="xans-element- xans-product xans-product-headcategory path ">
						<span>현재 위치</span>
						<ol>
							<li>
								<a href="/index.do">홈</a>
							</li>
							<li class="">
								<a href="#none;">${productCategory}</a>
								<input type="hidden" id="category" value="${productCategory}"/>
							</li>
						</ol>
					</div>
				</div>
				<div class="xans-element- xans-product xans-product-headcategory titleArea ">
					<h2>${productCategory}</h2>
				</div>

				<div class="ec-base-tab typeMenu">
					<ul class="menuCategory menu" style="display: none;"> </ul>
				</div>
				<div class="xans-element- xans-product xans-product-listrecommend ec-base-product gInner" id="xans-product-listrecommend-slider-0" style="overflow: hidden;">
				</div>
				<div class="xans-element- xans-product xans-product-listnew ec-base-product gInner" id="xans-product-listnew-slider-0" style="overflow: hidden;">
				</div>
				<div class="xans-element- xans-product xans-product-normalpackage ">
					<div class="xans-element- xans-product xans-product-normalmenu ">
						<div class="function" id="Product_ListMenu">
							<p class="prdCount"> All Product <strong class="txtEm"><span id="apnum"></span></strong>
							</p>
							<div class="sort">
								<select id="selArray" name="selArray" class="xans-element- xans-product xans-product-orderby" onchange="priceChange()"> 
									<option value="" class="xans-record-">-</option>
									<option value="low" class="xans-record-">낮은가격</option>
									<option value="hi" class="xans-record-">높은가격</option>
								</select>
							</div>
						</div>
					</div>
					<div class="product_area">
						<div class="xans-element- xans-product xans-product-listnormal ec-base-product">
							<ul id="proList" class="prdList grid4">
								<!-- 상품 등록 반복 시작 부분 -->
								 <!-- varStatus="status"는 내가 선택한 상품이 list로 받는 상품의 몇번째 있는지 알기 위해 선언해 놓는 것 ${status.index}로 몇번째 존재하는지 알수 있음 -->
								<c:forEach var="proList" items="${list}" varStatus="status">
								<li id="anchorBoxId_21" class="xans-record-">
								<div class="prdList__item">
										<div class="thumbnail">
											<a href="#none;" id="img${status.index}" onclick="movePD('${proList.productNo}')">
												<img src="${pageContext.request.contextPath}/resources/img/product${proList.mainImg}" >
											</a>
										</div>
										<div class="description">
											<strong class="name">
												<a href="#none;" id="proName${status.index}" onclick="movePD('${proList.productNo}')" class="">
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
								<!-- 상품 등록 반복 시작 부분 -->
							</ul>
						</div>
					</div>
				</div>
			</div>
			<hr class="layout">
		</div>
 <!-- 상세페이지로 넘어갈때 내가 어떤 상품을 선택 했는지 알기위해 가지고 넘어가는 히든 값 -->
<form id="movedPD" method="post" action="/productDetail.do"> 
	<input type="hidden" id="productNo" name="productNo" val=""/>
</form>
 <input type="hidden" id="productSeason" name="productSeason" value="${productSeason}"/>
 <input type="hidden" id="collec" name="collec" value="${collec}"/>
<%@ include file="../common/footer.jsp" %>
</body>
<script type="text/javascript">
$(function(){
	var size = "${size}"; //카테고리별 종류수
	$('#apnum').text(size); // 종류의 length 같은경우는 0번부터존재하므로 size로 주었음

});

function movePD(productNo){ //상품이미지와 상품이름을 선택했을때 동일하게 상품상세 페이지로 넘어가기 위해 두가지 모두 onclick함수를 똑같이 둠
	$('#productNo').val(productNo); //선택한 상품의 상품번호를 value 값으로 가지게 한다
	$('#movedPD').submit(); // 폼서브밋으로 가지고 페이지를 이동한다
}

function priceChange(){
	var selected = $("#selArray option:selected").val();// 정렬 안쪽 선택된 옵션마다 ajax를 태우려고 가지고왔음
	var productCategory =$('#category').val();
	var productSeason = $('#productSeason').val();
	var productList = "";
	var collec = document.getElementById('collec').value;
	
	if(collec == ""){
		
		if(selected == "low"){
			
			$.ajax({
				type:'post',
				url: '/productCategoryAjax.do', //컨트롤러 안쪽 productCategory.do은 map형식으로 리턴하지 않아 따로 ajax.do로 만들어놨음
				data: { priceSel : selected,  productCategory : productCategory}, //선택된 것(hi인지 low인지), 컨트롤러에서 카테고리로 불러오는 xml 건들지 않고 바로 가져다 쓰기 위한것과 어떤 카테고리를 선택했는지 알아야해서 두가지를 가지고 ajax 사용
				dataType:"json",
				success: function(data) {
					var list = data.list;
					var length = list.length; //size를 먼저 끌고 오려고 했지만 length 와 같아 그냥 length 선언후에 사용함 
					
					for(var i=0; i<length; i++){
						productList = productList +
						"<li id='anchorBoxId_21' class='xans-record-'>"+
						"<div class='prdList__item'>"+
						"<div class='thumbnail'>"+
						"<a href='#none;' id='img"+i+"' onclick="+"'movePD"+"('"+ list[i].productNo +"')"+"'>"+
						"<img src='${pageContext.request.contextPath}/resources/img/product"+ list[i].mainImg +"' >"+
						"</a></div><div class='description'>"+
						"<strong class='name'>"+
						"<a href='#none;' id='proName"+i+"' onclick='movePD"+"('"+ list[i].productNo +"')"+"' class=''>"+
						"<span class='title displaynone'>"+
						"<span style='font-size: 13px; color: #000000;' data-i18n='PRODUCT.PRD_INFO_PRODUCT_NAME'>상품명</span> :</span>"+
						"<span style='font-size: 13px; color: #000000;'>"+ list[i].productName +"</span>"+
						"</a></strong><ul class='xans-element- xans-product xans-product-listitem spec'>"+
						"<li class='xans-record-'>"+
						"<strong class='title displaynone'>"+
						"<span style='font-size: 12px; color: #6d6d6d;' data-i18n='PRODUCT.PRD_INFO_SUMMARY_DESC'>상품요약정보</span> :</strong>"+
						"<span style='font-size: 12px; color: #6d6d6d;'>"+ list[i].productEx +"</span>"+
						"</li><li class='xans-record-'>"+
						"<strong class='title displaynone'>"+
						"<span style='font-size: 16px; color: #000000;' data-i18n='PRODUCT.PRD_INFO_PRODUCT_PRICE'>판매가</span> :</strong>"+
						"<span style='font-size: 16px; color: #000000;'>"+ comma(list[i].productPrice) +"원</span>"+
						"<span id='span_product_tax_type_text' style=''> </span>"+
						"</li></ul></div></div></li>"
					}
					
					$('#proList').html(""); //위에서 기본 조건틀이 존재하므로 ul태그 안쪽을 비워주는 것
					$('#proList').html(productList); // ul태그 안쪽을 for문으로 갈아치는 거 
				},
				error: function(request, status, error) {
					alert(error);
				}
			});
		} else if(selected == "hi"){
			
			$.ajax({
				type:'post',
				url: '/productCategoryAjax.do', //컨트롤러 안쪽 productCategory.do은 map형식으로 리턴하지 않아 따로 ajax.do로 만들어놨음
				data: { priceSel : selected,  productCategory : productCategory}, //선택된 것(hi인지 low인지), 컨트롤러에서 카테고리로 불러오는 xml 건들지 않고 바로 가져다 쓰기 위한것과 어떤 카테고리를 선택했는지 알아야해서 두가지를 가지고 ajax 사용
				dataType:"json",
				success: function(data) {
					var list = data.list;
					var length = list.length; //size를 먼저 끌고 오려고 했지만 length 와 같아 그냥 length 선언후에 사용함 
				
					for(var i=0; i<length; i++){ 
						productList = productList +
						"<li id='anchorBoxId_21' class='xans-record-'>"+
						"<div class='prdList__item'>"+
						"<div class='thumbnail'>"+
						"<a href='#none;' id='img"+i+"' onclick="+"'movePD"+"('"+ list[i].productNo +"')"+"'>"+
						"<img src='${pageContext.request.contextPath}/resources/img/product"+ list[i].mainImg +"' >"+
						"</a></div><div class='description'>"+
						"<strong class='name'>"+
						"<a href='#none;' id='proName"+i+"' onclick='movePD"+"('"+ list[i].productNo +"')"+"' class=''>"+
						"<span class='title displaynone'>"+
						"<span style='font-size: 13px; color: #000000;' data-i18n='PRODUCT.PRD_INFO_PRODUCT_NAME'>상품명</span> :</span>"+
						"<span style='font-size: 13px; color: #000000;'>"+ list[i].productName +"</span>"+
						"</a></strong><ul class='xans-element- xans-product xans-product-listitem spec'>"+
						"<li class='xans-record-'>"+
						"<strong class='title displaynone'>"+
						"<span style='font-size: 12px; color: #6d6d6d;' data-i18n='PRODUCT.PRD_INFO_SUMMARY_DESC'>상품요약정보</span> :</strong>"+
						"<span style='font-size: 12px; color: #6d6d6d;'>"+ list[i].productEx +"</span>"+
						"</li><li class='xans-record-'>"+
						"<strong class='title displaynone'>"+
						"<span style='font-size: 16px; color: #000000;' data-i18n='PRODUCT.PRD_INFO_PRODUCT_PRICE'>판매가</span> :</strong>"+
						"<span style='font-size: 16px; color: #000000;'>"+ comma(list[i].productPrice) +"원</span>"+
						"<span id='span_product_tax_type_text' style=''> </span>"+
						"</li></ul></div></div></li>"
					}
					
					$('#proList').html(""); //위에서 기본 조건틀이 존재하므로 ul태그 안쪽을 비워주는 것
					$('#proList').html(productList); // ul태그 안쪽을 for문으로 갈아치는 거 
				},
				error: function(request, status, error) {
					alert(error);
				}
			});
		}
	} else {
		if(selected == "low"){
			
			$.ajax({
				type:'post',
				url: '/productSeasonAjax.do', //컨트롤러 안쪽 productCategory.do은 map형식으로 리턴하지 않아 따로 ajax.do로 만들어놨음
				data: { priceSel : selected,  productSeason : productSeason}, //선택된 것(hi인지 low인지), 컨트롤러에서 카테고리로 불러오는 xml 건들지 않고 바로 가져다 쓰기 위한것과 어떤 카테고리를 선택했는지 알아야해서 두가지를 가지고 ajax 사용
				dataType:"json",
				success: function(data) {
					var list = data.list;
					var length = list.length; //size를 먼저 끌고 오려고 했지만 length 와 같아 그냥 length 선언후에 사용함 
					
					for(var i=0; i<length; i++){
						productList = productList +
						"<li id='anchorBoxId_21' class='xans-record-'>"+
						"<div class='prdList__item'>"+
						"<div class='thumbnail'>"+
						"<a href='#none;' id='img"+i+"' onclick="+"'movePD"+"('"+ list[i].productNo +"')"+"'>"+
						"<img src='${pageContext.request.contextPath}/resources/img/product"+ list[i].mainImg +"' >"+
						"</a></div><div class='description'>"+
						"<strong class='name'>"+
						"<a href='#none;' id='proName"+i+"' onclick='movePD"+"('"+ list[i].productNo +"')"+"' class=''>"+
						"<span class='title displaynone'>"+
						"<span style='font-size: 13px; color: #000000;' data-i18n='PRODUCT.PRD_INFO_PRODUCT_NAME'>상품명</span> :</span>"+
						"<span style='font-size: 13px; color: #000000;'>"+ list[i].productName +"</span>"+
						"</a></strong><ul class='xans-element- xans-product xans-product-listitem spec'>"+
						"<li class='xans-record-'>"+
						"<strong class='title displaynone'>"+
						"<span style='font-size: 12px; color: #6d6d6d;' data-i18n='PRODUCT.PRD_INFO_SUMMARY_DESC'>상품요약정보</span> :</strong>"+
						"<span style='font-size: 12px; color: #6d6d6d;'>"+ list[i].productEx +"</span>"+
						"</li><li class='xans-record-'>"+
						"<strong class='title displaynone'>"+
						"<span style='font-size: 16px; color: #000000;' data-i18n='PRODUCT.PRD_INFO_PRODUCT_PRICE'>판매가</span> :</strong>"+
						"<span style='font-size: 16px; color: #000000;'>"+ comma(list[i].productPrice) +"원</span>"+
						"<span id='span_product_tax_type_text' style=''> </span>"+
						"</li></ul></div></div></li>"
					}
					
					$('#proList').html(""); //위에서 기본 조건틀이 존재하므로 ul태그 안쪽을 비워주는 것
					$('#proList').html(productList); // ul태그 안쪽을 for문으로 갈아치는 거 
				},
				error: function(request, status, error) {
					alert(error);
				}
			});
		} else if(selected == "hi"){
			
			$.ajax({
				type:'post',
				url: '/productSeasonAjax.do', //컨트롤러 안쪽 productCategory.do은 map형식으로 리턴하지 않아 따로 ajax.do로 만들어놨음
				data: { priceSel : selected,  productSeason : productSeason}, //선택된 것(hi인지 low인지), 컨트롤러에서 카테고리로 불러오는 xml 건들지 않고 바로 가져다 쓰기 위한것과 어떤 카테고리를 선택했는지 알아야해서 두가지를 가지고 ajax 사용
				dataType:"json",
				success: function(data) {
					var list = data.list;
					var length = list.length; //size를 먼저 끌고 오려고 했지만 length 와 같아 그냥 length 선언후에 사용함 
				
					for(var i=0; i<length; i++){ 
						productList = productList +
						"<li id='anchorBoxId_21' class='xans-record-'>"+
						"<div class='prdList__item'>"+
						"<div class='thumbnail'>"+
						"<a href='#none;' id='img"+i+"' onclick="+"'movePD"+"('"+ list[i].productNo +"')"+"'>"+
						"<img src='${pageContext.request.contextPath}/resources/img/product"+ list[i].mainImg +"' >"+
						"</a></div><div class='description'>"+
						"<strong class='name'>"+
						"<a href='#none;' id='proName"+i+"' onclick='movePD"+"('"+ list[i].productNo +"')"+"' class=''>"+
						"<span class='title displaynone'>"+
						"<span style='font-size: 13px; color: #000000;' data-i18n='PRODUCT.PRD_INFO_PRODUCT_NAME'>상품명</span> :</span>"+
						"<span style='font-size: 13px; color: #000000;'>"+ list[i].productName +"</span>"+
						"</a></strong><ul class='xans-element- xans-product xans-product-listitem spec'>"+
						"<li class='xans-record-'>"+
						"<strong class='title displaynone'>"+
						"<span style='font-size: 12px; color: #6d6d6d;' data-i18n='PRODUCT.PRD_INFO_SUMMARY_DESC'>상품요약정보</span> :</strong>"+
						"<span style='font-size: 12px; color: #6d6d6d;'>"+ list[i].productEx +"</span>"+
						"</li><li class='xans-record-'>"+
						"<strong class='title displaynone'>"+
						"<span style='font-size: 16px; color: #000000;' data-i18n='PRODUCT.PRD_INFO_PRODUCT_PRICE'>판매가</span> :</strong>"+
						"<span style='font-size: 16px; color: #000000;'>"+ comma(list[i].productPrice) +"원</span>"+
						"<span id='span_product_tax_type_text' style=''> </span>"+
						"</li></ul></div></div></li>"
					}
					
					$('#proList').html(""); //위에서 기본 조건틀이 존재하므로 ul태그 안쪽을 비워주는 것
					$('#proList').html(productList); // ul태그 안쪽을 for문으로 갈아치는 거 
				},
				error: function(request, status, error) {
					alert(error);
				}
			});
		}
	}
}
</script>
</html>