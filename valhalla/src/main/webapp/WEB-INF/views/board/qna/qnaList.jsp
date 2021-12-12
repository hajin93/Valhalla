<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../../common/boardCss.jsp"%>
<%@ include file="../../common/header.jsp"%>
<!DOCTYPE html>
<html lang="ko">
<body>
<div id="container">
	<div id="contents">
		<div class="xans-element- xans-board xans-board-listpackage-4 xans-board-listpackage xans-board-4 ">
			<div class="xans-element- xans-board xans-board-title-4 xans-board-title xans-board-4 ">
				<div class="titleArea">
					<h2>
						<font color="#555555">1:1 문의 게시판</font>
					</h2>
				</div>
				<p class="imgArea displaynone"></p>
			</div>
			<div class="xans-element- xans-layout xans-layout-boardinfo ec-base-tab typeMenu gScroll">
				<ul class="menu">
					<li class="xans-record-"><a href="/noticeList.do" class="button">공지사항</a></li>
					<li class="xans-record-"><a href="/reviewList.do" class="button">상품후기</a></li>
					<li class="xans-record-"><a href="/qnaList.do" class="button">1:1문의사항</a></li>
				</ul>
			</div>
			<div class="boardSort">
				<span class="xans-element- xans-board xans-board-replysort-4 xans-board-replysort xans-board-4 "></span>
			</div>
			<!-- 게시글 테이블 시작 -->
			<div class="ec-base-table typeList1 gThumb gBorderClear">
				<table border="1">
					<caption>상품 게시판 목록</caption>
					<colgroup class="xans-element- xans-board xans-board-listheader-4 xans-board-listheader xans-board-4 ">
						<col style="width: 80px;">
						<col style="width: 85px;">
						<col style="width: auto;">
						<col style="width: 100px;" class="displaynone">
						<col style="width: 85px;">
						<col style="width: 90px;" class="">
						<col style="width: 55px;" class="">
						<col style="width: 80px;" class="displaynone">
					</colgroup>
					<thead class="xans-element- xans-board xans-board-listheader-4 xans-board-listheader xans-board-4 ">
						<tr style="">
							<th scope="col" class="chk">번호</th>
							<th scope="col">문의유형</th>
							<th scope="col">제목</th>
							<th scope="col" class="displaynone">카테고리</th>
							<th scope="col">작성자</th>
							<th scope="col" class="">작성일</th>
							<th scope="col" class="">조회</th>
							<th scope="col" class="displaynone">평점</th>
						</tr>
					</thead>
					<c:forEach items="${qnaList }" var="qnaList">
						<tbody class="xans-element- xans-board xans-board-list-4 xans-board-list xans-board-4 center"> 
							<!-- 게시물 반복 부분 시작  -->
							<tr style="background-color: #FFFFFF; color: #555555;" class="xans-record-">
								<td class="chk no">
									<span class="RW">${qnaList.qnaNo }</span>
								</td>
								<td class="thumb">
									<span class="RW">${qnaList.qnaType }</span>
								</td>
								<td class="subject left txtBreak">
									<a href="#none"  onclick="qnaDetail('${qnaList.qnaNo}');" style="color: #555555;">${qnaList.qnaTitle }</a>
									<span class="comment"></span>
									<span style="width: 100vw; height: 100vh;"></span>
								</td>
								<td class="displaynone"></td>
								<td>${qnaList.userName }</td>
								<td class="">${qnaList.qnaTime }</td>
								<td class=""><span class="RTMI">조회</span> 1</td>
							</tr>
							<!-- 게시물 반복 부분 끝 -->
						</tbody>
					</c:forEach>
				</table>
				<p class="xans-element- xans-board xans-board-empty-4 xans-board-empty xans-board-4 message displaynone "></p>
			</div>
			<!-- 게시글 테이블 끝 --> 
			<!-- 검색창 라인 시작 -->
			<div class="xans-element- xans-board xans-board-search-4 xans-board-search xans-board-4 ">
				<fieldset class="boardSearch">
					<legend>게시물 검색</legend>
					<p class="category displaynone"></p>
					<div class="form">
						<!-- 검색기간 설정 시작 -->
						<select id="search_date" name="search_date">
							<option value="week">일주일</option>
							<option value="month">한달</option>
							<option value="month3">세달</option>
							<option value="all">전체</option>
						</select> 
						<!-- 검색기간 설정 끝 -->
						<!-- 검색카테고리 설정 시작 -->
						<select id="search_key" name="search_key">
							<option value="subject">제목</option>
							<option value="writer_name">작성자</option>
						</select> 
						<!-- 검색카테고리 설정 끝 -->
						<input id="search" name="search" class="inputTypeText" placeholder="" value="" type="text"> 
						<a href="#none" class="btnNormal" onclick="BOARD.form_submit('boardSearchForm');">찾기</a>
						<a href="#none" class="btnSubmitFix sizeM" onclick="qnaWrite();">글쓰기</a>
					</div>
				</fieldset>
			</div>
			<!-- 검색창 라인 끝 -->
		</div>
		<!-- 페이징 처리 -->
		<div class="xans-element- xans-board xans-board-paging-4 xans-board-paging xans-board-4 ec-base-paginate typeList">
			<a href="" style="display: none" class="first">첫 페이지</a> 
			<a href="">이전 페이지</a>
			<ol>
				<li class="xans-record-"><a href="" class="this">1</a></li>
			</ol>
			<a href="?board_no=6&amp;page=1">다음 페이지</a> 
			<a href="" style="display: none" class="last">마지막 페이지</a>
		</div>
	</div>
</div>
<form id="moveReadForm" method="POST" action="/qnaRead.do">
	<input type="hidden" id="qnaNo" name="qnaNo" value="" />
</form>	
<%@ include file="../../common/footer.jsp" %>		
</body>
<script type="text/javascript">
function qnaWrite(){
	location.href='/qnaWrite.do';
}
function qnaDetail(qnaNo){
	$('#qnaNo').val(productNo);
	console.log(productNo);
	$('#moveReadForm').submit();
}

</script>
</html>