<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../common/myshopwishCss.jsp" %>
<%@ include file="../../common/header.jsp" %>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://static.mlb-korea.com/pc/static/css/customer.css">
<meta charset="UTF-8">
</head>
<body>
<div id="container">
	<div id="contents">
		<div class="myshopArea">
		<%@ include file="../../common/mypageMenu.jsp" %>
			<div id="container">
				<div id="contents">
					<div module="board_ModifyPackage_8"> 
					    <div module="board_title_8">
					        <div class="titleArea">
					            <h2><font color="#555555">1:1 문의 쓰기</font></h2>
					        </div>
					    </div>
					    
					    <div module="board_modify_8">
					        <div class="ec-base-table typeWrite">
					            <table border="1" >
						            <caption>글 쓰기 폼</caption>
						            <colgroup>
						                <col style="width:190px;" />
						                <col style="width:auto;" />
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
						               <tr class="{$config.is_login|display}">
						               		<th scope="row">
												<label for="boardWriteTitle">작성자</label> 
												<span class="required">*</span>
											</th>
											<td>
												<input type="text" id="boardWriteTitle" class="input-style01" name="csoMtmInq.inqSj" style="width:515px;">
												<span class="error-msg" id="boardWriteTitle-msg" style="display:none;"></span>
											</td>
						                </tr>
						                <tr class="{$config.use_write_email|display}">
						                    <th scope="row">
												<label for="boardWriteTitle">이메일</label> 
												<span class="required">*</span>
											</th>
											<td>
												<input type="text" id="boardWriteTitle" class="input-style01" name="csoMtmInq.inqSj" style="width:515px;">
											</td>
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
						            <tbody class="{$config.use_attach|display}">
						                <tr class="file">
						                    <th scope="row">
												<label for="boardWriteTitle">첨부파일1</label>
											</th>
											<td>
												<input type="file" name="uploadFile" />
											</td>
						                </tr>
						            </tbody>
					            </table>
					        </div>
					        <div class="ec-base-button gBottom">
					            <span class="gLeft RW">
					            	<a href="#none;" class="btnNormalFix sizeM" onclick="">목록</a>
					            </span>
					            <span class="gRight">
					                <a href="#none;" class="btnNormalFix sizeM" onclick="">취소</a>
					                <a href="#none;" class="btnSubmitFix sizeM" onclick="">등록하기</a>
					            </span>
					        </div>
					    </div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="../../common/footer.jsp" %>
</body>
<form action="upload" method="post" enctype="multipart/form-data"></form>
<script type="text/javascript">

</script>
</html>