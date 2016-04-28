<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- -------------------------------------------字型和ICON--------------------------------------- -->
<link href='https://fonts.googleapis.com/css?family=Luckiest+Guy' rel='stylesheet' type='text/css'>
<link rel="icon" href="images/hero.jpg" type="image/x-icon" />
<!-- -------------------------------------------jQuery---------------------------------------------- -->
<link rel="stylesheet" type="text/css" href="/HeroJDBC/js/jquery.datetimepicker.css">
<script type="text/javascript" src="/HeroJDBC/js/jquery-2.2.1.min.js"></script>
<script src="/HeroJDBC/js/jquery.js"></script>
<script src="/HeroJDBC/js/jquery.datetimepicker.full.min.js"></script>
<!-- ------------------------------------------------------------------------------------------------ -->
<!-- ==============================Google Map script Start============================== -->
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
<!-- ===============================Google Map script End=============================== -->
<title>Mission</title>

<style type="text/css">
    #title {
        font-size:1.05em;
        color:	#FF4794;
        text-align:left;
        font-weight:bold;
        }
     select{
     	width:189px;
     }
	form{
		margin:0%;
		paddind:0%;
		background:url(${pageContext.request.contextPath}/images/PNG6.png) ; 
        background-repeat:no-repeat;
        background-size:500px 830px;
        background-position:50% 50%;
    }
	table{
     	margin:0%;
		paddind:0%;
    }
    body{
    	background:url(${pageContext.request.contextPath}/images/back.jpg) center repeat;
    }
</style>

<script type="text/javascript">
jQuery(document).ready(function(){
	$('input[name="missionExcuteTime"]').datetimepicker({
        minDate:0,
        minTime:0,// now
        theme:'dark'
	});
})

// 顯示上傳圖
$(function()
{
	$("#imgInp").change(function(){
		if (this.files && this.files[0]) {
			var reader = new FileReader();
			
			reader.onload = function (e) {
				$('#blah').attr('src', e.target.result);
			}
			
			reader.readAsDataURL(this.files[0]);
		}
	});
}) ;



