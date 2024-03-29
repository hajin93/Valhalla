<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<title>Valhalla Mall</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<div id="wrap">
   <header id="header" class="">
      <div class="inner">
         <div class="topArea">
            <div class="xans-element- xans-layout xans-layout-logotop topArea__logo ">
               <a href="/index.do">
                 <img src="${pageContext.request.contextPath}/resources/img/logo.png" alt="Valhalla Mall">
               </a>
         </div>
         <div class="topArea__statelogon RW" id="top_menu">
            <div class="xans-element- xans-layout xans-layout-statelogoff ">
               <a href="/memberAgreement.do"><span id="joinIsLogin">Join</span></a>
               <a href="#none;" id="isLoginBtn"><span id="isLogin">Login</span></a>
               <a href="/orderBasket.do"><span id="cartIsLogin">Cart</span><span class="count displaynone EC-Layout_Basket-count-display">
               <span class="EC-Layout-Basket-count">0</span></span>
               </a>
            </div>
         </div>
      </div>
      <div class="navigation">
         <div class="xans-element- xans-layout xans-layout-category navigation__category RW">
            <ul id="header_menu">
            </ul>
         </div>
         <div class="navigation__util" id="navi_menu">
            <button type="button" class="menu btnSearch eSearch">
               <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24" class="icon" role="img">
                  <path stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M11 19c4.418 0 8-3.582 8-8s-3.582-8-8-8-8 3.582-8 8 3.582 8 8 8z"></path>
                  <path stroke="#000" stroke-linejoin="round" stroke-width="1.5" d="M22 22l-5-5"></path>
               </svg> 검색
            </button>
            <a href="/mypageOrderIndex.do" class="menu RW">
               <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24" class="icon" role="img">
                  <circle cx="11.5" cy="6.5" r="3.75" stroke="#000" stroke-width="1.5"></circle>
                  <path stroke="#000" stroke-width="1.5" d="M1.78 21.25c.382-4.758 4.364-8.5 9.22-8.5h1c4.856 0 8.838 3.742 9.22 8.5H1.78z"></path>
               </svg> 마이쇼핑
            </a> 
            <a href="#none;" class="menu RW" id="wishgo"> 
               <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24" class="icon" role="img">
                  <path fill="#000" d="M21.304 4.653l-.524.537.524-.537zM17.209 3v.75V3zm-4.094 1.653l.524.537-.524-.537zM12 5.74l-.524.538.524.51.523-.51L12 5.74zm-1.116-1.087l-.523.537.523-.537zm-8.188 7.98l-.524.537.524-.537zM3.81 13.72l-.523.537.523-.537zM12 21.7l-.524.537.524.51.523-.51L12 21.7zm8.188-7.98l.523.537-.523-.537zm1.116-1.087l-.524-.537.524.537zm.523-8.517c-.608-.593-1.329-1.062-2.12-1.382l-.563 1.391c.613.248 1.169.61 1.636 1.065l1.047-1.074zm-2.12-1.382c-.793-.32-1.641-.484-2.498-.484v1.5c.665 0 1.323.128 1.936.375l.561-1.39zm-2.498-.484c-.856 0-1.704.164-2.496.484l.562 1.391c.612-.247 1.27-.375 1.934-.375v-1.5zm-2.496.484c-.792.32-1.513.79-2.121 1.382l1.047 1.074c.467-.455 1.023-.817 1.636-1.065l-.562-1.39zm-2.121 1.382l-1.116 1.087 1.047 1.075L13.64 5.19l-1.047-1.074zm-.069 1.087l-1.115-1.087L10.36 5.19l1.115 1.088 1.047-1.075zm-1.115-1.087C10.18 2.92 8.518 2.251 6.79 2.251v1.5c1.343 0 2.627.52 3.57 1.44l1.048-1.075zM6.79 2.251c-1.728 0-3.39.668-4.618 1.865L3.22 5.19c.944-.92 2.228-1.44 3.571-1.44v-1.5zM2.172 4.116C.944 5.313.25 6.941.25 8.643h1.5c0-1.291.526-2.534 1.47-3.453L2.171 4.116zM.25 8.643c0 1.702.694 3.33 1.922 4.527l1.047-1.074c-.943-.92-1.469-2.162-1.469-3.453H.25zm1.922 4.527l1.116 1.087 1.047-1.074-1.116-1.087-1.047 1.074zm1.116 1.087l8.188 7.98 1.047-1.074-8.188-7.98-1.047 1.074zm9.235 7.98l8.188-7.98-1.046-1.074-8.189 7.98 1.047 1.074zm8.188-7.98l1.116-1.087-1.047-1.074-1.116 1.087 1.047 1.074zm1.116-1.087c.608-.592 1.092-1.297 1.422-2.074l-1.38-.587c-.252.592-.622 1.132-1.089 1.587l1.047 1.074zm1.422-2.074c.33-.777.501-1.61.501-2.453h-1.5c0 .64-.13 1.274-.381 1.866l1.38.587zm.501-2.453c0-.842-.17-1.676-.5-2.453l-1.381.587c.252.592.381 1.226.381 1.866h1.5zm-.5-2.453c-.331-.777-.815-1.481-1.423-2.074L20.78 5.19c.467.456.837.995 1.089 1.587l1.38-.587z"></path>
               </svg> 관심상품
            </a>
         </div>
      </div>
   </div>
</header>
<form id="movedLogin" method="post" action="/memberLogin.do"></form>
<form id="movedCate" method="post" action="/productCategory.do">
   <input type="hidden" id="productCategory" name="productCategory" value=""/>
