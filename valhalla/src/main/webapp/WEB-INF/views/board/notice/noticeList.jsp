<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../../common/boardCss.jsp"%>
<%@ include file="../../common/header.jsp"%>
<!DOCTYPE html>
<html lang="ko">
<body>
<div id="container">
	<div id="contents">
		<div class="xans-element- xans-board xans-board-listpackage-1002 xans-board-listpackage xans-board-1002 ">
			<div class="xans-element- xans-board xans-board-title-1002 xans-board-title xans-board-1002 ">
				<div class="titleArea">
					<h2>
						<font color="#555555">공지사항</font>
					</h2>
				</div>
				<p class="imgArea"></p>
			</div>
			<div
				class="xans-element- xans-layout xans-layout-boardinfo ec-base-tab typeMenu gScroll">
				<ul class="menu">
					<li class="xans-record-"><a href="/noticeList.do" class="button">공지사항</a></li>
					<li class="xans-record-"><a href="/reviewList.do" class="button">상품후기</a></li>
					<li class="xans-record-"><a href="/qnaList.do" class="button">1:1문의사항</a></li>
				</ul>
			</div>
			<div class="boardSort">
				<span class="xans-element- xans-board xans-board-replysort-1002 xans-board-replysort xans-board-1002 "></span>
			</div>
			<div class="ec-base-table typeList1 gBorderClear">
				<table border="1">
					<caption>게시판 목록</caption>
					<colgroup
						class="xans-element- xans-board xans-board-listheader-1002 xans-board-listheader xans-board-1002 ">
						<col style="width: 80px;">
						<col style="width: auto;">
						<col style="width: 100px;" class="displaynone">
						<col style="width: 150px;">
						<col style="width: 90px;" class="">
						<col style="width: 74px;" class="">
						<col style="width: 94px;" class="displaynone">
					</colgroup>
					<thead class="xans-element- xans-board xans-board-listheader-1002 xans-board-listheader xans-board-1002 ">
						<tr style="">
							<th scope="col" class="chk">번호</th>
							<th scope="col">제목</th>
							<th scope="col" class="displaynone">카테고리</th>
							<th scope="col">작성자</th>
							<th scope="col" class="">작성일</th>
							<th scope="col" class="">조회</th>
							<th scope="col" class="displaynone">평점</th>
						</tr>
					</thead>
					<c:forEach items="${noticeList }" var="noticeList">
						<tbody class="xans-element- xans-board xans-board-list-1002 xans-board-list xans-board-1002 center">
							<tr style="background-color: #FFFFFF; color: #555555;" class="xans-record-">
								<td class="chk no"><span class="RW">${noticeList.noticeNo }</span></td>
								<td class="subject left txtBreak">
									<a href="#none" onclick="noticeDetail('${noticeList.noticeNo}');" style="color: #555555;">${noticeList.noticeTitle }</a><span class="comment"></span>
								</td>
								<td class="displaynone"></td>
								<td>valhalla호 선장</td>
								<td class="">${noticeList.rgstTime }</td>
								<td class=""><span class="RTMI">조회</span> 0</td>
								<td class="displaynone">
									<img src="//img.echosting.cafe24.com/skin/skin/board/icon-star-rating0.svg" alt="0점">
								</td>
							</tr>
						</tbody>
					</c:forEach>
				</table>
			</div>
			<div class="xans-element- xans-board xans-board-search-1002 xans-board-search xans-board-1002 ">
				<fieldset class="boardSearch">
					<legend>게시물 검색</legend>
					<div class="form">
						<select id="search_date" name="search_date">
							<option value="week">일주일</option>
							<option value="month">한달</option>
							<option value="month3">세달</option>
							<option value="all">전체</option>
						</select> 
						<select id="search_key" name="search_key">
							<option value="subject">제목</option>
							<option value="content">내용</option>
							<option value="writer_name">작성자</option>
						</select> 
						<input type="text" id="search" name="search" class="inputTypeText" placeholder="" value="" > 
						<a href="#none" class="btnNormal" onclick="">찾기</a>
						<a href="/noticeWrite.do" class="btnSubmitFix sizeM">글쓰기</a> <!-- 관리자만 보이게!! -->
					</div>
				</fieldset>
			</div>
		</div>
		<!-- 페이징 처리 -->
		<div class="xans-element- xans-board xans-board-paging-1002 xans-board-paging xans-board-1002 ec-base-paginate typeList">
			<a href="?board_no=1&amp;page=1">이전 페이지</a>
			<ol>
				<li class="xans-record-"><a href="?board_no=1&amp;page=1" class="this">1</a></li>
			</ol>
			<a href="?board_no=1&amp;page=1">다음 페이지</a>
		</div>

		<!-- Admin only -->

		<!-- // Admin only -->
	</div>
</div>
<div id="quick" class="RW" style="top: 284px;">
	<div class="inner">
		<div class="xans-element- xans-layout xans-layout-orderbasketcount ">
			<a href="/order/basket.html">Cart <span class="count">0</span></a>
		</div>

		<div class="xans-element- xans-layout xans-layout-productrecent" style="">
			<div class="title">
				<a href="/product/recent_view_product.html">RECENTLY VIEWED</a>
			</div>
			<ul>
				<li class="xans-record-">
					<a href="/product/detail.html?product_no=21&amp;cate_no=28&amp;display_group=3">
					<img src="" alt=""></a>
				</li>
			</ul>
			<div class="player">
				<button type="button" class="prev" style="cursor: pointer;">
					<i aria-hidden="true" class="icon icoArrowLeft"></i>이전
				</button>
				<button type="button" class="next" style="cursor: pointer;">
					<i aria-hidden="true" class="icon icoArrowRight"></i>다음
				</button>
			</div>
		</div>
		<p class="pageTop">
			<a href="#wrap" title="화면 최상단으로 이동하기"><i aria-hidden="true" class="icon icoArrowTop"></i> Top</a>
		</p>
	</div>
</div>
<form id="moveReadForm" method="post" action="/noticeRead.do">
	<input type="hidden" id="noticeNo" name="noticeNo" value=""/>
</form>
<%@ include file="../../common/footer.jsp"%>
</body>
<script type="text/javascript">
function noticeDetail(noticeNo){
	$('#noticeNo').val(noticeNo);
	console.log(noticeNo);
	$('#moveReadForm').submit();
}
</script>
</html>