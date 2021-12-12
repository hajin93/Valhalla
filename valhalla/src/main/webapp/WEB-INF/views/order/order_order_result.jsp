<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../common/orderformCss.jsp"%>
<!DOCTYPE html>
<html lang="ko">
<head>
   <title>주문완료</title>
    <!--@css(/css/module/order/ec_orderform/form_onetouch.css)-->
    <!-- 사용자 스타일 수정이 필요한 경우, 신규 CSS 파일을 추가하여 #userStyle #mCafe24Order { } 셀렉터로 처리 가능합니다. -->

    <!-- 스마트디자인에서는 JQuery 1.4.4 버전이 내장되어있습니다. 추가로 호출하면 충돌이 생길 수 있습니다. -->
    <!--@js(/layout/basic/js/common.js)-->
    <!--@js(/js/module/order/ec_orderform/orders.js)-->
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
                    <a href="/order/basket.html">장바구니<span class="count {$basket_count_display|display} {$basket_count_display_class}"><span class="{$basket_count_class}">{$basket_count}</span></span></a>
                </span>
            <a href="/myshop/index.html" module="Layout_statelogoff" class="btnMy">로그인</a>
            <a href="/myshop/index.html" module="Layout_statelogon" class="btnMy">마이쇼핑</a>
        </div>
    </div>
    <div class="titleArea">
        <h1>주문완료</h1>
    </div>
</header>

