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
<div module="myshop_AddrList" class="ec-base-layer">
    <!--@css(/css/module/myshop/addrList_pop.css)-->
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

        <div class="ec-base-table typeList">
            <table border="1" >
                <caption>배송 주소록 목록</caption>
                <colgroup>
                    <col style="width:27px" />
                    <col style="width:80px" />
                    <col style="width:100px" />
                    <col style="width:90px" />
                    <col style="width:100px" />
                    <col style="width:100px" />
                    <col style="width:auto" />
                    <col style="width:87px" />
                </colgroup>
                <tbody class="head">
                    <tr>
                        <td scope="col"><span class="{$list_display|display}">{$sCheckAll}</span></td>
                        <td scope="col">주소록 고정</th>
                        <td scope="col">배송지명</td>
                        <td scope="col">수령인</td>
                        <td scope="col">일반전화</td>
                        <td scope="col">휴대전화</td>
                        <td scope="col">주소</td>
                        <td scope="col">배송지관리</td>
                    </tr>
                </tbody>
            </table>
            <div class="scroll">
                <table border="1" >
                    <caption>배송 주소록 목록</caption>
                    <colgroup>
                        <col style="width:27px" />
                        <col style="width:80px" />
                        <col style="width:100px" />
                        <col style="width:90px" />
                        <col style="width:100px" />
                        <col style="width:100px" />
                        <col style="width:auto" />
                        <col style="width:70px" />
                    </colgroup>
                    <tbody class="{$list_display|display} center">
                        <tr>
                            <td>{$checkbox}</td>
                            <td><a href="{$fix_url}" class="btnNormal sizeS {$notfix_display|display}">해제</a><a href="{$fix_url}" class="btnEm sizeS {$fix_display|display}">고정</a><span class="{$default_img_display|display}">-</span></td>
                            <td><img src="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/ico_addr_default.gif" class="{$default_img_display|display}" alt="기본" /> {$ma_rcv_title}</td>
                            <td>{$ma_rcv_name}</td>
                            <td>{$ma_rcv_phone}</td>
                            <td>{$ma_rcv_mobile_no}</td>
                            <td class="left">({$ma_rcv_zipcode}){$ma_rcv_addr1} {$ma_rcv_addr2}</td>
                            <td>
                                <a href="#none" class="btnSubmit sizeS" onclick="{$action_order}">적용</a>
                                <span class="gBlank10"><a href="modify.html?ma_idx={$ma_idx}" class="btnNormal sizeS">수정</a></span>
                            </td>
                        </tr>
                        <tr>
                            <td>{$checkbox}</td>
                            <td><a href="{$fix_url}" class="btnNormal sizeS {$notfix_display|display}">해제</a><a href="{$fix_url}" class="btnEm sizeS {$fix_display|display}">고정</a><span class="{$default_img_display|display}">-</span></td>
                            <td><img src="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/ico_addr_default.gif" class="{$default_img_display|display}" alt="기본" /> {$ma_rcv_title}</td>
                            <td>{$ma_rcv_name}</td>
                            <td>{$ma_rcv_phone}</td>
                            <td>{$ma_rcv_mobile_no}</td>
                            <td class="left">({$ma_rcv_zipcode}){$ma_rcv_addr1} {$ma_rcv_addr2}</td>
                            <td>
                                <a href="#none" class="btnSubmit sizeS" onclick="{$action_order}">적용</a>
                                <span class="gBlank10"><a href="modify.html?ma_idx={$ma_idx}" class="btnNormal sizeS">수정</a></span>
                            </td>
                        </tr>
                    </tbody>
                    <tbody class="{$nodata_display|display}">
                        <tr>
                            <td colspan="8" class="message">등록된 주소가 없습니다.</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <div class="ec-base-button">
        <a href="#none" onclick="{$action_delete}; return false;" class="btnNormalFix sizeM {$delete_display|display}">선택 주소록 삭제</a>
        <a href="register.html" class="btnSubmitFix sizeM">배송지 등록</a>
    </div>
</div>

</body>
</html>