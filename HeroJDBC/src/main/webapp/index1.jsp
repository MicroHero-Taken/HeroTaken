<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%-- <jsp:include page="Top.jsp" flush="true" ></jsp:include> <!--選單 --> --%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>aLLiNoNE</title>
<script src="js/mission.js"></script> <!--發布任務 -->
<style type="text/css">
*{-webkit-print-color-adjust:exact;}
body {background:url(${pageContext.servletContext.contextPath}/Img/marvelQ1.jpg);margin:0px;padding:0px;font-align:center;overflow:hidden;}
.menuHolder {width:100px; height:100px; margin:0px 0 250px 0px; position:fiexd;z-index:4;}/*選單為網頁最上層*/
.menuHolder ul {padding:0; margin:0; list-style:none; position:absolute; left:0; top:0; width:0; height:0;}
.menuHolder ul li {border-radius:0 0 300px 0; width:0; height:0;}
.menuHolder ul li a {color:#000; text-decoration:none; font:bold 15px/55px malgun gothic, sans-serif; text-align:center; box-shadow:-5px 5px 5px rgba(0,0,0,0.4);
-webkit-transform-origin:0 0;
-moz-transform-origin:0 0;
-ms-transform-origin:0 0;
-o-transform-origin:0 0;
transform-origin:0 0;
}
.menuHolder ul.p1 li {position:absolute; left:0; top:0;}
.menuHolder ul.p2 {z-index:-1;line-height:20px;}
.menuHolder ul.p3 {z-index:-1;}
.menuHolder li.s1 > a {position:absolute; display:block; width:100px; height:100px; background:url(${pageContext.servletContext.contextPath}/Img/shield/Shield6.png); border-radius:0 0 100px 0;}
.menuHolder li.s2 > a {position:absolute; display:block; width:100px; padding-left:100px; height:200px; background:#444444;/*灰*/ border-radius:0 0 200px 0;}
.menuHolder ul.p3 li a {position:absolute; display:block; width:100px; padding-left:200px; height:300px; background:#000088; border-radius:0 0 300px 0;}
.menuHolder ul ul {                                                                                               /*藍色01*/
-webkit-transform-origin:0 0;
-moz-transform-origin:0 0;
-ms-transform-origin:0 0;
-o-transform-origin:0 0;
transform-origin:0 0;
-webkit-transform:rotate(90deg);
-moz-transform:rotateZ(90deg);
-ms-transform:rotate(90deg);
-o-transform:rotate(90deg);
transform:rotate(90deg);
-webkit-transition:1s;
-moz-transition:1s;
-ms-transition:1s;
-o-transition:1s;
transition:1s;
}
.menuHolder li.s2:nth-of-type(6) > a {background:#DCDCDC; /*灰6*/
-moz-transform:rotateZ(90deg);
-ms-transform:rotate(90deg);
-o-transform:rotate(90deg);
transform:rotate(90deg);
}
.menuHolder li.s2:nth-of-type(5) > a {background:#DDDDDD; /*灰5*/
-webkit-transform:rotate(72deg);
-moz-transform:rotateZ(72deg);
-ms-transform:rotate(72deg);
-o-transform:rotate(72deg);
transform:rotate(72deg);
}
.menuHolder li.s2:nth-of-type(4) > a {background:#AAAAAA; /*灰4*/
-webkit-transform:rotate(54deg);
-moz-transform:rotateZ(54deg);
-ms-transform:rotate(54deg);
-o-transform:rotate(54deg);
transform:rotate(54deg);
}
.menuHolder li.s2:nth-of-type(3) > a {background:#888888; /*灰3*/
-webkit-transform:rotate(36deg);
-moz-transform:rotateZ(36deg);
-ms-transform:rotate(36deg);
-o-transform:rotate(36deg);
transform:rotate(36deg);
}
.menuHolder li.s2:nth-of-type(2) > a {background:#666666; /*灰2*/
-webkit-transform:rotate(18deg);
-moz-transform:rotateZ(18deg);
-ms-transform:rotate(18deg);
-o-transform:rotate(18deg);
transform:rotate(18deg);
}
/*-----------------------------------------------------------------------------*/

.menuHolder .a6 li:nth-of-type(2) > a {background:#0000AA; /*懸賞任務*/
-webkit-transform:rotate(90deg);                 /*藍色02*/
-moz-transform:rotateZ(90deg);
-ms-transform:rotate(90deg);
-o-transform:rotate(90deg);
transform:rotate(90deg);
}
/*------------------------------------------------------------------------------*/
.menuHolder .a5 li:nth-of-type(2) > a {background:#0000AA; /*商城*/
-webkit-transform:rotate(22.5deg);
-moz-transform:rotateZ(22.5deg);
-ms-transform:rotate(22.5deg);
-o-transform:rotate(22.5deg);
transform:rotate(22.5deg);
}
/*------------------------------------------------------------------------------*/
.menuHolder .a4 li:nth-of-type(3) > a {background:#0000CC; /*紅3*//*任務專區*/
-webkit-transform:rotate(60deg);
-moz-transform:rotateZ(60deg);
-ms-transform:rotate(60deg);
-o-transform:rotate(60deg);
transform:rotate(60deg);
}
.menuHolder .a4 li:nth-of-type(2) > a {background:#0000AA; /*紅2*/
-webkit-transform:rotate(30deg);
-moz-transform:rotateZ(30deg);
-ms-transform:rotate(30deg);
-o-transform:rotate(30deg);
transform:rotate(30deg);
}
/*----------------------------------------------------------------------*/
.menuHolder .a2 li:nth-of-type(2) > a {background:#0000AA;/*5*//*名*/
-webkit-transform:rotate(18deg);
-moz-transform:rotateZ(18deg);
-ms-transform:rotate(18deg);
-o-transform:rotate(18deg);
transform:rotate(18deg);
}
.menuHolder .a2 li:nth-of-type(3) > a {background:#0000CC;/*4*//*名*/
-webkit-transform:rotate(36deg);
-moz-transform:rotateZ(36deg);
-ms-transform:rotate(36deg);
-o-transform:rotate(36deg);
transform:rotate(36deg);
}
.menuHolder .a2 li:nth-of-type(4) > a {background:#0000FF;/*3*//*名*/
-webkit-transform:rotate(54deg);
-moz-transform:rotateZ(54deg);
-ms-transform:rotate(54deg);
-o-transform:rotate(54deg);
transform:rotate(54deg);
}
.menuHolder .a2 li:nth-of-type(5) > a {background:#5555FF;/*2*//*名*/
-webkit-transform:rotate(72deg);
-moz-transform:rotateZ(72deg);
-ms-transform:rotate(72deg);
-o-transform:rotate(72deg);
transform:rotate(72deg);
}
/* 8888888888888888888888888888888888888888888888888888888888888888888888888888 */
.menuHolder .a3 li:nth-of-type(1) > a {background:#000088;/*r1*//*會員*/
-webkit-transform:rotate(0deg);
-moz-transform:rotateZ(0deg);
-ms-transform:rotate(0deg);
-o-transform:rotate(0deg);
transform:rotate(0deg);
}
.menuHolder .a3 li:nth-of-type(2) > a {background:#0000AA;/*r3*//*會員*/
-webkit-transform:rotate(30deg);
-moz-transform:rotateZ(30deg);
-ms-transform:rotate(30deg);
-o-transform:rotate(30deg);
transform:rotate(30deg);
}
.menuHolder .a3 li:nth-of-type(3) > a {background:#0000CC;/*r2*/
-webkit-transform:rotate(60deg);
-moz-transform:rotateZ(60deg);
-ms-transform:rotate(60deg);
-o-transform:rotate(60deg);
transform:rotate(60deg);
}
/*-------------------------------------------------------------------------*/
.menuHolder li.s1:hover ul.p2 {
-webkit-transform:rotate(0deg);
-moz-transform:rotateZ(0deg);
-ms-transform:rotate(0deg);
-o-transform:rotate(0deg);
transform:rotate(0deg);
}
.menuHolder li.s2:hover ul.p3 {
-webkit-transform:rotate(0deg);
-moz-transform:rotateZ(0deg);
-ms-transform:rotate(0deg);
-o-transform:rotate(0deg);
transform:rotate(0deg);
}
.menuHolder ul li:hover > a {color:#fff;${pageContext.servletContext.contextPath};} /*鼠標碰到後的顏色*/
.menuHolder li.s2:hover > a {background:#FF0000; color:#fff;}/*背景紅色 字體白色*/
.menuHolder .a6 li:hover > a {background:#FFD700; color:#fff;}/**/
.menuHolder .a5 li:hover > a {background:#FFD700; color:#fff;}
.menuHolder .a4 li:hover > a {background:#FFD700; color:#fff;}
.menuHolder .a3 li:hover > a {background:#FFD700; color:#fff;}/*color = 字的顏色*/
.menuHolder .a2 li:hover > a {background:#FFD700; color:#fff;}
.menuWindow {width:110px; height:110px; overflow:hidden; position:absolute; left:0; top:0; z-index:4;
-webkit-transition:0s 1s;
-moz-transition:0s 1s;
-ms-transition:0s 1s;
-o-transition:0s 1s;
transition:0s 1s;
}
.menuHolder:hover .menuWindow {width:400px; height:400px;
-webkit-transition:0s 0s;
-moz-transition:0s 0s;
-ms-transition:0s 0s;
-o-transition:0s 0s;
transition:0s 0s;
}
.menuHolder span {display:block; 
-webkit-transform:rotate(5deg);
-moz-transform:rotateZ(5deg);
-ms-transform:rotate(5deg);
-o-transform:rotate(5deg);
transform:rotate(5deg);
}
.menuHolder ~ img.close {width:0; height:0; position:fixed; z-index:-1; left:0; top:0;}
.menuHolder:hover ~ img.close {width:100%; height:50%;}

a {line-height:20px;}
/* ====================================================================================================================================== */
#big_door_left     /*左大半*/
{
 	top: 0px;
  	buttom:0px;  
   	left:-49.9%;
 	width:50%; 
 	height:1600px; /*佔滿瀏覽器高度*/
	position:fixed;/*固定定位*/
	z-index:2; 
	background:orange;
}

#big_door_right    /*右大半*/
{
 	top: 0px;
  	buttom:0px;
   	right:-49.9%;  
 	width:50%;
 	height:1600px; /*佔滿瀏覽器高度*/
	position:fixed;/*固定定位*/
	z-index:2;
	border 2px solid red;
	background:yellow;
}

#hiden_door_left {     /*隱藏部分(左)*/
	background:url(${pageContext.servletContext.contextPath}/Img/CaptainAmericaCivilWar03.jpg) no-repeat;
	width:100%;
	height:1600px;
	z-index:5;
	
}

#hiden_door_right {    /*隱藏部分(右)*/
    background:url(${pageContext.servletContext.contextPath}/Img/CaptainAmericaCivilWar07.jpg) no-repeat;
    float:right;
	width:100%;
	height:1600px;
	z-index:5;
	
}

#right_door  {          /*觸碰區(右)*/
	position:absolute; 
	left:0px;
	width:25px;
	height:946px;
	background:Alpha(opacity=100);    /*背景(透明)Alpha(opacity=100)*/
	padding-top:470px;
	z-index:3;

}
#left_door {           /*觸碰區(左)*/
    position:absolute; 
	right:0px;
	width:25px;
	height:946px;
	background:Alpha(opacity=100);    /*背景 (透明)*/
	padding-top:470px;	
	z-index:3;
}
/* ====================================================================================================================================== */
#ad {/*外*/
    position:absolute;
    top:-100%;
    buttom:100px;
    left:0%;
    right:0px;
    width:100%;
    height:100%;
	z-index:6;
/* 	background:orange; */
/* 	opacity:0.5; */
}
#bk {/*裡*/
    position:fixed;
    top:-100%;
    left:0px;
    right:0px;
    width:100%;
    height:100%;
	background:black;
    opacity:0.7;
}
#X {
    position:fixed;
    top:-100%;
    width:100%;
    height:50px;
    left:0%;
    background:white;
    font-size:20px;
    font:center;
    z-index:7;
   }
/* ====================================================================================================================================== */
#abgneBlock {
	width:60%;
	height:88%;
	top:80px;
	left:200px;
	position:absolute;
	border: 1px solid black;
}

.hdr{ background:gray; width:461px; height:94px; margin:10px auto; text-indent:-9999px;}
a{ text-decoration:none;}
a:hover{ text-decoration:underline;}
.listReset{ padding:0; margin:0; list-style:none;}

.tabPanel{ width:768px;height:1024px;position:absolute;top:75px;left:25%;}
.tab-content{ width:450px; height:200px; position:; top:0; left:0;}
.detail{ position:absolute; left:20px; top:0; width:150px; height:190px; background:url(images/detailBG.png); padding:5px;}
.detail h1 a{ color:#FF0; font-size:.5em;}
.detail p{ color:#FFF; font-size:.8em; line-height:1.5;}
.detail ul{ color:#F90; list-style-type:square; padding-left:20px; margin:10px 0 0;}
.detail ul a{ color:#FC0;  font-size:.8em; line-height:1.5;}

.switch{ width:150px; position:absolute; top:0; right:0px;}
.switch a{ display:block; line-height:40px; background:url(images/tabBG.jpg); text-indent:1em; color:#666; text-decoration:none; *height:40px;}
.switch a:hover{ background:#F0F; color:#000; background:url(images/tabBG_over.jpg);}

a.now-tab, a.now-tab:hover{ background:url(images/tabBG_now.png); text-indent:1.5em; color:#FFF; font-weight:bold; margin-left:-20px; border:0;}

/* @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  Google Map  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ */
#Map {
width:70%;
height:900px;
border:5px solid black ;
position:fixed;
top:20px;
left:15%;
z-index:1;
}
/* QAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQA */

#mission {position:fixed;width:100%;height:100%;background:url(${pageContext.servletContext.contextPath}/Img/barBiG.jpg);opacity:0.95;top:-110%;left:0px;z-index:6;}
#mipage {position:absolute;height:120%;width:695px;top:-20px;left:33%;background:url(/${pageContext.servletContext.contextPath}Img/193247.png);background-repeat: no-repeat;}
table {position:absolute;top:145px;left:168px;}
#title {font-size:17px;color:#f2f2f2;text-align:left;font-weight:bold;}
select{width:189px;}
form{margin:0%;paddind:0%;background:url(${pageContext.request.contextPath}/images/PNG6.png);
     background-repeat:no-repeat;background-size:500px 830px;background-position:50% 50%;}
#cat {position:absolute;width:62px;height:78px;bottom:412px;left:499px;}
</style>

<!-- QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ     style / script     QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ -->

<script type='text/javascript' src='http://code.jquery.com/jquery-1.9.1.min.js'></script>
<!-- <==============================Google Map script Start==============================> -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>
<script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
<!-- <===============================Google Map script End===============================> -->
<script type="text/javascript">
//==============================Google Map function Start==============================
//帶入後台 Database 匯出之 JSON 資料
 window.onload = function () {
    	$.ajax(
    		'${pageContext.request.contextPath}/googlemap/GoogleMapServlet',
    		{
    			async:false,
    			cache:false,
    			contentType:'application/json',
    			success:function(data){
    				LoadMap(data);
    			}
    		}
    	);
    }
//Google Map Function    
    function LoadMap(markers) {
        var mapOptions = {
            zoom : 16,
			minZoom: 16,
			draggable : true,
			zoomControl : false,
			mapTypeId : google.maps.MapTypeId.ROADMAP
        };
        var infoWindow = new google.maps.InfoWindow();
        var latlngbounds = new google.maps.LatLngBounds();
        var map = new google.maps.Map(document.getElementById("Map"), mapOptions);
//迴圈帶出 Marker 進行多點標記 
        for (var i = 0; i < markers.length; i++) {
            var data = markers[i]
            var myLatlng = new google.maps.LatLng(data.Latitude, data.Longitude);
            var image = {
            	    url: data.icon,
            	    // This marker is 20 pixels wide by 32 pixels high.
            	   // size: new google.maps.Size(50, 50),

            	  };

            var marker = new google.maps.Marker({
                position: myLatlng,
                map: map,
                title: data.MissionTitle,
                optimized: false,
                icon: image,
            });
            (function (marker, data) {
                google.maps.event.addListener(marker, "mouseover", function (e) {
                    infoWindow.setContent("<div style = 'width:200px;min-height:40px'>" + '任務名稱:'  + data.MissionTitle  + '<br>' + '發起人: ' + data.MemberName + '<br>' + '需求人數: ' + data.MissionPeople + '<br>' + '需求性別: ' + data.MissionGender + '<br>' + '開始時間: ' + data.MissionStrt + '<br>' + '任務說明: ' + data.MissionDesc + '<br>' + "</div>");
                    infoWindow.open(map, marker);
                });
            })(marker, data);
            latlngbounds.extend(marker.position);
        }
        var bounds = new google.maps.LatLngBounds();
        map.setCenter(latlngbounds.getCenter());
        map.fitBounds(latlngbounds);  
      //呼叫 W3C 地理資訊 嘗試取得使用者位置
		if (navigator.geolocation) {
			browserSupportFlag = true;
			navigator.geolocation.getCurrentPosition(function(position) {
				initialLocation = new google.maps.LatLng(
						position.coords.latitude, position.coords.longitude);
				map.setCenter(initialLocation);
			}, function() {
				handleNoGeolocation(browserSupportFlag);
			});
		} else {
			browserSupportFlag = false;
			handleNoGeolocation(browserSupportFlag);
		}
		function handleNoGeolocation(errorFlag) {
			if (errorFlag == true) {
				alert("地圖定位失敗");
			} else {
				alert("您的瀏覽器不支援定位服務");
			}
			initialLocation = taipei;
			map.setCenter(initialLocation);
		}
//===============================Google Map script End===============================
/**//**//**//**//**//**//**//**//**//**//**//*以下為輪播廣告*//**//**//**//**//**//**//**//**//**//**/
		var num=1;
		var tNum=5;
		var duration=2000;
		
		run();
		document.getElementById("box").onmouseover=stopRun;
		document.getElementById("box").onmouseout=run;
		
		for(var i=1; i<=tNum; i++){
			document.getElementById("tab"+i).onclick=show;
			document.getElementById("con"+i).style.display="none";
		}
		document.getElementById("con1").style.display="block";
		document.getElementById("tab1").className="now-tab";
	//===============================================
	//===============================================
		function autoShow(){
			for(var i=1; i<=tNum; i++){
				document.getElementById("con"+i).style.display="none";
				document.getElementById("tab"+i).className="";
			}
			if(num<tNum){ num++;}else{ num=1;}
			document.getElementById("con"+num).style.display="block";
			document.getElementById("tab"+num).className="now-tab";
		}
		
		function show(){
			num=this.id.substr(3)-1;
			autoShow();
		}
		
		function stopRun(){ clearInterval(myInterval);}
		
		function run(){ myInterval= setInterval( autoShow, duration);}
    }
</script>
<!--<===============================Google Map function End===============================>-->
<script type="text/javascript">
 $(function(){
	$("#left_door").hover(function(){ //滑鼠滑入(左)時
			$("#big_door_left").animate({ left:'0px'}, 800 ,'swing');
			$("#big_door_right").animate({ right:'0px'}, 800 ,'swing');
			
//      		$("#ad").css('z-index','6');
     		
     		$("#ad").animate({top:'60px'},2000,'swing');
     		$("#X").animate({top:'0px'},2000,'swing');
     		$("#bk").animate({top:'0px'},2000,'swing');
 			
			//把左邊的px變成'0px'，就可以把它推出來
	 }); 
	});
                                 /* ↑left, ↓right */
$(function(){
	$("#right_door").hover(function(){ //滑鼠滑入(右)時
		    $("#big_door_left").animate({ left:'0px'}, 800 ,'swing');
			$("#big_door_right").animate({ right:'0px'}, 800 ,'swing');
			
			
// 			$("#ad").css('z-index','6');
			
			$("#ad").animate({top:'60px'},2000,'swing');
			$("#X").animate({top:'0px'},2000,'swing');
			$("#bk").animate({top:'0px'},2000,'swing');
			//把"那片"的width調成  負的原先值
	 });
});
                                 
$(function(){
	$("#X").click(function(){   //滑入上方白條後=收
// 		$("#ad").css('z-index','-2');
	
		$("#big_door_right").animate({ right:'-49.9%' }, 10 ,'swing');
		$("#big_door_left").animate({left:'-49.9%' }, 10 ,'swing');
		
		$("#ad").animate({top:'-100%'},10,'swing');
		$("#X").animate({top:'-100%'},10,'swing');
		$("#bk").animate({top:'-100%'},10,'swing');
   });
});
</script>

</head>
<body>
<div id="Map"></div>

<div class="menuHolder" >
	<div class="menuWindow">
		<ul class="p1">
			<li class="s1"><a href="#url">Menu</a>
				<ul class="p2" style="line-height:20px;">
					<li class="s2"><a href="<c:url value="/index1.jsp" />"><span>Home</span></a>
					<ul class="p3 a2">
							<li><a style="line-height:20px;" href="#">Name: ${Login.memberName}</a></li><!--名字 -->
							<li><a href="#">$: ${Login.coin}</a></li>
							<li><a href="#">Rating: ${Login.rating}</a></li>
							<li><a href="<c:url value="AboutUs/starwars.jsp" />">AboutUs</a></li>
							<li><a href="<c:url value="secure/logOut.jsp" />">LogOut</a></li>
						</ul>
					</li>
					<li class="s2"><a href="#"><span>Members Only</span></a>
					<ul class="p3 a3">
							<li><a style="line-height:20px;" href="<c:url value="pages/memberHero.jsp" />">Modify<br>Skin</a></li>
							<li><a style="line-height:20px;" href="<c:url value="secure/memberchange.jsp" />">Modify<br>Data</a></li>
							<li><a href="#" style="line-height:20px;">Access to<br>personal<br>data</a></li>
						</ul>
					</li>
					<li class="s2"><a href="#"><span>Mission Area</span></a>
					<ul class="p3 a4">
							<li><a id="m" href="#" onclick="window.open('http://localhost:8080/HeroJDBC/pages/mission.jsp', 'Mission', config='height=825,width=430',flowover=hidden);" style="line-height:25px;">Publish Mission</a></li>
							<li><a href="<c:url value="/missionMem.do?" />" style="line-height:25px;">Accept Mission</a></li>
							<li><a href="../pages/search.jsp" style="line-height:25px;">Inquire Mission</a></li>
						</ul>
					</li>
					<li class="s2"><a href="#"><span>Hero Market</span></a>
					<ul class="p3 a5">
							<li><a href="pages/shop.jsp">Buy Hero</a></li>
						</ul>
					</li>
					<li class="s2"><a href="#url" style="line-height:20px;"><span>Reward Mission</span></a>
					<ul class="p3 a6">
							<li><a href="#" onclick="window.open('http://localhost:8080/HeroJDBC/chatRoom/chat.jsp', 'chatroom', config='height=380,width=340',flowover=hidden);" style="line-height:25px;">Reward<br>Mission</br> List</a></li>
						</ul>
					</li>
				</ul>
			</li>
		</ul>
	</div>
</div>
<!-- XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX我是分隔線XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX -->
<div id="big_door_left"><!--最大的門(左)-->
 <div id="left_door" ><!--左邊可觸碰的點-->
    <span></span>
</div>
<div id="hiden_door_left">
	                      <!--隱藏門(左)-->
</div>
</div>
<!--↑左門,右門↓ -->
<div id="big_door_right"><!--最大的門(右)-->
 <div id="right_door" ><!--右邊可觸碰的點-->
    <span></span>
</div>
<div id="hiden_door_right">
	                      <!--隱藏門(右)-->
</div>
</div>
 <!-- ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓輪播廣告 用↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓ -->

<div id="ad" >
<div id="bk">123456789</div>
<div class="tabPanel" id="box">
  <div class="tab-content" id="con1">
    <img src="${pageContext.servletContext.contextPath}/Img/Ad/1.jpg" width="1024" height="768" alt="Marvel">
  </div>
  <div class="tab-content" id="con2">
    <img src="${pageContext.servletContext.contextPath}/Img/Ad/5.jpg" width="1024" height="768" alt="SuperWomen">
  </div>
  <div class="tab-content" id="con3">
    <img src="${pageContext.servletContext.contextPath}/Img/Ad/3.jpg" width="1024" height="768" alt="AntMan">
  </div>
  <div class="tab-content" id="con4">
    <img src="${pageContext.servletContext.contextPath}/Img/Ad/4.jpg" width="1024" height="768" alt="SpiderMan">
  </div>
  <div class="tab-content" id="con5">
    <img src="${pageContext.servletContext.contextPath}/Img/Ad/2.jpg" width="1024" height="768" alt="Hulk">
  </div>
  <ul class="listReset switch">
    <li><a  id="tab1"></a></li>
    <li><a  id="tab2"></a></li>
    <li><a  id="tab3"></a></li>
    <li><a  id="tab4"></a></li>
    <li><a  id="tab5"></a></li>
  </ul>
</div>
<div id="X" font-size:40px;>    點    擊   這    裡   關    閉    廣    告    </div>
</div>

</body>
</html>