<div id="mCafe24Order" class="typeHeader" module="Order_result" unroll="1">
    <!-- 이값은 지우면 안되는 값입니다.
        $product_weight_display=F
    -->

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
                        <td class="right"><span class="txtEm">{$order_id}</span></td>
                    </tr>
                    <tr>
                        <th scope="row">결제금액</th>
                        <td class="right">
                                    <span class="txtEm">
                                        {$result_order_price_front_head}{$result_order_price_front}{$result_order_price_front_tail}
                                        <span class="refer {$result_order_ref_display|display}">({$result_order_price_back_head}{$result_order_price_back}{$result_order_price_back_tail})</span>
                                    </span>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <!-- [결제수단] -->
    <div class="pannelArea">
        <div class="title">
            <h2>결제수단</h2>
        </div>
        <div class="contents">
            <div class="segment">
                <div class="ec-base-table typeView">
                    <table border="1">
                        <caption>결제수단</caption>
                        <colgroup>
                            <col style="width:94px">
                            <col style="width:auto">
                        </colgroup>
                        <tbody>
                        <tr>
                            <th scope="row">결제수단</th>
                            <td>
                               <!--  {$paymethod_name} -->
                                <div class="methodDetail">무통장입금</div>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <!-- [배송지정보] -->
    <div class="pannelArea">
        <div module="Order_deliverylist">
            <div class="deliveryInfo">
                <div class="title">
                    <h2>배송지{$delivery_idx}</h2>
                </div>
                <div class="contents">
                    <div class="segment">
                        <div class="ec-base-table typeView">
                            <table border="1">
                                <caption>배송지정보</caption>
                                <colgroup>
                                    <col style="width:94px">
                                    <col style="width:auto">
                                </colgroup>
                                <tbody>
                                <tr>
                                    <th scope="row">받는사람</th>
                                    <td>{$rname}({$o_email})</td>
                                </tr>
                                <tr>
                                    <th scope="row">주소</th>
                                    <td>
                                        {$rzipcode} {$raddr}
                                        <div class="{$receive_info_display|display}">
                                            {$store_name}에서 수령예정
                                            <span class="gBlank5">{$store_receive_addr}</span>
                                            <p class="ec-base-help {$store_receive_period_display|display}"><span class="txtNormal">({$store_receive_period})</span></p>
                                            <span class="gBlank5"><button type="button" onclick="{$action_open_store}" class="btnNormal mini">수령지 안내</button></span>
                                        </div>
                                    </td>
                                </tr>
                               
                                <tr>
                                    <th scope="row">연락처</th>
                                    <td>{$rphone_1} <span class="ec-shop-delimiter {$r_phone_delimiter_display|display}"> / </span> {$rphone_2}</td>
                                </tr>
                                <tr>
                                    <th scope="row">배송요청</th>
                                    <td>
                                        {$sc_name}
                                        <span class="gBlank5">{$hope_date}</span>
                                        <span class="gBlank5">{$hope_time}</span>
                                        <span class="gBlank5">{$rmessage}</span>
                                    </td>
                                </tr>
                                <tr class="{$deliverybinding_display|display}">
                                    <th scope="row">주문상품</th>
                                    <td>
                                        <!-- 상품 반복 -->
                                        <div module="Order_deliverybindinglist">
                                            <div class="ec-base-prdInfo">
                                                <div class="prdBox">
                                                    <div class="thumbnail"><a href="/product/detail.html{$param}"><img src="{$product_image}" alt="" width="90" height="90"></a></div>
                                                    <div class="description">
                                                        <strong class="prdName" title="상품명">{$set_product_icon} {$product_name_link}</strong>
                                                        <ul class="info">
                                                            <li title="옵션">
                                                                <p class="option {$option_str_display|display}">{$option_str}</p>
                                                                <ul class="option" module="Order_optionSet">
                                                                    <li><strong>{$product_name}</strong>{$option_str} ({$qty}개)</li>
                                                                    <li><strong>{$product_name}</strong>{$option_str} ({$qty}개)</li>
                                                                </ul>
                                                            </li>
                                                            <li class="quantity">수량: {$product_quantity}개</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div><!-- //참고 -->
                                            <!-- 상품 반복 -->
                                            <div class="ec-base-prdInfo">
                                                <div class="prdBox">
                                                    <div class="thumbnail"><a href="/product/detail.html{$param}"><img src="{$product_image}" alt="" width="90" height="90"></a></div>
                                                    <div class="description">
                                                        <strong class="prdName" title="상품명">{$set_product_icon} {$product_name_link}</strong>
                                                        <ul class="info">
                                                            <li title="옵션">
                                                                <p class="option {$option_str_display|display}">{$option_str}</p>
                                                                <ul class="option" module="Order_optionSet">
                                                                    <li><strong>{$product_name}</strong>{$option_str} ({$qty}개)</li>
                                                                    <li><strong>{$product_name}</strong>{$option_str} ({$qty}개)</li>
                                                                </ul>
                                                            </li>
                                                            <li class="quantity">수량: {$product_quantity}개</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div><!-- //참고 -->
                                        </div>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
           
        </div>
    </div>

    <!-- [주문상품] -->
    <div class="pannelArea">
        <div class="title">
            <h2>주문상품</h2>
        </div>
        <div class="contents">
            <!-- 국내배송상품 주문내역 -->
            <div class="orderArea">

                <div class="{$normal_display|display}" nspace="normal">
                    <div module="Order_normalresultlist">

                        <div class="ec-base-prdInfo">
                            <div class="prdBox">
                                <div class="thumbnail"><a href="/product/detail.html{$param}"><img src="{$product_image}" alt="" width="90" height="90"></a></div>
                                <div class="description">
                                    <strong class="prdName" title="상품명">{$set_product_icon} {$product_name_link}</strong>
                                    <ul class="info">
                                        <li class="{$card_installment_display|display}">무이자할부 상품</li>
                                        <li title="유효기간" class="{$expiration_date_display|display}">{$expiration_date} 내 사용</li>
                                        <li title="옵션">
                                            <p class="option {$product_option_str_display|display}">{$option_str}</p>
                                            <ul class="option" module="Order_optionSet">
                                                <li><strong>{$product_name}</strong>{$option_str} ({$qty}개)</li>
                                                <li><strong>{$product_name}</strong>{$option_str} ({$qty}개)</li>
                                            </ul>
                                        </li>
                                        <li>수량: {$product_quantity}개</li>
                                        <li>
                                            <span id="{$product_purchase_price_div_id}">상품구매금액: {$product_purchase_price_front_head}{$product_purchase_price_front}{$product_purchase_price_front_tail} </span>
                                            <span class="{$product_purchase_ref_display|display}">({$product_purchase_price_back_head}{$product_purchase_price_back}{$product_purchase_price_back_tail})</span>
                                        </li>
                                        <li id="{$product_discount_price_div_id}" class="{$product_discount_price_display|display}">
                                            할인금액: <span class="txtWarn">-{$product_discount_price_front_head}<span id="{$product_discount_price_front_id}">{$product_discount_price_front}</span>{$product_sale_price_front_tail} </span>
                                            <span class="txtWarn {$product_discount_price_ref_display|display}">({$product_discount_price_back_head}{$product_discount_price_back}{$product_discount_price_back_tail})</span></span>
                                        </li>
                                        <li title="배송">기본배송 <span class="{$oversea_able_display|display}">(해외배송가능)</span></li>
                                        <li class="{$product_weight_display|display}">상품중량 : {$product_weight}kg * {$product_quantity}개 = {$total_product_weight}kg</li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="ec-base-prdInfo">
                            <div class="prdBox">
                                <div class="thumbnail"><a href="/product/detail.html{$param}"><img src="{$product_image}" alt="" width="90" height="90"></a></div>
                                <div class="description">
                                    <strong class="prdName" title="상품명">{$set_product_icon} {$product_name_link}</strong>
                                    <ul class="info">
                                        <li class="{$card_installment_display|display}">무이자할부 상품</li>
                                        <li title="유효기간" class="{$expiration_date_display|display}">{$expiration_date} 내 사용</li>
                                        <li title="옵션">
                                            <p class="option {$product_option_str_display|display}">{$option_str}</p>
                                            <ul class="option" module="Order_optionSet">
                                                <li><strong>{$product_name}</strong>{$option_str} ({$qty}개)</li>
                                                <li><strong>{$product_name}</strong>{$option_str} ({$qty}개)</li>
                                            </ul>
                                        </li>
                                        <li>수량: {$product_quantity}개</li>
                                        <li>
                                            <span id="{$product_purchase_price_div_id}">상품구매금액: {$product_purchase_price_front_head}{$product_purchase_price_front}{$product_purchase_price_front_tail} </span>
                                            <span class="{$product_purchase_ref_display|display}">({$product_purchase_price_back_head}{$product_purchase_price_back}{$product_purchase_price_back_tail})</span>
                                        </li>
                                        <li id="{$product_discount_price_div_id}" class="{$product_discount_price_display|display}">
                                            할인금액: <span class="txtWarn">-{$product_discount_price_front_head}<span id="{$product_discount_price_front_id}">{$product_discount_price_front}</span>{$product_sale_price_front_tail} </span>
                                            <span class="txtWarn {$product_discount_price_ref_display|display}">({$product_discount_price_back_head}{$product_discount_price_back}{$product_discount_price_back_tail})</span></span>
                                        </li>
                                        <li title="배송">기본배송 <span class="{$oversea_able_display|display}">(해외배송가능)</span></li>
                                        <li class="{$product_weight_display|display}">상품중량 : {$product_weight}kg * {$product_quantity}개 = {$total_product_weight}kg</li>
                                    </ul>
                                </div>
                            </div>

                        </div>
                    </div>
                    
                </div>


                
            </div>

            
    <!-- [결제정보] -->
    <div class="pannelArea">
        <div class="title">
            <h2>결제정보</h2>
        </div>
        <div class="contents">
            <div class="segment">
                <div class="ec-base-table gCellNarrow">
                    <table border="1">
                        <caption>결제정보 상세</caption>
                        <colgroup>
                            <col style="width:140px">
                            <col style="width:auto">
                        </colgroup>
                        <tbody>
                        <tr>
                            <th scope="row">주문상품</th>
                            <td class="right">{$price_unit_head}{$total_product_base_price}{$price_unit_tail}</td>
                        </tr> 
                        <tr>
                            <th scope="row">배송비</th>
                            <td class="right">+0</td>
                        </tr>
                       
                        </tbody>
                    </table>
                </div>
                <div class="totalPay gBlank10">
                    <h3 class="heading">결제금액</h3>
                    <strong class="txtStrong">
                       <!--  {$result_order_price_front_head}{$result_order_price_front}{$result_order_price_front_tail} -->
                        <span class="refer {$result_order_ref_display|display}">({$result_order_price_back_head}{$result_order_price_back}{$result_order_price_back_tail})</span>
                    </strong>
                </div>
            </div>
        </div>
    </div>
    <div class="ec-base-button gColumn">
        <a href="/myshop/order/list.html" class="btnEm">주문확인하기</a>
        <a href="/" class="btnSubmit">쇼핑계속하기</a>
    </div>
</div>
</body>
</html>
