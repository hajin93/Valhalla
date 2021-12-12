/**
 * 공통
 */

function calDate(){
	//현재날짜 구하기
	var today = new Date();
	var year = today.getFullYear(); // 년도
	var month = today.getMonth() + 1;  // 월
	var date = today.getDate();  // 날짜
	var time = "";
	if(date < 10){
		date = "0" + date;
	}
	
	time = year + '-' + month + '-' + date;
	
	return time;
}

function comma(num){ //천단위 콤마 찍는 function , fmt기능의 경우 html안에서만 작동하므로 스크립트내에서는 function 사용
    var len, point, str; 
       
    num = num + ""; 
    point = num.length % 3 ;
    len = num.length; 
   
    str = num.substring(0, point); 
    while (point < len) { 
        if (str != "") str += ","; 
        str += num.substring(point, point + 3); 
        point += 3; 
    }  
    return str;
}