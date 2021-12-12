<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../common/myshopwishCss.jsp"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../../common/header.jsp"%>
<link rel="stylesheet" href="https://static.mlb-korea.com/pc/static/css/customer.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="container">
		<div id="contents">
			<div class="myshopArea">
				<%@ include file="../../common/mypageMenu.jsp"%>
				<div module="board_writePackage_4">
					<div module="board_title_4">
						<div class="titleArea">
							<h2><font color="#555555">상품후기</font></h2>
						</div>
					</div>
					<div module="board_write_4">
						<div class="ec-base-box typeProduct">
							<p class="thumbnail">
								<a href="#none;">
									<img src="${pageContext.request.contextPath}/resources/img/product${productDetail.get(0).mainImg }" onerror="this.src='//img.echosting.cafe24.com/thumb/75x75.gif'" alt="" /></a>
							</p>
							<div class="information">
								<h3>
									<a href="#none;" id="productName">${productDetail.get(0).productName }</a>
								</h3>
								<p class="price">${productDetail.get(0).productNo } / ${productDetail.get(0).productColor } / ${productDetail.get(0).productSize }</p><br>
								<p class="button">
									<span id="" class="">
										<a href="#none" id="" class="btnNormal sizeS" target="_blank">상품상세보기</a>
									</span>
									<span class="">
										<a href="#none" class="btnNormal sizeS" onclick="">주문상품선택</a>
									</span>
								</p>
							</div>
						</div>

						<div class="ec-base-table typeWrite">
							<table border="1">
								<caption>글쓰기 폼</caption>
								<colgroup>
									<col style="width: 190px;" />
									<col style="width: auto;" />
								</colgroup>
								<tbody>
									<tr>
						               	<th scope="row">
											<label for="boardWriteTitle">제목</label> 
											<span class="required">*</span>
										</th>
										<td>
											<input type="text" id="boardWriteTitle" class="input-style01" name="csoMtmInq.inqSj" style="width:515px;">
											
										</td>
					               </tr>
					               <tr class="">
					               		<th scope="row">
											<label for="boardWriteTitle">작성자</label> 
											<span class="required">*</span>
										</th>
										<td>
											<input type="text" id="boardWriteTitle" class="input-style01" name="csoMtmInq.inqSj" style="width:515px;">
											<span class="error-msg" id="boardWriteTitle-msg" style="display:none;"></span>
										</td>
					                </tr>
					                <tr class="">
					                    <th scope="row">
											<label for="boardWriteTitle">이메일</label> 
											<span class="required">*</span>
										</th>
										<td>
											<input type="text" id="boardWriteTitle" class="input-style01" name="csoMtmInq.inqSj" style="width:515px;">
										</td>
					                </tr>
									<tr class="">
										<th scope="row"><label for="boardWriteTitle">평점</label> <span class="required">*</span></th>
										<td>
											<input type="text" id="boardWriteTitle" class="input-style01" name="csoMtmInq.inqSj" style="width: 515px;"></td>
									</tr>
									<tr>
					                    <th scope="row"><label for="boardWriteContent">본문</label> <span class="required">*</span></th>
										<td>
											<textarea cols="30" rows="10" id="boardWriteContent" style="width:515px; height:150px;"></textarea>
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
					                    <th scope="row">
											<label for="boardWriteTitle">첨부파일1</label>
										</th>
										<td>
											<a type="button" class="btnNormal sizeS">파일 첨부</a>
												<input type="text" id="boardWriteTitle" class="input-style01" name="csoMtmInq.inqSj" style="width:250px;">
											<a type="button" class="btnNormal sizeS">삭제</a>
										</td>
					                </tr>
					                <tr class="file">
					                    <th scope="row">
											<label for="boardWriteTitle">첨부파일2</label>
										</th>
										<td>
											<a type="button" class="btnNormal sizeS">파일 첨부</a>
												<input type="text" id="boardWriteTitle" class="input-style01" name="csoMtmInq.inqSj" style="width:250px;">
											<a type="button" class="btnNormal sizeS">삭제</a>
										</td>
					                </tr>
					            </tbody>
							</table>
						</div>
						<div class="ec-base-button gBottom">
							<span class="gLeft RW"> 
								<a href="#none" class="btnNormal sizeM" onclick="">관리자 답변보기</a>
							</span> 
							<span class="gRight"> 
								<a href="/reviewList.do" class="btnNormalFix sizeM">취소</a> 
								<a href="#none" class="btnSubmitFix sizeM" onclick="">등록</a>
							</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../../common/footer.jsp"%>
</body>
</html>