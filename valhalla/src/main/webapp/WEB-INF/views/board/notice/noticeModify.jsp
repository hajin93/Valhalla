<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
				<div id="container">
					<div id="contents">
						<div module="board_ModifyPackage_8">
							<div module="board_title_8">
								<div class="titleArea">
									<h2><font color="#555555">공지사항 수정</font></h2>
								</div>
							</div>
							<div module="board_modify_8">
								<div class="ec-base-table typeWrite">
								<form id="noticeModifyForm" method="post" action="/noticeModifyComplete.do">
									<input type="hidden" id="noticeNo" name="noticeNo" value="${noticeDetail.noticeNo}">
									<table border="1">
										<caption>글 수정 폼</caption>
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
													<input type="text" id="noticeTitle" class="input-style01" name="noticeTitle" value="${noticeDetail.noticeTitle }" style="width:515px;">
												</td>
							               </tr>
							               <tr>
							               		<th scope="row">
													<label for="boardWriteTitle">작성자</label> 
													<span class="required">*</span>
												</th>
												<td>valhalla호 선장</td>
							                </tr>
							                <tr>
							                    <th scope="row"><label for="boardWriteContent">본문</label> <span class="required">*</span></th>
												<td>
													<textarea cols="30" rows="10" id="noticeContent" name="noticeContent" style="width:515px; height:150px;">${noticeDetail.noticeContent }</textarea>
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
													<input type="file" id="file" name="file" />
												</td>
							                </tr>
							            </tbody>
						            </table>
						           </form>
						        </div>
								<div class="ec-base-button gBottom">
						            <span class="gLeft RW"><a href="/noticeList.do" class="btnNormalFix sizeM">목록</a></span>
						            <span class="gRight">
						                <a href="/noticeList.do" class="btnNormalFix sizeM">취소</a>
						                <a href="#none;" class="btnSubmitFix sizeM" onclick="updateComplete()">수정하기</a>
						            </span>
						        </div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<%@ include file="../../common/footer.jsp"%>
</body>
<form action="upload" method="post" enctype="multipart/form-data"></form>
<script type="text/javascript">
function updateComplete(){
	$('#noticeModifyForm').submit();
}
</script>
</html>