</form>
<form id="wishgogo" method="post" action="/mypageWishlist.do">
	<input type="hidden" id="userNo" name="userNo" value=""/>
</form>
<script src="${pageContext.request.contextPath}/resources/js/common.js"></script>
<script type="text/javascript">
$(()=>{
   
   let userId = ""; //유저아이디
   let userNo = ""; //유저넘버
   let userName = ""; //유저이름
   let gubn = ""; //유저구분값
   
   //isLogin 로그인했을때 넣어두었던 userId/gubn값 localStorage 세션값 꺼내서 셋팅 모든페이지에 header가 들어가므로 공통작업 
   if(localStorage.getItem('userId')) userId = localStorage.getItem('userId'); //유저아이디 localStorage 값이 있을때 꺼내서 셋팅
   if(localStorage.getItem('userNo')) userNo = localStorage.getItem('userNo');
   if(localStorage.getItem('gubn'))gubn = localStorage.getItem('gubn'); //유저구분값 localStorage 값이 있을때 꺼내서 셋팅
   
   //관리자, 사용자를 나눠서 보여주는 메뉴를 다르게 셋팅한다  / top_noMaster : 사용자 , top_master : 관리자
   let top_normal = "<a href='/memberAgreement.do'><span id='joinIsLogin'>Join</span></a>"+
                    "<a href='#none;' id='isLoginBtn'><span id='isLogin'>Login</span></a>"+
                    "<a href='/orderBasket.do'>Cart<span class='count displaynone EC-Layout_Basket-count-display'>"+
                    "<span class='EC-Layout-Basket-count'>0</span></span></a>";
   
   let top_noMaster = "<a href='#none;' id='isLoginBtn'><span id='isLogin'>Login</span></a>"+
                      "<a href='/orderBasket.do'>Cart<span class='count displaynone EC-Layout_Basket-count-display'>"+
                      "<span class='EC-Layout-Basket-count'>0</span></span></a>";                                    
                   
   let top_master = "<a href='#none;' id='isLoginBtn'><span id='isLogin'>Login</span></a>";
   
   //gubn : U 혹은 "" 일때는 일반사용자 , gubn : M 일때는 관리자
//    if(gubn == "U"){
//       $('#top_menu').html(top_noMaster);
//    } else if(gubn == ""){
//       $("#top_menu").html(top_normal);   
//    } else if(gubn == "M"){
//       $('#top_menu').html(top_master);
//       $('#navi_menu').css("display",'none');
//    }
   
   $('#top_menu').html(top_noMaster);
   
   //
   if(userId != "")  $('#isLogin').text('LogOut');
   else if(userId == "") $('#isLogin').text('Login');
   
   let noMaster = "<li class='xans-record-'><a href='#none;' id='outer'>OUTER</a></li>"+
                  "<li class='xans-record-'><a href='#none;' id='tops'>TOPS</a></li>"+
                  "<li class='xans-record-'><a href='#none;' id='dresses'>DRESSES</a></li>"+
                  "<li class='xans-record-'><a href='#none;' id='bottoms'>BOTTOMS</a></li>"+
                  "<li class='xans-record-'><a href='#none;' id='accessories'>ACCESSORIES</a></li>";

   let master = "<li class='xans-record-'><a href='#none;' id='m_notice'>공지사항</a></li>"+
                "<li class='xans-record-'><a href='#none;' id='m_qna'>1:1문의</a></li>"+
                "<li class='xans-record-'><a href='#none;' id='m_deli'>배송관리</a></li>";

   if(gubn == "U" || gubn == "") $('#header_menu').html(noMaster);
   else if(gubn == "M") $('#header_menu').html(master);
   
   $('#isLoginBtn').click(()=>{
     
     if($('#isLogin').text() == 'LogOut'){
        localStorage.removeItem('userId');
        localStorage.removeItem('userName');
        localStorage.removeItem('phone');
        localStorage.removeItem('email');
        localStorage.removeItem('gubn');
     }
     $('#movedLogin').submit();
   });
   
   if(gubn == "U" || gubn == ""){
	   
	   let value = ["outer", "tops", "dresses", "bottoms", "accessories"];
	   
	   $.each(value, (idx, val)=>{
		   $('#'+ val).click(()=>{
		      $('#productCategory').val(val);
		      $('#movedCate').submit();
		   });
	   });
      
   } else if(gubn == "M"){
	 
	  let value = ["m_notice", "m_qna", "m_deli"];
	  let txtVal = ["관리자 공지사항입니다.", "관리자 1:1문의 입니다.", "관리자 배송관리 입니다."];
      
	  $.each(value, (idx, val)=>{
		  $('#'+val).click(()=>{
	    	  nullCheckAlert("nonFocus", txtVal[idx]);
	      });
	  });
   }
   
   $('#wishgo').click(()=>{
	   $("#userNo").val(userNo);
	   $('#wishgogo').submit();
   });
   
});

let nullCheckAlert = ((item, txt)=>{
	alert(txt);
	if(item != "nonFocus") $('#'+item).focus();
});

//현재날짜 구하기
let today = (()=>{
	let today = new Date();
	let year = today.getFullYear(); // 년도
	let month = today.getMonth() + 1;  // 월
	let date = today.getDate();  // 날짜
	let time = "";
	
	if(date < 10) date = "0" + date;
	time = year + '-' + month + '-' + date;
	
	return time;
});

</script>