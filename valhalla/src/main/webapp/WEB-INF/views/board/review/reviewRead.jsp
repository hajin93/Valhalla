<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../../common/boardCss.jsp"%>
<%@ include file="../../common/header.jsp"%>
<!DOCTYPE html>
<html lang="ko">
<body>
	<div id="container">
		<div id="contents">
			<div class="xans-element- xans-board xans-board-readpackage-4 xans-board-readpackage xans-board-4 ">
				<div class="xans-element- xans-board xans-board-title-4 xans-board-title xans-board-4 ">
					<div class="titleArea">
						<h2>
							<font color="#555555">상품 후기</font>
						</h2>
					</div>
				</div>
				<div class="xans-element- xans-board xans-board-product-4 xans-board-product xans-board-4 ec-base-box typeProduct ">
					<p class="thumbnail">
						<a href="/product/regular-fit-crew-neck-t-shirt/18/">
							<img src="${pageContext.request.contextPath}/resources/img/product${productDetail.mainImg }" onerror="this.src='//img.echosting.cafe24.com/thumb/75x75.gif'" alt="">
						</a>
					</p>
					<div class="information">
						<h3>
							<a href="#none" id="productName">${productDetail.productName }</a>
						</h3>
						<p class="price"> <fmt:formatNumber type="number" maxFractionDigits="3" value="${productDetail.productPrice }" />원 <span id="sPrdTaxText"></span></p>
						<p class="button">
							<span id="" class="displaynone">
								<a href="#none" id="" class="btnNormal sizeS" target="_blank">상세보기</a>
							</span> 
							<span class="displaynone">
								<a href="#none" class="btnNormal sizeS" onclick="">상품정보선택</a>
							</span>
							<span class="displaynone">
								<a href="#none" class="btnNormal sizeS" onclick="">주문상품선택</a>
							</span>
						</p>
					</div>
				</div>
				<div class="xans-element- xans-board xans-board-read-4 xans-board-read xans-board-4">
					<div class="ec-base-table typeWrite ">
						<div class="head">
							<h3>${reviewDetail.reviewTitle}</h3>
							<div class="description">
								<span class="name">${reviewDetail.userName}</span>
								<ul class="etcArea">
									<li class=""><span class="txtNum">${reviewDetail.rgstTime}</span></li>
									<li class=""><span>조회</span> <span class="txtNum">37</span></li>
									<c:choose>
										<c:when test="${reviewDetail.grade == '1점'}">
											<li><img src="//img.echosting.cafe24.com/skin/skin/board/icon-star-rating1.svg" alt="1점"> &nbsp;</li>
										</c:when>
										<c:when test="${reviewDetail.grade == '2점'}">
											<li><img src="//img.echosting.cafe24.com/skin/skin/board/icon-star-rating2.svg" alt="2점"> &nbsp;</li>
										</c:when>
										<c:when test="${reviewDetail.grade == '3점'}">
											<li><img src="//img.echosting.cafe24.com/skin/skin/board/icon-star-rating3.svg" alt="3점"> &nbsp;</li>
										</c:when>
										<c:when test="${reviewDetail.grade == '4점'}">
											<li><img src="//img.echosting.cafe24.com/skin/skin/board/icon-star-rating4.svg" alt="4점"> &nbsp;</li>
										</c:when>
										<c:when test="${reviewDetail.grade == '5점'}">
											<li><img src="//img.echosting.cafe24.com/skin/skin/board/icon-star-rating5.svg" alt="5점"> &nbsp;</li>
										</c:when>
									</c:choose>
								</ul>
							</div>
						</div>
						<div class="displaynone ">
							<input type="password" id="password" name="password" value=""> 
							<span class="ec-base-help txtInfo">삭제하려면 비밀번호를 입력하세요.</span>
						</div>
						<div class="attach displaynone"></div>
						<div class="detail">
							<div class="fr-view fr-view-article">
								<p>${reviewDetail.reviewContent}</p><p><br></p>
							</div>
						</div>
					</div>
					<div class="ec-base-button gBottom gBreak ">
						<span class="gLeft"> 
							<a href="#none" class="btnNormalFix sizeM displaynone" onclick="reviewDelete('${reviewDetail.reviewNo}');" >삭제</a> 
							<a href="#none" class="btnNormalFix sizeM displaynone" onclick="reviewModify('${productDetail.productNo}','${reviewDetail.reviewNo}');">수정</a>
						</span> 
						<span class="gRight gBreak"> 
							<a href="/reviewList.do" class="btnNormalFix sizeM">목록</a> 
							<a href="#none" class="btnSubmitFix sizeM displaynone">답변쓰기</a>
						</span>
					</div>
				</div>
			</div>

			<!-- <div class="xans-element- xans-board xans-board-commentpackage-4 xans-board-commentpackage xans-board-4 ">
				<div class="xans-element- xans-board xans-board-commentform-4 xans-board-commentform xans-board-4 ">
					<fieldset>
						<legend>댓글 수정</legend>
						<div class="view">
							<textarea id="comment_modify" name="comment_modify"></textarea>
							<div class="input">
								<span class="inside"> 
									<span> <label for="comment_password">비밀번호</label> 
										<input type="password" id="comment_password" name="comment_password" value="">
									</span>
								</span> 
								<span class="outside"> 
									<span class="secret displaynone"> <label>비밀댓글</label></span> 
									<span class="submit"> 
										<a href="#none" class="btnNormal sizeM" onclick="">취소</a>
										<a href="#none" class="btnSubmit sizeM">수정</a>
									</span>
								</span>
							</div>
						</div>
					</fieldset>
				</div> -->
				<div class="xans-element- xans-board xans-board-commentwrite-4 xans-board-commentwrite xans-board-4 ">
					<!-- 댓글 권한 있음 -->
					<div class="displaynone">
						<fieldset>
							<legend>댓글 입력</legend>
							<h4>댓글달기</h4>
							<div class="comment-box">
								<div class="input">
									<span class="inside displaynone">
										<span> <label for="comment_name">이름</label></span> 
										<span> <label for="comment_password">비밀번호</label></span>
									</span> 
									<span class="outside"> 
										<span class="secret displaynone"><label>비밀댓글</label></span> 
										<span class="ec-base-help displaynone">영문 대소문자/숫자/특수문자 중 2가지 이상 조합, 10자~16자</span> 
										<a href="#none" onclick=""class="btnSubmit displaynone">등록</a>
									</span>
								</div>
							</div>
							<div class="grade-box">
								<span class="grade displaynone"></span> 
								<span class="byte displaynone"> / byte</span>
							</div>
							<div class="captcha displaynone">
								<span class="ec-base-help txtInfo">왼쪽의 문자를 공백없이 입력하세요.(대소문자구분)</span>
							</div>
						</fieldset>
					</div>
					<!-- 댓글 권한 없음 -->
					<div class="">
						<p>회원에게만 댓글 작성 권한이 있습니다.</p>
					</div>
				</div>
			</div>
			<!-- Admin only -->
			<!-- // Admin only -->

		</div>
	</div>
<%@ include file="../../common/footer.jsp"%>
<form id="moveModifyForm" method="POST" action="/reviewModify.do">
	<input type="hidden" id="productNum" name="productNum" value="" />
	<input type="hidden" id="reviewNum" name="reviewNum" value="" />
</form>
<form id="reviewDelete" method="post" action="/reviewDelete.do">
		<input type="hidden" id="reviewNo" name="reviewNo" value="" />
</form>
</body>
<script type="text/javascript">
function reviewModify(productNo, reviewNo){
	$('#productNum').val(productNo);
	console.log(productNo);
	$('#reviewNum').val(reviewNo);
	console.log(reviewNo);
	$('#moveModifyForm').submit();
}
function reviewDelete(reviewNo){
	$('#reviewNo').val(noticeNo);
	console.log(noticeNo);
	$('#reviewDelete').submit();
}
</script>
</html>