<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<div id="myshopMain" class="xans-element- xans-myshop xans-myshop-main ">
<div class="title RW">My Account</div>
<div class="subTitle">
<h3>쇼핑 정보</h3>
</div>
	<ul class="menu">
		<li>
			<a href="#none;" id="mypageOrderIndex">주문내역 조회</a>
		</li>
	</ul>
	<div class="subTitle">
		<h3>활동 정보</h3>
	</div>
	<ul class="menu">
		<li>
			<a href="/myshop/wish_list.html">나의 위시리스트</a>
		</li>
		<li class="">
			<a href="/myshop/board_list.html">나의 게시글</a>
		</li>
	</ul>
	<div class="subTitle">
		<h3>나의 정보</h3>
	</div>
	<ul class="menu">
		<li>
			<a href="#none;" id="memberModify">회원 정보 수정</a>
		</li>
		<li>
			<a href="javascript:void(0);" id="exitBtn">회원 탈퇴</a>
		</li>
	</ul>
	<div class="consult displaynone">
		<a href="/board/consult/list.html" class="btnNormal sizeM">1:1 문의하기</a>
	</div>
</div>
<form id="movedPage" method="post" action="">
	<input type="hidden" id="user_No" name="userNo" value="">
</form>
<form id="movedIndex" method="post" action="/index.do"></form>
<script type="text/javascript">
let user_no = "";
$(()=>{
	if(localStorage.getItem('userNo')) user_no = localStorage.getItem('userNo');
	
	//주문내역조회 클릭이벤트 
	$('#mypageOrderIndex').click(()=>{
		if(user_no != "") $("#user_No").val(user_no);
		$('#movedPage').attr("action", "/mypageOrderIndex.do");
		$('#movedPage').submit();
	})
	//회원정보수정 클릭이벤트 
	$('#memberModify').click(()=>{
		$('#movedPage').attr("action", "/memberModifyPwChk.do");
		$('#movedPage').submit();
	});
	
	$("#exitBtn").click(()=>{
		if(confirm("정말 탈퇴하시겠습니까??")){//확인
			deleteInfo();
		}
	});
});

let deleteInfo = (()=>{
	$.ajax({
		type : 'post',
		url : '/deleteInfo.do',
		data : { userId : user_id},
		dataType : 'json',
		success : ((data)=>{
			if(data.exit){
				nullCheckAlert("nonFocus", "탈퇴완료 되었습니다.");
				$('#movedIndex').submit();
			}
		})
	});
});
</script>