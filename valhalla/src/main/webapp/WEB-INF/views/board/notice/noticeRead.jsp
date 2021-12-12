<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../common/boardCss.jsp"%>
<%@ include file="../../common/header.jsp"%>
<!DOCTYPE html>
<html lang="ko">
<body>
	<div id="container">
		<div id="contents">
			<div class="xans-element- xans-board xans-board-readpackage-1002 xans-board-readpackage xans-board-1002 ">
				<div class="xans-element- xans-board xans-board-title-1002 xans-board-title xans-board-1002 ">
					<div class="titleArea">
						<h2>
							<font color="#555555">공지사항</font>
						</h2>
					</div>
				</div>
				<div class="xans-element- xans-board xans-board-read-1002 xans-board-read xans-board-1002">
					<div class="ec-base-table typeWrite ">
						<div class="head">
							<h3>${noticeDetail.noticeTitle }</h3>
							<div class="description">
								<span class="name">valhalla호 선장</span>
									<ul class="etcArea">
										<li class=""><span class="txtNum">${noticeDetail.rgstTime }</span></li>
										<li class=""><span>조회</span> <span class="txtNum">0</span></li>
									</ul>
								</div>
							</div>
							<div class="detail">
								<div class="fr-view fr-view-article">${noticeDetail.noticeContent }</div>
							</div>
						</div>
						<div class="ec-base-button gBottom gBreak ">
							<span class="gLeft"> 
								<a href="#none" class="btnNormalFix sizeM" onclick="noticeDelete('${noticeDetail.noticeNo}');">삭제</a> 
								<a href="#none;" class="btnNormalFix sizeM displaynone" onclick="noticeModify('${noticeDetail.noticeNo}');">수정</a>
							</span> 
							<span class="gRight gBreak"> 
								<a href="/noticeList.do" class="btnNormalFix sizeM">목록</a> 
								<a href="" class="btnSubmitFix sizeM displaynone">답변쓰기</a>
							</span>
						</div>
					</div>
				</div>
				<div class="xans-element- xans-board xans-board-commentpackage-1002 xans-board-commentpackage xans-board-1002 ">
					<div class="xans-element- xans-board xans-board-commentform-1002 xans-board-commentform xans-board-1002 ">
						<fieldset>
							<legend>댓글 수정</legend>
							<div class="view">
								<textarea id="comment_modify" name="comment_modify"></textarea>
								<div class="input">
									<span class="inside"> 
										<span> <label for="comment_password">비밀번호</label> 
											<input type="password" id="comment_password" name="comment_password" value="" />
										</span>
									</span> 
								</div>
							</div>
						</fieldset>
					</div>
				</div>
			<!-- Admin only -->
			<!-- // Admin only -->
		</div>
	</div>
	<form id="moveModifyForm" method="post" action="/noticeModify.do">
		<input type="hidden" id="noticeNum" name="noticeNum" value="" />
	</form>
	<form id="noticeDelete" method="post" action="/noticeDelete.do">
		<input type="hidden" id="noticeNo" name="noticeNo" value="" />
	</form>
<%@ include file="../../common/footer.jsp"%>
</body>
<script type="text/javascript">
function noticeModify(noticeNo){
	$('#noticeNum').val(noticeNo);
	console.log(noticeNo);
	$('#moveModifyForm').submit();
}

function noticeDelete(noticeNo){
	$('#noticeNo').val(noticeNo);
	console.log(noticeNo);
	$('#noticeDelete').submit();
}
</script>
</html>