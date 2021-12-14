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
                        <td class="chk no"><span class="RW">${noticeList.RNUM }</span></td>
                        <td class="subject left txtBreak">
                           <a href="#none" onclick="noticeDetail('${noticeList.noticeNo}');" style="color: #555555;">${noticeList.noticeTitle }</a><span class="comment"></span>
                        </td>
                        <td class="displaynone"></td>
                        <td>valhalla호 선장</td>
                        <td class="">${noticeList.udtTime }</td>
                        <td class=""><span class="RTMI">조회</span> ${noticeList.count }</td>
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
      	<ul>
		    <c:if test="${pageMaker.prev}">
		    	<li>
		    		<a href="#none;" id="prev">◀</a>
		    		<input type="hidden" id="prevInfo" name="prevInfo" value="${pageMaker.makeQuery(pageMaker.startPage - 1)}"/>
		    	</li>
		    </c:if> 
		
		    <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
		    	<li>
		    		<a href="#none;" id="thisIdx" onclick="thisFunc('${pageMaker.makeQuery(idx)}')">${idx}</a>
		    	</li>
		    </c:forEach>
		
		    <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
		    	<li>
		    		<a href="#none;" id="next">▶</a>
		    		<input type="hidden" id="nextInfo" name="nextInfo" value="${pageMaker.makeQuery(pageMaker.endPage + 1)}"/>
		    	</li>
		    </c:if> 
		 </ul>
      </div>

      <!-- Admin only -->

      <!-- // Admin only -->
   </div>
</div>

<form id="movedPage" method="post" action="/noticeList.do">
   <input type="hidden" id="page" name="page" value=""/>
   <input type="hidden" id="perPageNum" name="perPageNum" value=""/>
</form>
<form id="moveReadForm" method="post" action="/noticeRead.do">
   <input type="hidden" id="noticeNo" name="noticeNo" value=""/>
</form>
<%@ include file="../../common/footer.jsp"%>
</body>
<script type="text/javascript">
$(function(){
	
	//이전버튼 클릭이벤트
	$('#prev').click(()=>{
		var tmp = $('#prevInfo').val();
		var tmpList = [];
		tmpList = tmp.split("&");
		$('#page').val(tmpList[0]);
		$('#perPageNum').val(tmpList[1]);
		$('#movedPage').submit();
		
	});
	
	//다음버튼 클릭이벤트
	$('#next').click(()=>{
		var tmp = $('#nextInfo').val();
		var tmpList = [];
		tmpList = tmp.split("&");
		$('#page').val(tmpList[0]);
		$('#perPageNum').val(tmpList[1]);
		$('#movedPage').submit();
	});
	
	
});

//해당 페이징번호 클릭함수
var thisFunc = function(tmp){
	console.log(tmp);
	var tmpList = [];
	tmpList = tmp.split("&");
	$('#page').val(tmpList[0]);
	$('#perPageNum').val(tmpList[1]);
	$('#movedPage').submit();
}


function noticeDetail(noticeNo){
   $('#noticeNo').val(noticeNo);
   console.log(noticeNo);
   $('#moveReadForm').submit();
}


</script>
</html>