function Buildkey(num) {
	var ctr=1;
	document.CodeForm.subtype.selectedIndex=0;
	//document.CodeForm.zipcode.value="";  
	document.CodeForm.subtype.options[0]=new Option("請選擇區域...","");
	/*
	定義二階選單內容
	if(num=="第一階下拉選單的值") {	document.CodeForm.subtype.options[ctr]=new Option("第二階下拉選單的顯示名稱","第二階下拉選單的值");	ctr=ctr+1;	}
	*/	
	/*臺北市*/  
	if(num=="1") {	document.CodeForm.subtype.options[ctr]=new Option("中正區");	ctr=ctr+1;	}
	if(num=="1") {	document.CodeForm.subtype.options[ctr]=new Option("大同區");	ctr=ctr+1;	}
	if(num=="1") {	document.CodeForm.subtype.options[ctr]=new Option("中山區");	ctr=ctr+1;	}
	if(num=="1") {	document.CodeForm.subtype.options[ctr]=new Option("松山區");	ctr=ctr+1;	}
	if(num=="1") {	document.CodeForm.subtype.options[ctr]=new Option("大安區");	ctr=ctr+1;	}
	if(num=="1") {	document.CodeForm.subtype.options[ctr]=new Option("萬華區");	ctr=ctr+1;	}
	if(num=="1") {	document.CodeForm.subtype.options[ctr]=new Option("信義區");	ctr=ctr+1;	}
	if(num=="1") {	document.CodeForm.subtype.options[ctr]=new Option("士林區");	ctr=ctr+1;	}
	if(num=="1") {	document.CodeForm.subtype.options[ctr]=new Option("北投區");	ctr=ctr+1;	}
	if(num=="1") {	document.CodeForm.subtype.options[ctr]=new Option("內湖區");	ctr=ctr+1;	}
	if(num=="1") {	document.CodeForm.subtype.options[ctr]=new Option("南港區");	ctr=ctr+1;	}
	if(num=="1") {	document.CodeForm.subtype.options[ctr]=new Option("文山區");	ctr=ctr+1;	}
	/*基隆市*/  
	if(num=="2") {	document.CodeForm.subtype.options[ctr]=new Option("仁愛區");	ctr=ctr+1;	}
	if(num=="2") {	document.CodeForm.subtype.options[ctr]=new Option("信義區");	ctr=ctr+1;	}
	if(num=="2") {	document.CodeForm.subtype.options[ctr]=new Option("中正區");	ctr=ctr+1;	}
	if(num=="2") {	document.CodeForm.subtype.options[ctr]=new Option("中山區");	ctr=ctr+1;	}
	if(num=="2") {	document.CodeForm.subtype.options[ctr]=new Option("安樂區");	ctr=ctr+1;	}
	if(num=="2") {	document.CodeForm.subtype.options[ctr]=new Option("暖暖區");	ctr=ctr+1;	}
	if(num=="2") {	document.CodeForm.subtype.options[ctr]=new Option("七堵區");	ctr=ctr+1;	}
	/*新北市*/  
	if(num=="3") {	document.CodeForm.subtype.options[ctr]=new Option("萬里區");	ctr=ctr+1;	} 
	if(num=="3") {	document.CodeForm.subtype.options[ctr]=new Option("金山區");	ctr=ctr+1;	} 
	if(num=="3") {	document.CodeForm.subtype.options[ctr]=new Option("板橋區");	ctr=ctr+1;	} 
	if(num=="3") {	document.CodeForm.subtype.options[ctr]=new Option("汐止區");	ctr=ctr+1;	} 
	if(num=="3") {	document.CodeForm.subtype.options[ctr]=new Option("深坑區");	ctr=ctr+1;	} 
	if(num=="3") {	document.CodeForm.subtype.options[ctr]=new Option("石碇區");	ctr=ctr+1;	} 
	if(num=="3") {	document.CodeForm.subtype.options[ctr]=new Option("瑞芳區");	ctr=ctr+1;	} 
	if(num=="3") {	document.CodeForm.subtype.options[ctr]=new Option("平溪區");	ctr=ctr+1;	} 
	if(num=="3") {	document.CodeForm.subtype.options[ctr]=new Option("雙溪區");	ctr=ctr+1;	} 
	if(num=="3") {	document.CodeForm.subtype.options[ctr]=new Option("貢寮區");	ctr=ctr+1;	} 
	if(num=="3") {	document.CodeForm.subtype.options[ctr]=new Option("新店區");	ctr=ctr+1;	} 
	if(num=="3") {	document.CodeForm.subtype.options[ctr]=new Option("坪林區");	ctr=ctr+1;	} 
	if(num=="3") {	document.CodeForm.subtype.options[ctr]=new Option("烏來區");	ctr=ctr+1;	} 
	if(num=="3") {	document.CodeForm.subtype.options[ctr]=new Option("永和區");	ctr=ctr+1;	} 
	if(num=="3") {	document.CodeForm.subtype.options[ctr]=new Option("中和區");	ctr=ctr+1;	} 
	if(num=="3") {	document.CodeForm.subtype.options[ctr]=new Option("土城區");	ctr=ctr+1;	} 
	if(num=="3") {	document.CodeForm.subtype.options[ctr]=new Option("三峽區");	ctr=ctr+1;	} 
	if(num=="3") {	document.CodeForm.subtype.options[ctr]=new Option("樹林區");	ctr=ctr+1;	} 
	if(num=="3") {	document.CodeForm.subtype.options[ctr]=new Option("鶯歌區");	ctr=ctr+1;	} 
	if(num=="3") {	document.CodeForm.subtype.options[ctr]=new Option("三重區");	ctr=ctr+1;	} 
	if(num=="3") {	document.CodeForm.subtype.options[ctr]=new Option("新莊區");	ctr=ctr+1;	} 
	if(num=="3") {	document.CodeForm.subtype.options[ctr]=new Option("泰山區");	ctr=ctr+1;	} 
	if(num=="3") {	document.CodeForm.subtype.options[ctr]=new Option("林口區");	ctr=ctr+1;	} 
	if(num=="3") {	document.CodeForm.subtype.options[ctr]=new Option("蘆洲區");	ctr=ctr+1;	} 
	if(num=="3") {	document.CodeForm.subtype.options[ctr]=new Option("五股區");	ctr=ctr+1;	} 
	if(num=="3") {	document.CodeForm.subtype.options[ctr]=new Option("八里區");	ctr=ctr+1;	} 
	if(num=="3") {	document.CodeForm.subtype.options[ctr]=new Option("淡水區");	ctr=ctr+1;	} 
	if(num=="3") {	document.CodeForm.subtype.options[ctr]=new Option("三芝區");	ctr=ctr+1;	} 
	if(num=="3") {	document.CodeForm.subtype.options[ctr]=new Option("石門區");	ctr=ctr+1;	} 
	/*宜蘭縣*/
	if(num=="4") {	document.CodeForm.subtype.options[ctr]=new Option("宜蘭市");	ctr=ctr+1;	} 
	if(num=="4") {	document.CodeForm.subtype.options[ctr]=new Option("頭城鎮");	ctr=ctr+1;	} 
	if(num=="4") {	document.CodeForm.subtype.options[ctr]=new Option("礁溪鄉");	ctr=ctr+1;	} 
	if(num=="4") {	document.CodeForm.subtype.options[ctr]=new Option("壯圍鄉");	ctr=ctr+1;	} 
	if(num=="4") {	document.CodeForm.subtype.options[ctr]=new Option("員山鄉");	ctr=ctr+1;	} 
	if(num=="4") {	document.CodeForm.subtype.options[ctr]=new Option("羅東鎮");	ctr=ctr+1;	} 
	if(num=="4") {	document.CodeForm.subtype.options[ctr]=new Option("三星鄉");	ctr=ctr+1;	} 
	if(num=="4") {	document.CodeForm.subtype.options[ctr]=new Option("大同鄉");	ctr=ctr+1;	} 
	if(num=="4") {	document.CodeForm.subtype.options[ctr]=new Option("五結鄉");	ctr=ctr+1;	} 
	if(num=="4") {	document.CodeForm.subtype.options[ctr]=new Option("冬山鄉");	ctr=ctr+1;	} 
	if(num=="4") {	document.CodeForm.subtype.options[ctr]=new Option("蘇澳鎮");	ctr=ctr+1;	} 
	if(num=="4") {	document.CodeForm.subtype.options[ctr]=new Option("南澳鄉");	ctr=ctr+1;	} 
	/*新竹縣市*/
	if(num=="5") {	document.CodeForm.subtype.options[ctr]=new Option("新竹市");	ctr=ctr+1;	} 
	if(num=="5") {	document.CodeForm.subtype.options[ctr]=new Option("竹北市");	ctr=ctr+1;	} 
	if(num=="5") {	document.CodeForm.subtype.options[ctr]=new Option("湖口鄉");	ctr=ctr+1;	} 
	if(num=="5") {	document.CodeForm.subtype.options[ctr]=new Option("新豐鄉");	ctr=ctr+1;	} 
	if(num=="5") {	document.CodeForm.subtype.options[ctr]=new Option("新埔鎮");	ctr=ctr+1;	} 
	if(num=="5") {	document.CodeForm.subtype.options[ctr]=new Option("關西鎮");	ctr=ctr+1;	} 
	if(num=="5") {	document.CodeForm.subtype.options[ctr]=new Option("芎林鄉");	ctr=ctr+1;	} 
	if(num=="5") {	document.CodeForm.subtype.options[ctr]=new Option("寶山鄉");	ctr=ctr+1;	} 
	if(num=="5") {	document.CodeForm.subtype.options[ctr]=new Option("竹東鎮");	ctr=ctr+1;	} 
	if(num=="5") {	document.CodeForm.subtype.options[ctr]=new Option("五峰鄉");	ctr=ctr+1;	} 
	if(num=="5") {	document.CodeForm.subtype.options[ctr]=new Option("橫山鄉");	ctr=ctr+1;	} 
	if(num=="5") {	document.CodeForm.subtype.options[ctr]=new Option("尖石鄉");	ctr=ctr+1;	} 
	if(num=="5") {	document.CodeForm.subtype.options[ctr]=new Option("北埔鄉");	ctr=ctr+1;	} 
	if(num=="5") {	document.CodeForm.subtype.options[ctr]=new Option("峨眉鄉");	ctr=ctr+1;	} 
	/*桃園縣*/
	if(num=="6") {	document.CodeForm.subtype.options[ctr]=new Option("中壢市");	ctr=ctr+1;	} 
	if(num=="6") {	document.CodeForm.subtype.options[ctr]=new Option("平鎮市");	ctr=ctr+1;	} 
	if(num=="6") {	document.CodeForm.subtype.options[ctr]=new Option("龍潭鄉");	ctr=ctr+1;	} 
	if(num=="6") {	document.CodeForm.subtype.options[ctr]=new Option("楊梅鎮");	ctr=ctr+1;	} 
	if(num=="6") {	document.CodeForm.subtype.options[ctr]=new Option("新屋鄉");	ctr=ctr+1;	} 
	if(num=="6") {	document.CodeForm.subtype.options[ctr]=new Option("觀音鄉");	ctr=ctr+1;	} 
	if(num=="6") {	document.CodeForm.subtype.options[ctr]=new Option("桃園市");	ctr=ctr+1;	} 
	if(num=="6") {	document.CodeForm.subtype.options[ctr]=new Option("龜山鄉");	ctr=ctr+1;	} 
	if(num=="6") {	document.CodeForm.subtype.options[ctr]=new Option("龜山鄉");	ctr=ctr+1;	} 
	if(num=="6") {	document.CodeForm.subtype.options[ctr]=new Option("八德市");	ctr=ctr+1;	} 
	if(num=="6") {	document.CodeForm.subtype.options[ctr]=new Option("大溪鎮");	ctr=ctr+1;	} 
	if(num=="6") {	document.CodeForm.subtype.options[ctr]=new Option("復興鄉");	ctr=ctr+1;	} 
	if(num=="6") {	document.CodeForm.subtype.options[ctr]=new Option("大園鄉");	ctr=ctr+1;	} 
	if(num=="6") {	document.CodeForm.subtype.options[ctr]=new Option("蘆竹鄉");	ctr=ctr+1;	} 
	/*苗栗縣*/
	if(num=="7") {	document.CodeForm.subtype.options[ctr]=new Option("竹南鎮");	ctr=ctr+1;	} 
	if(num=="7") {	document.CodeForm.subtype.options[ctr]=new Option("頭份鎮");	ctr=ctr+1;	} 
	if(num=="7") {	document.CodeForm.subtype.options[ctr]=new Option("三灣鄉");	ctr=ctr+1;	} 
	if(num=="7") {	document.CodeForm.subtype.options[ctr]=new Option("南庄鄉");	ctr=ctr+1;	} 
	if(num=="7") {	document.CodeForm.subtype.options[ctr]=new Option("獅潭鄉");	ctr=ctr+1;	} 
	if(num=="7") {	document.CodeForm.subtype.options[ctr]=new Option("後龍鎮");	ctr=ctr+1;	} 
	if(num=="7") {	document.CodeForm.subtype.options[ctr]=new Option("通霄鎮");	ctr=ctr+1;	} 
	if(num=="7") {	document.CodeForm.subtype.options[ctr]=new Option("苑裡鎮");	ctr=ctr+1;	} 
	if(num=="7") {	document.CodeForm.subtype.options[ctr]=new Option("苗栗市");	ctr=ctr+1;	} 
	if(num=="7") {	document.CodeForm.subtype.options[ctr]=new Option("造橋鄉");	ctr=ctr+1;	} 
	if(num=="7") {	document.CodeForm.subtype.options[ctr]=new Option("頭屋鄉");	ctr=ctr+1;	} 
	if(num=="7") {	document.CodeForm.subtype.options[ctr]=new Option("公館鄉");	ctr=ctr+1;	} 
	if(num=="7") {	document.CodeForm.subtype.options[ctr]=new Option("大湖鄉");	ctr=ctr+1;	} 
	if(num=="7") {	document.CodeForm.subtype.options[ctr]=new Option("泰安鄉");	ctr=ctr+1;	} 
	if(num=="7") {	document.CodeForm.subtype.options[ctr]=new Option("銅鑼鄉");	ctr=ctr+1;	} 
	if(num=="7") {	document.CodeForm.subtype.options[ctr]=new Option("三義鄉");	ctr=ctr+1;	} 
	if(num=="7") {	document.CodeForm.subtype.options[ctr]=new Option("西湖鄉");	ctr=ctr+1;	} 
	if(num=="7") {	document.CodeForm.subtype.options[ctr]=new Option("卓蘭鎮");	ctr=ctr+1;	}
	/*臺中市*/ 
	if(num=="8") {	document.CodeForm.subtype.options[ctr]=new Option("中　區");	ctr=ctr+1;	} 
	if(num=="8") {	document.CodeForm.subtype.options[ctr]=new Option("東　區");	ctr=ctr+1;	} 
	if(num=="8") {	document.CodeForm.subtype.options[ctr]=new Option("南　區");	ctr=ctr+1;	} 
	if(num=="8") {	document.CodeForm.subtype.options[ctr]=new Option("西　區");	ctr=ctr+1;	} 
	if(num=="8") {	document.CodeForm.subtype.options[ctr]=new Option("北　區");	ctr=ctr+1;	} 
	if(num=="8") {	document.CodeForm.subtype.options[ctr]=new Option("北屯區");	ctr=ctr+1;	} 
	if(num=="8") {	document.CodeForm.subtype.options[ctr]=new Option("西屯區");	ctr=ctr+1;	} 
	if(num=="8") {	document.CodeForm.subtype.options[ctr]=new Option("南屯區");	ctr=ctr+1;	} 
	/*臺中縣*/
	if(num=="9") {	document.CodeForm.subtype.options[ctr]=new Option("太平市");	ctr=ctr+1;	} 
	if(num=="9") {	document.CodeForm.subtype.options[ctr]=new Option("大里市");	ctr=ctr+1;	} 
	if(num=="9") {	document.CodeForm.subtype.options[ctr]=new Option("霧峰鄉");	ctr=ctr+1;	} 
	if(num=="9") {	document.CodeForm.subtype.options[ctr]=new Option("烏日鄉");	ctr=ctr+1;	} 
	if(num=="9") {	document.CodeForm.subtype.options[ctr]=new Option("豐原市");	ctr=ctr+1;	} 
	if(num=="9") {	document.CodeForm.subtype.options[ctr]=new Option("后里鄉");	ctr=ctr+1;	} 
	if(num=="9") {	document.CodeForm.subtype.options[ctr]=new Option("石岡鄉");	ctr=ctr+1;	} 
	if(num=="9") {	document.CodeForm.subtype.options[ctr]=new Option("東勢鎮");	ctr=ctr+1;	} 
	if(num=="9") {	document.CodeForm.subtype.options[ctr]=new Option("和平鄉");	ctr=ctr+1;	} 
	if(num=="9") {	document.CodeForm.subtype.options[ctr]=new Option("新社鄉");	ctr=ctr+1;	} 
	if(num=="9") {	document.CodeForm.subtype.options[ctr]=new Option("潭子鄉");	ctr=ctr+1;	} 
	if(num=="9") {	document.CodeForm.subtype.options[ctr]=new Option("大雅鄉");	ctr=ctr+1;	} 
	if(num=="9") {	document.CodeForm.subtype.options[ctr]=new Option("神岡鄉");	ctr=ctr+1;	} 
	if(num=="9") {	document.CodeForm.subtype.options[ctr]=new Option("大肚鄉");	ctr=ctr+1;	} 
	if(num=="9") {	document.CodeForm.subtype.options[ctr]=new Option("沙鹿鎮");	ctr=ctr+1;	} 
	if(num=="9") {	document.CodeForm.subtype.options[ctr]=new Option("龍井鄉");	ctr=ctr+1;	} 
	if(num=="9") {	document.CodeForm.subtype.options[ctr]=new Option("梧棲鎮");	ctr=ctr+1;	} 
	if(num=="9") {	document.CodeForm.subtype.options[ctr]=new Option("清水鎮");	ctr=ctr+1;	} 
	if(num=="9") {	document.CodeForm.subtype.options[ctr]=new Option("大甲鎮");	ctr=ctr+1;	} 
	if(num=="9") {	document.CodeForm.subtype.options[ctr]=new Option("外埔鄉");	ctr=ctr+1;	} 
	if(num=="9") {	document.CodeForm.subtype.options[ctr]=new Option("大安鄉");	ctr=ctr+1;	}
	/*彰化縣*/ 
	if(num=="10") {	document.CodeForm.subtype.options[ctr]=new Option("彰化市");	ctr=ctr+1;	} 
	if(num=="10") {	document.CodeForm.subtype.options[ctr]=new Option("芬園鄉");	ctr=ctr+1;	} 
	if(num=="10") {	document.CodeForm.subtype.options[ctr]=new Option("花壇鄉");	ctr=ctr+1;	} 
	if(num=="10") {	document.CodeForm.subtype.options[ctr]=new Option("秀水鄉");	ctr=ctr+1;	} 
	if(num=="10") {	document.CodeForm.subtype.options[ctr]=new Option("鹿港鎮");	ctr=ctr+1;	} 
	if(num=="10") {	document.CodeForm.subtype.options[ctr]=new Option("福興鄉");	ctr=ctr+1;	} 
	if(num=="10") {	document.CodeForm.subtype.options[ctr]=new Option("線西鄉");	ctr=ctr+1;	} 
	if(num=="10") {	document.CodeForm.subtype.options[ctr]=new Option("和美鎮");	ctr=ctr+1;	} 
	if(num=="10") {	document.CodeForm.subtype.options[ctr]=new Option("伸港鄉");	ctr=ctr+1;	} 
	if(num=="10") {	document.CodeForm.subtype.options[ctr]=new Option("員林鎮");	ctr=ctr+1;	} 
	if(num=="10") {	document.CodeForm.subtype.options[ctr]=new Option("社頭鄉");	ctr=ctr+1;	} 
	if(num=="10") {	document.CodeForm.subtype.options[ctr]=new Option("永靖鄉");	ctr=ctr+1;	} 
	if(num=="10") {	document.CodeForm.subtype.options[ctr]=new Option("埔心鄉");	ctr=ctr+1;	} 
	if(num=="10") {	document.CodeForm.subtype.options[ctr]=new Option("溪湖鎮");	ctr=ctr+1;	} 
	if(num=="10") {	document.CodeForm.subtype.options[ctr]=new Option("大村鄉");	ctr=ctr+1;	} 
	if(num=="10") {	document.CodeForm.subtype.options[ctr]=new Option("埔鹽鄉");	ctr=ctr+1;	} 
	if(num=="10") {	document.CodeForm.subtype.options[ctr]=new Option("田中鎮");	ctr=ctr+1;	} 
	if(num=="10") {	document.CodeForm.subtype.options[ctr]=new Option("北斗鎮");	ctr=ctr+1;	} 
	if(num=="10") {	document.CodeForm.subtype.options[ctr]=new Option("田尾鄉");	ctr=ctr+1;	} 
	if(num=="10") {	document.CodeForm.subtype.options[ctr]=new Option("埤頭鄉");	ctr=ctr+1;	} 
	if(num=="10") {	document.CodeForm.subtype.options[ctr]=new Option("溪州鄉");	ctr=ctr+1;	} 
	if(num=="10") {	document.CodeForm.subtype.options[ctr]=new Option("竹塘鄉");	ctr=ctr+1;	} 
	if(num=="10") {	document.CodeForm.subtype.options[ctr]=new Option("二林鎮");	ctr=ctr+1;	} 
	if(num=="10") {	document.CodeForm.subtype.options[ctr]=new Option("大城鄉");	ctr=ctr+1;	} 
	if(num=="10") {	document.CodeForm.subtype.options[ctr]=new Option("芳苑鄉");	ctr=ctr+1;	} 
	if(num=="10") {	document.CodeForm.subtype.options[ctr]=new Option("二水鄉");	ctr=ctr+1;	} 
	/*南投縣*/
	if(num=="11") {	document.CodeForm.subtype.options[ctr]=new Option("南投市");	ctr=ctr+1;	} 
	if(num=="11") {	document.CodeForm.subtype.options[ctr]=new Option("中寮鄉");	ctr=ctr+1;	} 
	if(num=="11") {	document.CodeForm.subtype.options[ctr]=new Option("草屯鎮");	ctr=ctr+1;	} 
	if(num=="11") {	document.CodeForm.subtype.options[ctr]=new Option("國姓鄉");	ctr=ctr+1;	} 
	if(num=="11") {	document.CodeForm.subtype.options[ctr]=new Option("埔里鎮");	ctr=ctr+1;	} 
	if(num=="11") {	document.CodeForm.subtype.options[ctr]=new Option("仁愛鄉");	ctr=ctr+1;	} 
	if(num=="11") {	document.CodeForm.subtype.options[ctr]=new Option("名間鄉");	ctr=ctr+1;	} 
	if(num=="11") {	document.CodeForm.subtype.options[ctr]=new Option("集集鎮");	ctr=ctr+1;	} 
	if(num=="11") {	document.CodeForm.subtype.options[ctr]=new Option("水里鄉");	ctr=ctr+1;	} 
	if(num=="11") {	document.CodeForm.subtype.options[ctr]=new Option("魚池鄉");	ctr=ctr+1;	} 
	if(num=="11") {	document.CodeForm.subtype.options[ctr]=new Option("信義鄉");	ctr=ctr+1;	} 
	if(num=="11") {	document.CodeForm.subtype.options[ctr]=new Option("竹山鎮");	ctr=ctr+1;	} 
	if(num=="11") {	document.CodeForm.subtype.options[ctr]=new Option("鹿谷鄉");	ctr=ctr+1;	} 
	/*嘉義縣市*/
	if(num=="12") {	document.CodeForm.subtype.options[ctr]=new Option("嘉義市");	ctr=ctr+1;	} 
	if(num=="12") {	document.CodeForm.subtype.options[ctr]=new Option("番路鄉");	ctr=ctr+1;	} 
	if(num=="12") {	document.CodeForm.subtype.options[ctr]=new Option("梅山鄉");	ctr=ctr+1;	} 
	if(num=="12") {	document.CodeForm.subtype.options[ctr]=new Option("竹崎鄉");	ctr=ctr+1;	} 
	if(num=="12") {	document.CodeForm.subtype.options[ctr]=new Option("阿里山");	ctr=ctr+1;	} 
	if(num=="12") {	document.CodeForm.subtype.options[ctr]=new Option("中埔鄉");	ctr=ctr+1;	} 
	if(num=="12") {	document.CodeForm.subtype.options[ctr]=new Option("大埔鄉");	ctr=ctr+1;	} 
	if(num=="12") {	document.CodeForm.subtype.options[ctr]=new Option("水上鄉");	ctr=ctr+1;	} 
	if(num=="12") {	document.CodeForm.subtype.options[ctr]=new Option("鹿草鄉");	ctr=ctr+1;	} 
	if(num=="12") {	document.CodeForm.subtype.options[ctr]=new Option("太保市");	ctr=ctr+1;	} 
	if(num=="12") {	document.CodeForm.subtype.options[ctr]=new Option("朴子市");	ctr=ctr+1;	} 
	if(num=="12") {	document.CodeForm.subtype.options[ctr]=new Option("東石鄉");	ctr=ctr+1;	} 
	if(num=="12") {	document.CodeForm.subtype.options[ctr]=new Option("六腳鄉");	ctr=ctr+1;	} 
	if(num=="12") {	document.CodeForm.subtype.options[ctr]=new Option("新港鄉");	ctr=ctr+1;	} 
	if(num=="12") {	document.CodeForm.subtype.options[ctr]=new Option("民雄鄉");	ctr=ctr+1;	} 
	if(num=="12") {	document.CodeForm.subtype.options[ctr]=new Option("大林鎮");	ctr=ctr+1;	} 
	if(num=="12") {	document.CodeForm.subtype.options[ctr]=new Option("溪口鄉");	ctr=ctr+1;	} 
	if(num=="12") {	document.CodeForm.subtype.options[ctr]=new Option("義竹鄉");	ctr=ctr+1;	} 
	if(num=="12") {	document.CodeForm.subtype.options[ctr]=new Option("布袋鎮");	ctr=ctr+1;	} 
	/*雲林縣*/
	if(num=="13") {	document.CodeForm.subtype.options[ctr]=new Option("斗南鎮");	ctr=ctr+1;	} 
	if(num=="13") {	document.CodeForm.subtype.options[ctr]=new Option("大埤鄉");	ctr=ctr+1;	} 
	if(num=="13") {	document.CodeForm.subtype.options[ctr]=new Option("虎尾鎮");	ctr=ctr+1;	} 
	if(num=="13") {	document.CodeForm.subtype.options[ctr]=new Option("土庫鎮");	ctr=ctr+1;	} 
	if(num=="13") {	document.CodeForm.subtype.options[ctr]=new Option("褒忠鄉");	ctr=ctr+1;	} 
	if(num=="13") {	document.CodeForm.subtype.options[ctr]=new Option("東勢鄉");	ctr=ctr+1;	} 
	if(num=="13") {	document.CodeForm.subtype.options[ctr]=new Option("台西鄉");	ctr=ctr+1;	} 
	if(num=="13") {	document.CodeForm.subtype.options[ctr]=new Option("崙背鄉");	ctr=ctr+1;	} 
	if(num=="13") {	document.CodeForm.subtype.options[ctr]=new Option("麥寮鄉");	ctr=ctr+1;	} 
	if(num=="13") {	document.CodeForm.subtype.options[ctr]=new Option("斗六市");	ctr=ctr+1;	} 
	if(num=="13") {	document.CodeForm.subtype.options[ctr]=new Option("林內鄉");	ctr=ctr+1;	} 
	if(num=="13") {	document.CodeForm.subtype.options[ctr]=new Option("古坑鄉");	ctr=ctr+1;	} 
	if(num=="13") {	document.CodeForm.subtype.options[ctr]=new Option("莿桐鄉");	ctr=ctr+1;	} 
	if(num=="13") {	document.CodeForm.subtype.options[ctr]=new Option("西螺鎮");	ctr=ctr+1;	} 
	if(num=="13") {	document.CodeForm.subtype.options[ctr]=new Option("二崙鄉");	ctr=ctr+1;	} 
	if(num=="13") {	document.CodeForm.subtype.options[ctr]=new Option("北港鎮");	ctr=ctr+1;	} 
	if(num=="13") {	document.CodeForm.subtype.options[ctr]=new Option("水林鄉");	ctr=ctr+1;	} 
	if(num=="13") {	document.CodeForm.subtype.options[ctr]=new Option("口湖鄉");	ctr=ctr+1;	} 
	if(num=="13") {	document.CodeForm.subtype.options[ctr]=new Option("四湖鄉");	ctr=ctr+1;	} 
	if(num=="13") {	document.CodeForm.subtype.options[ctr]=new Option("元長鄉");	ctr=ctr+1;	} 
	/*臺南市*/
	if(num=="14") {	document.CodeForm.subtype.options[ctr]=new Option("中西區");	ctr=ctr+1;	} 
	if(num=="14") {	document.CodeForm.subtype.options[ctr]=new Option("東　區");	ctr=ctr+1;	} 
	if(num=="14") {	document.CodeForm.subtype.options[ctr]=new Option("南　區");	ctr=ctr+1;	} 
	if(num=="14") {	document.CodeForm.subtype.options[ctr]=new Option("北　區");	ctr=ctr+1;	} 
	if(num=="14") {	document.CodeForm.subtype.options[ctr]=new Option("安平區");	ctr=ctr+1;	} 
	if(num=="14") {	document.CodeForm.subtype.options[ctr]=new Option("安南區");	ctr=ctr+1;	} 
	/*臺南縣*/
	if(num=="15") {	document.CodeForm.subtype.options[ctr]=new Option("永康市");	ctr=ctr+1;	} 
	if(num=="15") {	document.CodeForm.subtype.options[ctr]=new Option("歸仁鄉");	ctr=ctr+1;	} 
	if(num=="15") {	document.CodeForm.subtype.options[ctr]=new Option("新化鎮");	ctr=ctr+1;	} 
	if(num=="15") {	document.CodeForm.subtype.options[ctr]=new Option("左鎮鄉");	ctr=ctr+1;	} 
	if(num=="15") {	document.CodeForm.subtype.options[ctr]=new Option("玉井鄉");	ctr=ctr+1;	} 
	if(num=="15") {	document.CodeForm.subtype.options[ctr]=new Option("楠西鄉");	ctr=ctr+1;	} 
	if(num=="15") {	document.CodeForm.subtype.options[ctr]=new Option("南化鄉");	ctr=ctr+1;	} 
	if(num=="15") {	document.CodeForm.subtype.options[ctr]=new Option("仁德鄉");	ctr=ctr+1;	} 
	if(num=="15") {	document.CodeForm.subtype.options[ctr]=new Option("關廟鄉");	ctr=ctr+1;	} 
	if(num=="15") {	document.CodeForm.subtype.options[ctr]=new Option("龍崎鄉");	ctr=ctr+1;	} 
	if(num=="15") {	document.CodeForm.subtype.options[ctr]=new Option("官田鄉");	ctr=ctr+1;	} 
	if(num=="15") {	document.CodeForm.subtype.options[ctr]=new Option("麻豆鎮");	ctr=ctr+1;	} 
	if(num=="15") {	document.CodeForm.subtype.options[ctr]=new Option("佳里鎮");	ctr=ctr+1;	} 
	if(num=="15") {	document.CodeForm.subtype.options[ctr]=new Option("西港鄉");	ctr=ctr+1;	} 
	if(num=="15") {	document.CodeForm.subtype.options[ctr]=new Option("七股鄉");	ctr=ctr+1;	} 
	if(num=="15") {	document.CodeForm.subtype.options[ctr]=new Option("將軍鄉");	ctr=ctr+1;	} 
	if(num=="15") {	document.CodeForm.subtype.options[ctr]=new Option("學甲鎮");	ctr=ctr+1;	} 
	if(num=="15") {	document.CodeForm.subtype.options[ctr]=new Option("北門鄉");	ctr=ctr+1;	} 
	if(num=="15") {	document.CodeForm.subtype.options[ctr]=new Option("新營市");	ctr=ctr+1;	} 
	if(num=="15") {	document.CodeForm.subtype.options[ctr]=new Option("後壁鄉");	ctr=ctr+1;	} 
	if(num=="15") {	document.CodeForm.subtype.options[ctr]=new Option("白河鎮");	ctr=ctr+1;	} 
	if(num=="15") {	document.CodeForm.subtype.options[ctr]=new Option("東山鄉");	ctr=ctr+1;	} 
	if(num=="15") {	document.CodeForm.subtype.options[ctr]=new Option("六甲鄉");	ctr=ctr+1;	} 
	if(num=="15") {	document.CodeForm.subtype.options[ctr]=new Option("下營鄉");	ctr=ctr+1;	} 
	if(num=="15") {	document.CodeForm.subtype.options[ctr]=new Option("柳營鄉");	ctr=ctr+1;	} 
	if(num=="15") {	document.CodeForm.subtype.options[ctr]=new Option("鹽水鎮");	ctr=ctr+1;	} 
	if(num=="15") {	document.CodeForm.subtype.options[ctr]=new Option("善化鎮");	ctr=ctr+1;	} 
	if(num=="15") {	document.CodeForm.subtype.options[ctr]=new Option("新市鄉");	ctr=ctr+1;	} 
	if(num=="15") {	document.CodeForm.subtype.options[ctr]=new Option("大內鄉");	ctr=ctr+1;	} 
	if(num=="15") {	document.CodeForm.subtype.options[ctr]=new Option("山上鄉");	ctr=ctr+1;	} 
	if(num=="15") {	document.CodeForm.subtype.options[ctr]=new Option("新市鄉");	ctr=ctr+1;	} 
	if(num=="15") {	document.CodeForm.subtype.options[ctr]=new Option("安定鄉");	ctr=ctr+1;	}
	/*高雄市*/
	if(num=="16") {	document.CodeForm.subtype.options[ctr]=new Option("新興區");	ctr=ctr+1;	} 
	if(num=="16") {	document.CodeForm.subtype.options[ctr]=new Option("前金區");	ctr=ctr+1;	} 
	if(num=="16") {	document.CodeForm.subtype.options[ctr]=new Option("苓雅區");	ctr=ctr+1;	} 
	if(num=="16") {	document.CodeForm.subtype.options[ctr]=new Option("鹽埕區");	ctr=ctr+1;	} 
	if(num=="16") {	document.CodeForm.subtype.options[ctr]=new Option("鼓山區");	ctr=ctr+1;	} 
	if(num=="16") {	document.CodeForm.subtype.options[ctr]=new Option("旗津區");	ctr=ctr+1;	} 
	if(num=="16") {	document.CodeForm.subtype.options[ctr]=new Option("前鎮區");	ctr=ctr+1;	} 
	if(num=="16") {	document.CodeForm.subtype.options[ctr]=new Option("三民區");	ctr=ctr+1;	} 
	if(num=="16") {	document.CodeForm.subtype.options[ctr]=new Option("楠梓區");	ctr=ctr+1;	} 
	if(num=="16") {	document.CodeForm.subtype.options[ctr]=new Option("小港區");	ctr=ctr+1;	} 
	if(num=="16") {	document.CodeForm.subtype.options[ctr]=new Option("左營區");	ctr=ctr+1;	} 	
	/*高雄縣*/
	if(num=="17") {	document.CodeForm.subtype.options[ctr]=new Option("仁武鄉");	ctr=ctr+1;	} 
	if(num=="17") {	document.CodeForm.subtype.options[ctr]=new Option("大社鄉");	ctr=ctr+1;	} 
	if(num=="17") {	document.CodeForm.subtype.options[ctr]=new Option("岡山鎮");	ctr=ctr+1;	} 
	if(num=="17") {	document.CodeForm.subtype.options[ctr]=new Option("路竹鄉");	ctr=ctr+1;	} 
	if(num=="17") {	document.CodeForm.subtype.options[ctr]=new Option("阿蓮鄉");	ctr=ctr+1;	} 
	if(num=="17") {	document.CodeForm.subtype.options[ctr]=new Option("田寮鄉");	ctr=ctr+1;	} 
	if(num=="17") {	document.CodeForm.subtype.options[ctr]=new Option("燕巢鄉");	ctr=ctr+1;	} 
	if(num=="17") {	document.CodeForm.subtype.options[ctr]=new Option("橋頭鄉");	ctr=ctr+1;	} 
	if(num=="17") {	document.CodeForm.subtype.options[ctr]=new Option("梓官鄉");	ctr=ctr+1;	} 
	if(num=="17") {	document.CodeForm.subtype.options[ctr]=new Option("彌陀鄉");	ctr=ctr+1;	} 
	if(num=="17") {	document.CodeForm.subtype.options[ctr]=new Option("永安鄉");	ctr=ctr+1;	} 
	if(num=="17") {	document.CodeForm.subtype.options[ctr]=new Option("湖內鄉");	ctr=ctr+1;	} 
	if(num=="17") {	document.CodeForm.subtype.options[ctr]=new Option("鳳山市");	ctr=ctr+1;	} 
	if(num=="17") {	document.CodeForm.subtype.options[ctr]=new Option("大寮鄉");	ctr=ctr+1;	} 
	if(num=="17") {	document.CodeForm.subtype.options[ctr]=new Option("林園鄉");	ctr=ctr+1;	} 
	if(num=="17") {	document.CodeForm.subtype.options[ctr]=new Option("鳥松鄉");	ctr=ctr+1;	} 
	if(num=="17") {	document.CodeForm.subtype.options[ctr]=new Option("大樹鄉");	ctr=ctr+1;	} 
	if(num=="17") {	document.CodeForm.subtype.options[ctr]=new Option("旗山鎮");	ctr=ctr+1;	} 
	if(num=="17") {	document.CodeForm.subtype.options[ctr]=new Option("美濃鎮");	ctr=ctr+1;	} 
	if(num=="17") {	document.CodeForm.subtype.options[ctr]=new Option("六龜鄉");	ctr=ctr+1;	} 
	if(num=="17") {	document.CodeForm.subtype.options[ctr]=new Option("內門鄉");	ctr=ctr+1;	} 
	if(num=="17") {	document.CodeForm.subtype.options[ctr]=new Option("杉林鄉");	ctr=ctr+1;	} 
	if(num=="17") {	document.CodeForm.subtype.options[ctr]=new Option("甲仙鄉");	ctr=ctr+1;	} 
	if(num=="17") {	document.CodeForm.subtype.options[ctr]=new Option("桃源鄉");	ctr=ctr+1;	} 
	if(num=="17") {	document.CodeForm.subtype.options[ctr]=new Option("三民鄉");	ctr=ctr+1;	} 
	if(num=="17") {	document.CodeForm.subtype.options[ctr]=new Option("茂林鄉");	ctr=ctr+1;	} 
	if(num=="17") {	document.CodeForm.subtype.options[ctr]=new Option("茄萣鄉");	ctr=ctr+1;	} 
	/*澎湖縣*/
	if(num=="18") {	document.CodeForm.subtype.options[ctr]=new Option("馬公市");	ctr=ctr+1;	} 
	if(num=="18") {	document.CodeForm.subtype.options[ctr]=new Option("西嶼鄉");	ctr=ctr+1;	} 
	if(num=="18") {	document.CodeForm.subtype.options[ctr]=new Option("望安鄉");	ctr=ctr+1;	} 
	if(num=="18") {	document.CodeForm.subtype.options[ctr]=new Option("七美鄉");	ctr=ctr+1;	} 
	if(num=="18") {	document.CodeForm.subtype.options[ctr]=new Option("白沙鄉");	ctr=ctr+1;	} 
	if(num=="18") {	document.CodeForm.subtype.options[ctr]=new Option("湖西鄉");	ctr=ctr+1;	} 
	/*屏東縣*/
	if(num=="19") {	document.CodeForm.subtype.options[ctr]=new Option("屏東市");	ctr=ctr+1;	} 
	if(num=="19") {	document.CodeForm.subtype.options[ctr]=new Option("三地門");	ctr=ctr+1;	} 
	if(num=="19") {	document.CodeForm.subtype.options[ctr]=new Option("霧台鄉");	ctr=ctr+1;	} 
	if(num=="19") {	document.CodeForm.subtype.options[ctr]=new Option("瑪家鄉");	ctr=ctr+1;	} 
	if(num=="19") {	document.CodeForm.subtype.options[ctr]=new Option("九如鄉");	ctr=ctr+1;	} 
	if(num=="19") {	document.CodeForm.subtype.options[ctr]=new Option("里港鄉");	ctr=ctr+1;	} 
	if(num=="19") {	document.CodeForm.subtype.options[ctr]=new Option("高樹鄉");	ctr=ctr+1;	} 
	if(num=="19") {	document.CodeForm.subtype.options[ctr]=new Option("鹽埔鄉");	ctr=ctr+1;	} 
	if(num=="19") {	document.CodeForm.subtype.options[ctr]=new Option("長治鄉");	ctr=ctr+1;	} 
	if(num=="19") {	document.CodeForm.subtype.options[ctr]=new Option("麟洛鄉");	ctr=ctr+1;	} 
	if(num=="19") {	document.CodeForm.subtype.options[ctr]=new Option("竹田鄉");	ctr=ctr+1;	} 
	if(num=="19") {	document.CodeForm.subtype.options[ctr]=new Option("內埔鄉");	ctr=ctr+1;	} 
	if(num=="19") {	document.CodeForm.subtype.options[ctr]=new Option("萬丹鄉");	ctr=ctr+1;	} 
	if(num=="19") {	document.CodeForm.subtype.options[ctr]=new Option("潮州鎮");	ctr=ctr+1;	} 
	if(num=="19") {	document.CodeForm.subtype.options[ctr]=new Option("泰武鄉");	ctr=ctr+1;	} 
	if(num=="19") {	document.CodeForm.subtype.options[ctr]=new Option("來義鄉");	ctr=ctr+1;	} 
	if(num=="19") {	document.CodeForm.subtype.options[ctr]=new Option("萬巒鄉");	ctr=ctr+1;	} 
	if(num=="19") {	document.CodeForm.subtype.options[ctr]=new Option("崁頂鄉");	ctr=ctr+1;	} 
	if(num=="19") {	document.CodeForm.subtype.options[ctr]=new Option("新埤鄉");	ctr=ctr+1;	} 
	if(num=="19") {	document.CodeForm.subtype.options[ctr]=new Option("南州鄉");	ctr=ctr+1;	} 
	if(num=="19") {	document.CodeForm.subtype.options[ctr]=new Option("林邊鄉");	ctr=ctr+1;	} 
	if(num=="19") {	document.CodeForm.subtype.options[ctr]=new Option("東港鎮");	ctr=ctr+1;	} 
	if(num=="19") {	document.CodeForm.subtype.options[ctr]=new Option("琉球鄉");	ctr=ctr+1;	} 
	if(num=="19") {	document.CodeForm.subtype.options[ctr]=new Option("佳冬鄉");	ctr=ctr+1;	} 
	if(num=="19") {	document.CodeForm.subtype.options[ctr]=new Option("新園鄉");	ctr=ctr+1;	} 
	if(num=="19") {	document.CodeForm.subtype.options[ctr]=new Option("枋寮鄉");	ctr=ctr+1;	} 
	if(num=="19") {	document.CodeForm.subtype.options[ctr]=new Option("枋山鄉");	ctr=ctr+1;	} 
	if(num=="19") {	document.CodeForm.subtype.options[ctr]=new Option("春日鄉");	ctr=ctr+1;	} 
	if(num=="19") {	document.CodeForm.subtype.options[ctr]=new Option("獅子鄉");	ctr=ctr+1;	} 
	if(num=="19") {	document.CodeForm.subtype.options[ctr]=new Option("車城鄉");	ctr=ctr+1;	} 
	if(num=="19") {	document.CodeForm.subtype.options[ctr]=new Option("牡丹鄉");	ctr=ctr+1;	} 
	if(num=="19") {	document.CodeForm.subtype.options[ctr]=new Option("恆春鎮");	ctr=ctr+1;	} 
	if(num=="19") {	document.CodeForm.subtype.options[ctr]=new Option("滿州鄉");	ctr=ctr+1;	} 
	/*臺東縣*/
	if(num=="20") {	document.CodeForm.subtype.options[ctr]=new Option("台東市");	ctr=ctr+1;	} 
	if(num=="20") {	document.CodeForm.subtype.options[ctr]=new Option("綠島鄉");	ctr=ctr+1;	} 
	if(num=="20") {	document.CodeForm.subtype.options[ctr]=new Option("蘭嶼鄉");	ctr=ctr+1;	} 
	if(num=="20") {	document.CodeForm.subtype.options[ctr]=new Option("延平鄉");	ctr=ctr+1;	} 
	if(num=="20") {	document.CodeForm.subtype.options[ctr]=new Option("卑南鄉");	ctr=ctr+1;	} 
	if(num=="20") {	document.CodeForm.subtype.options[ctr]=new Option("鹿野鄉");	ctr=ctr+1;	} 
	if(num=="20") {	document.CodeForm.subtype.options[ctr]=new Option("關山鎮");	ctr=ctr+1;	} 
	if(num=="20") {	document.CodeForm.subtype.options[ctr]=new Option("海端鄉");	ctr=ctr+1;	} 
	if(num=="20") {	document.CodeForm.subtype.options[ctr]=new Option("池上鄉");	ctr=ctr+1;	} 
	if(num=="20") {	document.CodeForm.subtype.options[ctr]=new Option("東河鄉");	ctr=ctr+1;	} 
	if(num=="20") {	document.CodeForm.subtype.options[ctr]=new Option("成功鎮");	ctr=ctr+1;	} 
	if(num=="20") {	document.CodeForm.subtype.options[ctr]=new Option("長濱鄉");	ctr=ctr+1;	} 
	if(num=="20") {	document.CodeForm.subtype.options[ctr]=new Option("太麻里");	ctr=ctr+1;	} 
	if(num=="20") {	document.CodeForm.subtype.options[ctr]=new Option("金峰鄉");	ctr=ctr+1;	} 
	if(num=="20") {	document.CodeForm.subtype.options[ctr]=new Option("大武鄉");	ctr=ctr+1;	} 
	if(num=="20") {	document.CodeForm.subtype.options[ctr]=new Option("達仁鄉");	ctr=ctr+1;	} 
	/*花蓮縣*/
	if(num=="21") {	document.CodeForm.subtype.options[ctr]=new Option("花蓮市");	ctr=ctr+1;	} 
	if(num=="21") {	document.CodeForm.subtype.options[ctr]=new Option("新城鄉");	ctr=ctr+1;	} 
	if(num=="21") {	document.CodeForm.subtype.options[ctr]=new Option("秀林鄉");	ctr=ctr+1;	} 
	if(num=="21") {	document.CodeForm.subtype.options[ctr]=new Option("吉安鄉");	ctr=ctr+1;	} 
	if(num=="21") {	document.CodeForm.subtype.options[ctr]=new Option("壽豐鄉");	ctr=ctr+1;	} 
	if(num=="21") {	document.CodeForm.subtype.options[ctr]=new Option("鳳林鎮");	ctr=ctr+1;	} 
	if(num=="21") {	document.CodeForm.subtype.options[ctr]=new Option("光復鄉");	ctr=ctr+1;	} 
	if(num=="21") {	document.CodeForm.subtype.options[ctr]=new Option("豐濱鄉");	ctr=ctr+1;	} 
	if(num=="21") {	document.CodeForm.subtype.options[ctr]=new Option("瑞穗鄉");	ctr=ctr+1;	} 
	if(num=="21") {	document.CodeForm.subtype.options[ctr]=new Option("萬榮鄉");	ctr=ctr+1;	} 
	if(num=="21") {	document.CodeForm.subtype.options[ctr]=new Option("玉里鎮");	ctr=ctr+1;	} 
	if(num=="21") {	document.CodeForm.subtype.options[ctr]=new Option("卓溪鄉");	ctr=ctr+1;	} 
	if(num=="21") {	document.CodeForm.subtype.options[ctr]=new Option("富里鄉");	ctr=ctr+1;	} 
	/*金門縣*/
	if(num=="22") {	document.CodeForm.subtype.options[ctr]=new Option("金沙鎮");	ctr=ctr+1;	} 
	if(num=="22") {	document.CodeForm.subtype.options[ctr]=new Option("金湖鎮");	ctr=ctr+1;	} 
	if(num=="22") {	document.CodeForm.subtype.options[ctr]=new Option("金寧鄉");	ctr=ctr+1;	} 
	if(num=="22") {	document.CodeForm.subtype.options[ctr]=new Option("金城鎮");	ctr=ctr+1;	} 
	if(num=="22") {	document.CodeForm.subtype.options[ctr]=new Option("烈嶼鄉");	ctr=ctr+1;	} 
	if(num=="22") {	document.CodeForm.subtype.options[ctr]=new Option("烏坵鄉");	ctr=ctr+1;	}
	/*連江縣*/
	if(num=="23") {	document.CodeForm.subtype.options[ctr]=new Option("南竿鄉");	ctr=ctr+1;	} 
	if(num=="23") {	document.CodeForm.subtype.options[ctr]=new Option("北竿鄉");	ctr=ctr+1;	} 
	if(num=="23") {	document.CodeForm.subtype.options[ctr]=new Option("莒光鄉");	ctr=ctr+1;	} 
	if(num=="23") {	document.CodeForm.subtype.options[ctr]=new Option("東引鄉");	ctr=ctr+1;	} 
	/*南海諸島*/
	if(num=="24") {	document.CodeForm.subtype.options[ctr]=new Option("東　沙");	ctr=ctr+1;	}
	if(num=="24") {	document.CodeForm.subtype.options[ctr]=new Option("南　沙");	ctr=ctr+1;	}
	/*釣魚台列嶼*/
	if(num=="25") {	document.CodeForm.subtype.options[ctr]=new Option("釣魚台列嶼");	ctr=ctr+1;	}
	document.CodeForm.subtype.length=ctr;
	document.CodeForm.subtype.options[0].selected=true;
} 
<!-- <==============================Google Map function Start==============================> -->
function codeAddress(){
	var add = document.getElementById("address");
	var Longitude = document.getElementById("Longitude");
	var Latitude = document.getElementById("Latitude");
	var lnglat = document.getElementById("lnglat");
	var geocoder = new google.maps.Geocoder();
	geocoder.geocode( { address: add.value}, function(results, status) {
	if (status == google.maps.GeocoderStatus.OK) {
	Longitude.value = results[0].geometry.location.lng();
	Latitude.value = results[0].geometry.location.lat();
	} else {
	alert("請輸入正確的地址");
	}
	});
	}
