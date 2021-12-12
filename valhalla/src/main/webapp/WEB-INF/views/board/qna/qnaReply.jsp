<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../common/myshopwishCss.jsp" %>
<%@ include file="../../common/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://static.mlb-korea.com/pc/static/css/customer.css">
</head>
<body>
<div id="container">
	<div id="contents">
		<div module="board_ModifyPackage_8">
			<div module="board_title_8">
				<!-- <div class="path">
					<span>현재 위치</span>
					<ol>
						<li><a href="/index.do">홈</a></li>
						<li><a href="/consultList.do">1:1문의 게시판</a></li>
						<li title="현재 위치"><strong>1:1문의 답변</strong></li>
					</ol>
				</div> -->
				<div class="titleArea">
					<h2><font color="#555555">1:1 문의 답변</font></h2>
				</div>
			</div>
			<div module="board_modify_8">
				<div class="ec-base-table typeWrite">
					<table border="1">
						<caption>글 답변 폼</caption>
						<colgroup>
							<col style="width: 190px;" />
							<col style="width: auto;" />
						</colgroup>
						<tbody>
							<tr>
								<th scope="row"><label for="boardWriteTitle">제목</label> <span class="required">*</span></th>
								<td>
									<input type="text" id="boardWriteTitle" class="input-style01" name="csoMtmInq.inqSj" style="width: 515px;"> 
									<span class="error-msg" id="boardWriteTitle-msg" style="display: none;"></span>
								</td>
							</tr>
							<tr class="{$config.is_login|display}">
								<th scope="row"><label for="boardWriteTitle">작성자</label> <span class="required">*</span></th>
								<td>
									<input type="text" id="boardWriteTitle" class="input-style01" name="csoMtmInq.inqSj" style="width: 515px;"> 
									<span class="error-msg" id="boardWriteTitle-msg" style="display: none;"></span>
								</td>
							</tr>
							<tr>
								<th scope="row"><label for="boardWriteContent">본문</label>
									<span class="required">*</span></th>
								<td><textarea cols="30" rows="10" id="boardWriteContent" style="width: 1000; height: 500px;"></textarea></td>
							</tr>
						</tbody>
						<tbody class="{$config.use_attach|display}">
							<tr class="file">
								<th scope="row"><label for="boardWriteTitle">첨부파일1</label></th>
								<td>
									<input type="text" id="boardWriteTitle" class="input-style01" name="csoMtmInq.inqSj" style="width: 250px;"> 
									<a type="button" class="btnNormal sizeS">파일 첨부</a> 
									<a type="button" class="btnNormal sizeS">삭제</a></td>
							</tr>
							<tr class="file">
								<th scope="row"><label for="boardWriteTitle">첨부파일2</label></th>
								<td>
									<input type="text" id="boardWriteTitle" class="input-style01" name="csoMtmInq.inqSj" style="width: 250px;"> 
									<a type="button" class="btnNormal sizeS">파일 첨부</a> 
									<a type="button" class="btnNormal sizeS">삭제</a>
								</td>
							</tr>
							<tr class="file">
								<th scope="row"><label for="boardWriteTitle">첨부파일3</label></th>
								<td>
									<input type="text" id="boardWriteTitle" class="input-style01" name="csoMtmInq.inqSj" style="width: 250px;"> 
									<a type="button" class="btnNormal sizeS">파일 첨부</a> 
									<a type="button" class="btnNormal sizeS">삭제</a>
								</td>
							</tr>
							<tr class="file">
								<th scope="row"><label for="boardWriteTitle">첨부파일4</label></th>
								<td>
									<input type="text" id="boardWriteTitle" class="input-style01" name="csoMtmInq.inqSj" style="width: 250px;"> 
									<a type="button" class="btnNormal sizeS">파일 첨부</a> 
									<a type="button" class="btnNormal sizeS">삭제</a>
								</td>
							</tr>
							<tr class="file">
								<th scope="row"><label for="boardWriteTitle">첨부파일5</label></th>
								<td>
									<input type="text" id="boardWriteTitle" class="input-style01" name="csoMtmInq.inqSj" style="width: 250px;"> 
									<a type="button" class="btnNormal sizeS">파일 첨부</a> 
									<a type="button" class="btnNormal sizeS">삭제</a>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="ec-base-button gBottom">
					<span class="gLeft RW">
						<a href="/consultList.do" class="btnNormalFix sizeM">목록</a>
					</span> 
					<span class="gRight"> 
						<a href="/consultList.do" class="btnNormalFix sizeM">취소</a> 
						<a href="" class="btnSubmitFix sizeM" onclick="{$action_modify}">답변하기</a>
					</span>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="../../common/footer.jsp" %>
</body>
</html>