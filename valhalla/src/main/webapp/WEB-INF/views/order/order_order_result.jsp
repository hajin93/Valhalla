<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../common/orderformCss.jsp"%>
<!DOCTYPE html>
<html lang="ko">
<head>
   <title>주문완료</title>
</head>
<body id="userStyle">

<header id="header">
    <div class="header">
        <h1 module="Layout_LogoTop"><a href="/index.html">Valhalla Mall</a></h1><!-- PC는 {$mall_name} / 모바일에서는 {$mobile_title} 변수 사용-->
        <div class="headerMenu gLeft">
                <span class="btnBack" module="Layout_MobileAction">
                    <a href="#none" onclick="{$go_back}">뒤로가기</a>
                </span>
        </div>
        <div class="headerMenu gRight">
                <span module="Layout_orderBasketcount" class="btnBasket">
                    <a href="/order/basket.html">장바구니</a>
                </span>
            <a href="/myshop/index.html" module="Layout_statelogon" class="btnMy">마이쇼핑</a>
        </div>
    </div>
    <div class="titleArea">
        <h1>주문완료</h1>
    </div>
</header>

<div id="mCafe24Order" class="typeHeader" module="Order_result" unroll="1">
    <!-- [주문완료정보] -->
    <div class="resultArea">
        <p class="message"><strong>고객님의 주문이<br />정상적으로 완료되었습니다.</strong></p>
        <div class="resultInfo">
            <div class="ec-base-table gCellNarrow">
                <table border="1">
                    <caption>주문정보</caption>
                    <colgroup>
                        <col style="width:94px">
                        <col style="width:auto">
                    </colgroup>
                    <tbody>
                    <tr>
                        <th scope="row">주문번호</th>
                        <td class="right"><span class="txtEm">주문번호</span></td>
                    </tr>
                    <tr>
                        <th scope="row">결제금액</th>
                        <td class="right"><span class="txtEm">주문금액</span></td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <div class="ec-base-button gColumn">
        <a href="/" class="btnEm">주문확인하기</a>
        <a href="/" class="btnSubmit">쇼핑계속하기</a>
    </div>
</div>
</body>
</html>