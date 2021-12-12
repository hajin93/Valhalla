<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--@layout(/layout/basic/popup.html)-->
<div module="myshop_AddrRegister" class="ec-base-layer">
    <!--@css(/css/module/myshop/addrRegister_pop.css)-->
    <!--
        $return_url = /myshop/addr_popup/list.html
    -->
    <div class="header">
        <h1>배송 주소록 관리</h1>
    </div>

    <div class="content">
        <div class="ec-base-help">
            <h2>배송주소록 유의사항</h2>
            <div class="inner">
                <ul>
                    <li>배송 주소록은 최대 10개까지 등록할 수 있으며, 별도로 등록하지 않을 경우 최근 배송 주소록 기준으로 자동 업데이트 됩니다.</li>
                    <li>자동 업데이트를 원하지 않을 경우 주소록 고정 선택을 선택하시면 선택된 주소록은 업데이트 대상에서 제외됩니다.</li>
                    <li>기본 배송지는 1개만 저장됩니다. 다른 배송지를 기본 배송지로 설정하시면 기본 배송지가 변경됩니다.</li>
                </ul>
            </div>
        </div>

        <div class="ec-base-table typeWrite">
            <table border="1" >
                <caption>배송 주소록 등록</caption>
                <colgroup>
                    <col style="width:120px" />
                    <col style="width:auto" />
                </colgroup>
                <tbody>
                    <tr>
                        <th scope="row">배송지명 <img src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg" class="icon icoRequired" alt="필수" /></th>
                        <td>{$form.ma_rcv_title}</td>
                    </tr>
                    <tr>
                        <th scope="row">성명 <img src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg" class="icon icoRequired" alt="필수" /></th>
                        <td>{$form.ma_rcv_name}</td>
                    </tr>
                    <tr>
                        <th scope="row">주소</th>
                        <td>
                            {$form.address_zip1}
                            <a href="#none" class="btnNormal" onclick="{$action_find_address}" id="{$btn_find_post}">우편번호</a><br />
                            {$form.address_addr1} 기본주소<br />
                            {$form.address_addr2} 나머지주소<span class="{$addr2_word_display|display}">(선택입력가능)</span>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">일반전화 <span class="{$phone1_display|display}"><img src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg" class="icon icoRequired" alt="필수" /></span></th>
                        <td class="formGroup code">{$form.ma_rcv_phone}</td>
                    </tr>
                    <tr>
                        <th scope="row">휴대전화 <span class="{$phone2_display|display}"><img src="//img.echosting.cafe24.com/skin/skin/common/ico_required.svg" class="icon icoRequired" alt="필수" /></span></th>
                        <td class="formGroup code">{$form.ma_rcv_mobile_no}</td>
                    </tr>
                    <tr class="right">
                        <td colspan="2">{$form.ma_main_flag}</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>

    <div class="ec-base-button">
        <a href="list.html" class="btnNormalFix sizeM">취소</a>
        <a href="#none" class="btnSubmitFix sizeM" onclick="{$action_check}">등록</a>
    </div>
</div>
</body>
</html>