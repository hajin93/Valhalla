<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../../common/myshopwishCss.jsp"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../../common/header.jsp"%>
<link rel="stylesheet" href="https://static.mlb-korea.com/pc/static/css/customer.css">
<meta charset="UTF-8">
</head>
<body>
	<div id="container">
		<div id="contents">
			<div class="myshopArea">
				<%@ include file="../../common/mypageMenu.jsp"%>
				<div module="board_writePackage_4">
					<div module="board_title_4">
						<div class="titleArea">
							<h2>
								<font color="#555555">상품후기 수정</font>
							</h2>
						</div>
					</div>
					<div module="board_write_4">
						<div class="ec-base-box typeProduct">
							<p class="thumbnail">
								<a href="#none;"> 
									<img src="${pageContext.request.contextPath}/resources/img/product${productDetail.mainImg }" onerror="this.src='//img.echosting.cafe24.com/thumb/75x75.gif'" alt="" /></a>
							</p>
							<div class="information">
								<h3>
									<a href="#none;" id="productName">${productDetail.productName }</a>
								</h3>
								<p class="price">${productDetail.productNo }/ ${productDetail.productPrice } / ${productDetail.productColor } / ${productDetail.productSize }</p>
								<br>
								<p class="button">
									<span> <a href="#none" id="" class="btnNormal sizeS" target="_blank">상품상세보기</a></span> 
									<span> <a href="#none" class="btnNormal sizeS" onclick="">주문상품선택</a></span>
								</p>
							</div>
						</div>
						<div class="ec-base-table typeWrite">
						<form id="reviewModifyForm" method="post" action="/reviewModifyComplete.do">
							<input type="hidden" id="reviewNo" name="reviewNo" value="${reviewDetail.reviewNo}">
							<table border="1">
								<caption>글쓰기 폼</caption>
								<colgroup>
									<col style="width: 190px;" />
									<col style="width: auto;" />
								</colgroup>
								<tbody>
									<tr>
										<th scope="row"><label for="boardWriteTitle">제목</label>
											<span class="required">*</span></th>
										<td><input type="text" id="reviewTitle" class="input-style01" name="reviewTitle" value="${reviewDetail.reviewTitle}" style="width: 515px;"></td>
									</tr>
									<tr class="">
										<th scope="row"><label for="boardWriteTitle">작성자</label>
											<span class="required">*</span></th>
										<td><input type="text" id="userName" class="input-style01" name="userName" value="${reviewDetail.userName}" disabled="disabled" style="width: 515px;" >
											<span class="error-msg" id="boardWriteTitle-msg" style="display: none;"></span></td>
									</tr>
									<tr class="">
										<th scope="row"><label for="boardWriteTitle">이메일</label>
											<span class="required">*</span></th>
										<td><input type="text" id="email" class="input-style01" name="email" value="${reviewDetail.email}" disabled="disabled" style="width: 515px;" ></td>
									</tr>
									<tr class="">
										<th scope="row"><label for="boardWriteTitle">평점</label>
											<span class="required">*</span></th>
										<td>
											<input type="text" id="grade" class="input-style01" name="grade" value="${reviewDetail.grade}" style="width: 515px;">
										</td>
									</tr>
									<tr>
										<th scope="row"><label for="boardWriteContent">본문</label>
											<span class="required">*</span></th>
										<td><input type="text" id="reviewContent" name="reviewContent" value="${reviewDetail.reviewContent}" style="width: 515px; height: 150px;" />
											<div class="clearfix">
												<div class="fr">
													<span class="txt13-999"><em class="txt13-000" id="counter">0</em>자/1,000자</span>
												</div>
											</div>
										</td>
									</tr>
								</tbody>
								<tbody class="">
									<tr class="file">
										<th scope="row"><label for="boardWriteTitle">첨부파일1</label>
										</th>
										<td>
											<input type="file" name="uploadFile" value="${reviewDetail.fileName}"/>
										</td>
									</tr>
								</tbody>
							</table>
						</form>
						</div>
						<div class="ec-base-button gBottom">
							<span class="gRight"> <a href="/reviewList.do" class="btnNormalFix sizeM">취소</a> 
								<a href="#none" class="btnSubmitFix sizeM" onclick="updateComplete()">수정</a>
							</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<form action="upload" method="post" enctype="multipart/form-data"></form>
<script type="text/javascript">
function updateComplete(){
	$('#reviewModifyForm').submit();
}
</script>
</html>