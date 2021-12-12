<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
					<h2><font color="#555555">1:1 문의</font></h2>
				</div>
			</div>
			<div class="xans-element- xans-board xans-board-product-4 xans-board-product xans-board-4 ec-base-box typeProduct ">
				<p class="thumbnail">
					<a href="/productDetail.do">
						<img id="" src="//ecudemo199138.cafe24.com/web/product/tiny/202107/5442209a622bcb23bb14ed58d3ca4b1a.jpg" onerror="this.src='//img.echosting.cafe24.com/thumb/75x75.gif'" alt="">
					</a>
				</p>
				<div class="information">
					<h3>
						<a href="/product/detail.html?product_no=18" id="">REGULAR FIT CREW-NECK T-SHIRT </a>
					</h3>
					<p class="price"> 28,000원 
						<span id="sPrdTaxText"></span>
					</p>
					<p class="button">
						<span id="" class="displaynone">
							<a href="/productDetail.do" id="" class="btnNormal sizeS" target="_blank">상세보기</a>
						</span> 
						<span class="displaynone">
							<a href="#none" class="btnNormal sizeS" onclick="">상품정보선택</a></span> 
						<span class="displaynone">
							<a href="#none" class="btnNormal sizeS" onclick="">주문상품선택</a></span>
					</p>
				</div>
			</div>
				<div class="xans-element- xans-board xans-board-read-4 xans-board-read xans-board-4">
					<div class="ec-base-table typeWrite ">
						<div class="head">
							<h3>샘플문의 입니다.</h3>
							<div class="description">
								<span class="name"> IBase 
									<span class="displaynone">(ip:)</span>
								</span>
								<ul class="etcArea">
									<li class="">
										<span class="txtNum">2021-07-19 17:40:14</span>
									</li>
									<li class="displaynone displaynone">
										<span>추천</span> 
										<span class="txtNum">
											<a href="#none" class="btnNormal sizeS" onclick="BOARD_READ.article_vote('/exec/front/Board/vote/6?no=4&amp;return_url=%2Farticle%2F%EC%83%81%ED%92%88-qa%2F6%2F4%2F&amp;ce997e898a6872b793f96a34=b8b70756dd1faf5c0e88a83cc643bbdb&amp;board_no=6');">추천하기</a>
										</span>
									</li>
									<li class="">
										<span>조회</span> 
										<span class="txtNum">24</span>
									</li>
									<li class="displaynone">
										<img src="//img.echosting.cafe24.com/skin/skin/board/icon-star-rating0.svg" alt="0점"> &nbsp;
									</li>
								</ul>
							</div>
						</div>
						<div class="displaynone ">
							<input type="password" id="password" name="password" value="" > 
							<span class="ec-base-help txtInfo">삭제하려면 비밀번호를 입력하세요.</span>
						</div>
						<div class="attach displaynone"></div>
						<div class="detail">
							<div class="fr-view fr-view-article">
								<p>샘플문의 입니다.</p>
							</div>
						</div>
					</div>
					<div class="ec-base-button gBottom gBreak ">
						<span class="gLeft"> 
							<a href="#none" onclick="BOARD_READ.article_delete('BoardDelForm','6');" class="btnNormalFix sizeM displaynone">삭제</a> 
							<a href="/board/product/modify.html?board_act=edit&amp;no=4&amp;board_no=6" class="btnNormalFix sizeM displaynone">수정</a>
						</span> 
						<span class="gRight gBreak"> 
							<a href="/consultList.do" class="btnNormalFix sizeM">목록</a> 
							<a href="/board/product/reply.html?board_act=reply&amp;no=4&amp;board_no=6&amp;product_no=18" class="btnSubmitFix sizeM displaynone">답변쓰기</a>
						</span>
					</div>
				</div>
			</form>
		</div>

		<div class="xans-element- xans-board xans-board-commentpackage-4 xans-board-commentpackage xans-board-4 ">
			<div class="xans-element- xans-board xans-board-commentform-4 xans-board-commentform xans-board-4 ">
				<fieldset>
					<legend>댓글 수정</legend>
					<div class="view">
						<textarea id="comment_modify" name="comment_modify"></textarea>
						<div class="input">
							<span class="inside"> 
								<span><label for="comment_password">비밀번호</label> 
									<input type="password" id="comment_password" name="comment_password" value="">
								</span>
							</span> 
							<span class="outside"> 
								<span class="secret displaynone"> <label>비밀댓글</label></span> 
								<span class="submit"> 
									<a href="#none" class="btnNormal sizeM" onclick="BOARD_COMMENT.comment_cancel_ok('commentForm');">취소</a>
									<a href="#none" class="btnSubmit sizeM" onclick="BOARD_COMMENT.comment_update_ok('commentForm');">수정</a>
								</span>
							</span>
						</div>
					</div>
				</fieldset>
			</div>
			
			<!-- <div class="xans-element- xans-board xans-board-commentformsecret-1002 xans-board-commentformsecret xans-board-1002 ">
				<p>
					<input type="password" id="secure_password" name="secure_password" value=""> 
					<span> 
						<a href="#none" class="btnNormal" onclick="BOARD_COMMENT.show_secret_comment('commentSecretForm');">확인</a>
						<a href="#none" class="btnNormal" onclick="BOARD_COMMENT.hide_secret_comment_form('commentSecretForm');">취소</a>
					</span>
				</p>
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
								<span><label for="comment_name">이름</label></span> 
								<span><label for="comment_password">비밀번호</label></span></span> 
								<span class="outside"> 
								<span class="secret displaynone"> <label>비밀댓글</label></span> 
								<span class="ec-base-help displaynone">영문 대소문자/숫자/특수문자 중 2가지 이상 조합, 10자~16자</span> 
									<a href="#none" onclick="" class="btnSubmit displaynone">등록</a>
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

		<div class="xans-element- xans-board xans-board-movement-4 xans-board-movement xans-board-4 ">
			<ul>
				<li class="prev "><strong>이전<i aria-hidden="true" class="icon icoArrowTop"></i></strong><a href="/article/상품-qa/6/7/">상품문의합니다.</a></li>
				<li class="next "><strong>다음<i aria-hidden="true" class="icon icoArrowBottom"></i></strong><a href="/article/상품-qa/6/8/">샘플문의입니다.</a></li>
			</ul>
		</div>
		<!-- Admin only -->
		<!-- // Admin only -->
	</div>
</div>
<%@ include file="../../common/footer.jsp"%>
</body>
</html>