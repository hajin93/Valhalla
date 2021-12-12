<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../common/myshopwishCss.jsp"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../../common/header.jsp"%>
<link rel="stylesheet" href="https://static.mlb-korea.com/pc/static/css/customer.css">
</head>
<body>
	<div id="container">
		<div id="contents">
			<div module="board_ModifyPackage_8">
				<div module="board_title_8">
					<div class="titleArea">
						<h2><font color="#555555">공지사항 쓰기</font></h2>
					</div>
				</div>
				<div module="board_modify_8">
					<div class="ec-base-table typeWrite">
					
						<table border="1">
							<caption>글 쓰기 폼</caption>
							<colgroup>
								<col style="width: 190px;" />
								<col style="width: auto;" />
							</colgroup>
							<tbody>
								<tr>
									<th scope="row"><label for="boardWriteTitle">제목</label> <span class="required">*</span></th>
									<td>
										<input type="text" id="title" class="input-style01" name="title" style="width: 515px;"> 
										<span class="error-msg" id="boardWriteTitle-msg">에러메세지</span>
									</td>
								</tr>
								<tr>
									<th scope="row"><label for="boardWriteTitle">작성자</label> <span class="required">*</span></th>
									<td>valhalla호 선장</td>
								</tr>
								<tr>
									<th scope="row"><label for="boardWriteContent">본문</label><span class="required">*</span></th>
									<td>
										<textarea cols="30" rows="10" id="content" style="width: 515px; height: 150px;"></textarea>
										<span class="error-msg" id="boardWriteTitle-msg">에러메세지</span>
									</td>
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
			        </div>
					<div class="ec-base-button gBottom">
			            <span class="gLeft RW"><a href="/noticeList.do" class="btnNormalFix sizeM">목록</a></span>
			            <span class="gRight">
			                <a href="/noticeList.do" class="btnNormalFix sizeM">취소</a>
			                <a href="#none;" id="signupBtn" class="btnSubmitFix sizeM">등록하기</a>
			            </span>
			        </div>
				</div>
			</div>
		</div>
	</div>
<form action="upload" method="post" enctype="multipart/form-data"></form>
<form id="writeComplete" method="post" action="/noticeWriteComplete.do">
	<input type="hidden" id="noticeTitle" name="noticeTitle" value="" />
	<input type="hidden" id="noticeContent" name="noticeContent" value="" />
	<input type="hidden" id="rgstTime" name="rgstTime" value=""/>
	<input type="hidden" id="udtTime" name="udtTime" value=""/>
	<input type="hidden" id="fileName" name="fileName" value="" />
</form>
<%@ include file="../../common/footer.jsp"%>
</body>
<script type="text/javascript">
$(document).ready(function(){
	$('#signupBtn').click(()=>{
		var title = $('#title').val();
		var content = $('#content').val();
		var file = $('#file').val();
		
		if(title == ""){
			alert("제목을 입력해주세요.");
			$('#noticeTitle').focus();
			return;
		}

		if(content == ""){
			alert("내용을 입력해주세요.");
			$('#noticeContent').focus();
			return;
		}
		
		var date = calDate();
		
		$("#noticeTitle").val(title); 	
		$("#noticeContent").val(content);
		$('#rgstTime').val(date);
		$('#udtTime').val(date);
		
		$("#fileName").val(file); 	
		
		$('#writeComplete').submit();
	});
});

</script>
</html>