<!-- <===============================Google Map function End===============================> -->
</script>
</head>
<body>
	<center>
		<form action="<c:url value="/mission.do"/>" name="CodeForm" method="post" enctype="multipart/form-data"  >
		<table >
			<tbody>
				<tr><td id="title">● 會員編號:</td></tr>
				<tr><td><input type="text" id="memberNo" name="memberNo"  size=50% value="${user.memberNo}"  readonly="readonly"  /></td></tr>
				<tr><td id="title">● 任務標題:</td></tr>
				<tr><td><input type="text" id="missionTitle" name="missionTitle" size="50%" value="${param.missionTitle}"  placeholder="標題名稱"   /><br>
	                    <font color='red' size='-1'>${ErrMsg.errTitle}</font></td></tr>
				<tr><td id="title">● 任務描述:</td></tr>
				<tr><td><textarea id="missionDesc" rows="7" cols="52"  name="missionDesc" ></textarea>
	                    <br><font color='red' size='-1'>${ErrMsg.errDesc}</font></td></tr>
	            <tr><td id="title" >● 任務執行時間:  (yyyy/MM/dd H:m)</td></tr>
				<tr><td><input type="text" name="missionExcuteTime" size="50%"  >
						<br><font color='red' size='-1'>${ErrMsg.errTime}</font></td></tr>
				<tr><td id="title">● 任務地區:</td></tr>
				<tr>
				    <td><select name="type" size=1  onChange="Buildkey(this.options[this.options.selectedIndex].value);">
								    <option value=0>請選擇縣市...</option>
								    <option value="1" >臺北市</option>
								    <option value="2" >基隆市</option>
								    <option value="3" >新北市</option>
								    <option value="4" >宜蘭縣</option>
								    <option value="5" >新竹縣市</option>
								    <option value="6" >桃園縣</option>
								    <option value="7" >苗栗縣</option>
								    <option value="8" >臺中市</option>
								    <option value="9" >臺中縣</option>
								    <option value="10" >彰化縣</option>
								    <option value="11" >南投縣</option>
								    <option value="12" >嘉義縣市</option>
								    <option value="13" >雲林縣</option>
								    <option value="14" >臺南市</option>
								    <option value="15" >臺南縣</option>
								    <option value="16" >高雄市</option>
								    <option value="17" >高雄縣</option>
								    <option value="18" >澎湖縣</option>
								    <option value="19" >屏東縣</option>
								    <option value="20" >臺東縣</option>
								    <option value="21" >花蓮縣</option>
								    <option value="22" >金門縣</option>
								    <option value="23" >連江縣</option>
								    <option value="24" >南海諸島</option>
								    <option value="25" >釣魚台列嶼</option>
						</select>
					    <select name="subtype" size=1 >
							<option value="">請選擇區域..</option>
						</select><br><font color='red' size='-1'>${ErrMsg.errArea}</font></td></tr>
						
				<tr><td id="title">● 任務地址:</td></tr>
				<tr><td><input type="text" id="address" name="address" size="50%" onblur="codeAddress()" value="${param.address}" /><br>
	                    <font color='red' size='-1'>${ErrMsg.errAddress}</font></td></tr>    
	              <tr><td id="title">● 緯經度:</td></tr>
				<tr><td><input name="Latitude" type="text" id="Latitude" size="22%" readonly="readonly"/>
						<input name="Longitude" type="text" id="Longitude" size="23%" readonly="readonly"/><br></td></tr>
				<tr><td id="title">● 任務人數:</td></tr>
				<tr><td><input type="NUMBER"  min="1" id="missionPeople" name="missionPeople" size="50%" value="${param.missionPeople}" /><br>
	                    <font color='red' size='-1'>${ErrMsg.errPeople}</font></td></tr>
				<tr><td id="title">● 獎金:</td></tr>
				<tr><td><input type="text" id="rewardCoin" name="rewardCoin" size="50%" value="${param.rewardCoin}"   placeholder=" $ $ $ $ $ $ $ $ $ $ $ $ $ $ $ $ $ $ $ $ $ $ $ $ $ $ $ $ $ $ $ $ $ $"  /><br>
	                 <font color='red' size='-1'>${ErrMsg.errCoin}${ErrMsg.errReward}</font></td></tr>
				<tr><td id="title">● 禮物照片:</td></tr>
				<tr><td><input type="file" name="myfile" id="imgInp" size="30" style="width: 200px;"/>
						<img id="blah" src="#" alt="your image" width="80"/></td></tr>
				<tr><td id="title">● 禮物說明:</td></tr>
				<tr><td><textarea rows="3" cols="52" name="describe"></textarea></td></tr>
				<tr><th>
					<input type="button" value="預覽" style="width:60px;height:22px">
					<input type="submit" value="發佈" style="width:60px;height:22px">
					<input type="button" value="取消" style="width:60px;height:22px">
				</th></tr>
				
			</tbody>
		</table>
		</form>
	</center>
</body>
</html>