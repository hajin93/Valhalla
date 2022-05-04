<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../common/myshopwishCss.jsp"%>
<%@ include file="../common/header.jsp"%>

<div id="myshopMain" module="myshop_main">
  <hr class="layout">
   <div id="container">
      <div id="contents">
         <span class="xans-element- xans-layout xans-layout-mobileaction RTMB ">
            <a href="#none" onclick="history.go(-1);return false;">
               <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24" class="icon">
                  <path stroke="#000" stroke-width="1.5" d="M9.826 20L2 12.5 9.826 5M2 12.5h20"></path>
               </svg>뒤로가기
            </a>
         </span>
         <div class="path">
            <span>현재 위치</span>
            <ol>
               <li><a href="javascript:void(0);">홈</a></li>
               <li><a href="javascript:void(0);">마이쇼핑</a></li>
               <li title="현재 위치"><strong>주문내역조회</strong></li>
            </ol>
         </div>
         <div class="myshopArea">
            <div class="titleArea titleArea--myshop">
               <h2>주문내역조회</h2>
            </div>
            <div class="xans-element- xans-myshop xans-myshop-wishlist xans-record-">
               <div class="xans-element- xans-myshop xans-myshop-wishlistitem">
                  <div class="ec-base-prdInfo gCheck xans-record-">
                     <div class="contents">
                     	<c:if test="${list == null }">
                        <br/>주문내역이 없습니다.<br/>
                        </c:if>
                        <c:if test="${list != null }">
                        <div class="{$basic_display|display}">
                           <div module="Myshop_OrderHistoryDetailBasic">
                           
                              <!-- 상품 한 덩어리 -->
                              <c:forEach var="list" items="${list }">
                              <div class="ec-base-prdInfo">
                                 <div class="prdBox">
                                    <div class="thumbnail">
                                       <img src="${pageContext.request.contextPath}/resources/img/product${list.mainImg}" alt="상품이미지" onerror="this.src='//img.echosting.cafe24.com/thumb/img_product_small.gif';" width="83" height="83" />
                                    </div>
                                    <div class="description">
                                       <strong class="prdName" title="상품명">${list.productName}</strong>
                                       <ul class="optionGroup" module="Myshop_optionSet">
                                          <li>
                                             <span class="product">주문번호 : ${list.productNo}</span>
                                          </li>
                                       </ul>
                                       <ul class="info">
                                          <c:if test="${list.orderStatus == null }">
                                          	<li>배송 : 상품준비중</li>
                                          </c:if>
                                          <c:if test="${list.orderStatus != null }">
                                          	<li>배송 : ${list.orderStatus }</li>
                                          </c:if>
                                          <li>수량 : ${list.quantity }개</li>
                                       </ul>
                                    </div>
                                 </div>
                                 <div class="prdFoot" title="주문처리상태">
                                    <div class="gLeft">
                                       <span class="txtStatus">${list.orderStatus}</span>
                                    </div>
                                    <div class="gRight">
                                       <a href="javascript:void(0);" class="btnNormal sizeS {$withdraw_cancel_display|display}" id="orderCancel">주문취소</a>
                                       <a href="javascript:void(0);" class="btnNormal sizeS {$withdraw_exchange_display|display}" id="trade">교환신청</a>
                                       <a href="javascript:void(0);" class="btnNormal sizeS {$withdraw_return_display|display}" id="rollback">반품신청</a>
                                       <a href="javascript:void(0);" class="btnNormal sizeS {$withdraw_return_display|display}" id="detail">상세보기</a>
                                    </div>
                                 </div>
                              </div>
                              </c:forEach>
                              <!-- 상품 한 덩어리 -->
                           </div>
                        </div>
                        </c:if>
                     </div>
                  </div>
               </div>
            </div>
            <%@ include file="../common/mypageMenu.jsp"%>
         </div>
      </div>
      <hr class="layout">
   </div>
   <hr class="layout">
   <%@ include file="../common/footer.jsp"%>
</body>
<script type="text/javascript">
$(()=>{
	let value = ["orderCancel", "trade", "rollback", "detail"];
	
	$.each(value ,(idx ,val)=>{
		$('#'+val).click(()=>{
			
		});
	});
});
</script>
</html>