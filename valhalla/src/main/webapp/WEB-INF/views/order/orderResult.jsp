<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../common/orderformCss.jsp"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>주문완료</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>
<body id="userStyle">
	<header id="header">
		<div class="header">
			<h1 module="Layout_LogoTop">
				<a href="/index.do">Valhalla Mall</a>
			</h1>
			<div class="headerMenu gLeft">
				<span class="btnBack" module="Layout_MobileAction"> 
					<a href="#none" onclick="">뒤로가기</a>
				</span>
			</div>
			<div class="headerMenu gRight">
				<span module="Layout_orderBasketcount" class="btnBasket"> 
					<a href="/cart.do">장바구니</a>
				</span> 
				<a href="/mypage.do" module="Layout_statelogon" class="btnMy">마이쇼핑</a>
			</div>
		</div>
		<div class="titleArea">
			<h1>주문완료</h1>
		</div>
	</header>

	<div id="mCafe24Order" class="typeHeader" module="Order_result" unroll="1">
		<!-- [주문완료정보] -->
		<div class="resultArea">
			<p class="message">
				<strong>고객님의 주문이<br />정상적으로 완료되었습니다.
				</strong>
			</p>
			<div class="resultInfo">
				<div class="ec-base-table gCellNarrow">
					<table border="1">
						<caption>주문정보</caption>
						<colgroup>
							<col style="width: 94px">
							<col style="width: auto">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row">주문번호</th>
								<td class="right"><span class="txtEm">${orderNo }</span></td>
							</tr>
							<tr>
								<th scope="row">결제금액</th>
								<td class="right"><strong class="txtEm"><span><fmt:formatNumber value="${orderPrice }" pattern="#,###" /></span>원</strong></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<div class="ec-base-button gColumn">
			<a href="javascript:void(0);" class="btnEm" id="orderConfirmBtn">주문확인하기</a> 
			<a href="javascript:void(0);" class="btnSubmit" id="orderContinueBtn">쇼핑계속하기</a>
		</div>
	</div>
</body>
<form id="movedForm" method="post" action="/mypageOrderIndex.do">
	<input type="hidden" id="userNo" name="userNo" value=""/>
	<input type="hidden" id="orderNo" name="orderNo" value="${orderNo }"/>
</form>
<script type="text/javascript">
$(function(){
	var user_no = "";
	if(localStorage.getItem('userNo')){
		user_no = localStorage.getItem('userNo');
	}
	
	//주문확인하기
	$('#orderConfirmBtn').click(()=>{
		if(user_no != ""){
			$('#userNo').val(user_no);
		}
		$('#movedForm').submit();
	});
	
	//쇼핑계속하기
	$('#orderContinueBtn').click(()=>{
		
	});
});

</script>
</html>
