<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- -------------------------------------------jQuery---------------------------------------------- -->
<script type="text/javascript" src="/HeroJDBC/js/jquery-2.2.1.min.js"></script>
<script src="/HeroJDBC/js/jquery.js"></script>
<!-- ------------------------------------------------------------------------------------------------ -->

<title>Edit Hero</title>
<style type="text/css">
body {background:url(../Img/InsertHero.jpg)no-repeat;}
#heroNo {background-color:rgba(0,0,0,0.7);color:#26FFD9;Font-family:Meiryo; font-size:20px;font-weight:bold;position:absolute; top:890px;left:795px;}
#heroName {background-color:rgba(0,0,0,0.8);color:#80FF80;Font-family:Meiryo; font-size:20px;font-weight:bold;position:absolute; top:890px;left:795px;}
#heroPrice {background-color:rgba(0,0,0,0.7);color:#D9FF26;Font-family:Meiryo; font-size:20px;font-weight:bold;position:absolute; top:890px;left:795px;}
#skin1 {color:#FF2E1A;font-size:1.5em;position:absolute;font-weight:bold;float:right; top:-100px;right:249px;} 
#skin2 {color:#FF2640;font-size:1.5em;position:absolute;font-weight:bold;float:right; top:-100px;right:74px;} 
#skin3 {color:#FF1F66;font-size:1.5em;position:absolute;font-weight:bold;float:right; top:-100px;right:34px;} 
#skin4 {color:#FF178C;font-size:1.5em;position:absolute;font-weight:bold;float:right; top:-100px;right:76px;} 
#skin5 {color:#FF0FB2;font-size:1.5em;position:absolute;font-weight:bold;float:right; top:-100px;right:200px;} 
#button {width:380px;height:40px;bottom:1.875em;left:49em;position:absolute;}
#title {color:#fef400;font-family:fantasy,cursive;font-size:5em;top:92px;left:850px;position:absolute;}
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
</style>
<script type="text/javascript">
// 顯示上傳圖
	$(function()
	{
		$("#imgInp1").change(function(){
			if (this.files && this.files[0]) {
				var reader = new FileReader();			
				reader.onload = function (e) {
					$('#blah1').attr('src', e.target.result);
				}
				reader.readAsDataURL(this.files[0]);
			}
		});
	}) ;
	$(function()
			{
				$("#imgInp2").change(function(){
					if (this.files && this.files[0]) {
						var reader = new FileReader();			
						reader.onload = function (e) {
							$('#blah2').attr('src', e.target.result);
						}				
						reader.readAsDataURL(this.files[0]);
					}
				});
			}) ;
	$(function()
			{
				$("#imgInp3").change(function(){
					if (this.files && this.files[0]) {
						var reader = new FileReader();	
						reader.onload = function (e) {
							$('#blah3').attr('src', e.target.result);
						}	
						reader.readAsDataURL(this.files[0]);
					}
				});
			}) ;
	$(function()
			{
				$("#imgInp4").change(function(){
					if (this.files && this.files[0]) {
						var reader = new FileReader();	
						reader.onload = function (e) {
							$('#blah4').attr('src', e.target.result);
						}	
						reader.readAsDataURL(this.files[0]);
					}
				});
			}) ;
	$(function()
			{
				$("#imgInp5").change(function(){
					if (this.files && this.files[0]) {
						var reader = new FileReader();	
						reader.onload = function (e) {
							$('#blah5').attr('src', e.target.result);
						}
						reader.readAsDataURL(this.files[0]);
					}
				});
			}) ;
	
	
	$().click(function(){
	    var div=$("div");  var div=$("#X");
	    div.animate({top:'300px',opacity:'0.4'},"fast");/*下*/
	    div.animate({top:'100',left:'300px',opacity:'0.8'},"fast");/*右*/
	    div.animate({height:'100px',opacity:'0.4'},"fast");
	    div.animate({width:'100px',opacity:'0.8'},"fast");
	  });

	</script> 
	<script type="text/javascript">
	
	$(window).load(function() {
		var o=$("#heroNo");
		o.animate({top:'885px',left:'1233px'},"fast");
		o.animate({top:'885px',left:'1233px'},"fast");/*重複1次*/
		o.animate({top:'885px',left:'1233px'},"fast");/*重複2次*/
		o.animate({top:'840px',left:'1285px'},"fast");
		o.animate({top:'772px',left:'1370px'},"fast");
		o.animate({top:'680px',left:'1425px'},"fast");
		o.animate({top:'580px',left:'1460px'},"fast");
		o.animate({top:'488px',left:'1469px'},"fast");
		o.animate({top:'389px',left:'1459px'},"fast");
		o.animate({top:'295px',left:'1428px'},"fast");
		o.animate({top:'225px',left:'1388px'},"fast");
		o.animate({top:'165px',left:'1330px'},"fast");
		o.animate({top:'100px',left:'1258px'},"fast");
		o.animate({top:'42px',left:'1080px'},"fast");
		o.animate({top:'36px',left:'980px'},"fast");
		o.animate({top:'36px',left:'780px'},"fast");
		o.animate({top:'42px',left:'580px'},"fast");
		o.animate({top:'100px',left:'460px'},"fast");
		o.animate({top:'165px',left:'375px'},"fast");
		o.animate({top:'227px',left:'320px'},"fast");/*1到了*/

    });
	
	$(window).load(function() {
		var div=$("#heroName");
		div.animate({top:'885px',left:'1233px'},"fast");
		div.animate({top:'885px',left:'1233px'},"fast");/*重複1次*/
		div.animate({top:'840px',left:'1285px'},"fast");
		div.animate({top:'772px',left:'1370px'},"fast");
		div.animate({top:'680px',left:'1425px'},"fast");
		div.animate({top:'580px',left:'1460px'},"fast");
		div.animate({top:'488px',left:'1469px'},"fast");
		div.animate({top:'389px',left:'1459px'},"fast");
		div.animate({top:'295px',left:'1428px'},"fast");
		div.animate({top:'225px',left:'1388px'},"fast");
		div.animate({top:'165px',left:'1330px'},"fast");
		div.animate({top:'100px',left:'1258px'},"fast");
		div.animate({top:'42px',left:'1080px'},"fast");
		div.animate({top:'36px',left:'980px'},"fast");
		div.animate({top:'36px',left:'780px'},"fast");
		div.animate({top:'42px',left:'580px'},"fast");
		div.animate({top:'100px',left:'460px'},"fast");
		div.animate({top:'165px',left:'375px'},"fast");
		div.animate({top:'227px',left:'320px'},"fast");/*1到了*/
		div.animate({top:'295px',left:'280px'},"fast");
		div.animate({top:'389px',left:'240px'},"fast");
		div.animate({top:'482px',left:'235px'},"fast");/*2到了*/
    });
	
	$(window).load(function() {
		var e=$("#heroPrice");
		e.animate({top:'885px',left:'1233px'},"fast");
		e.animate({top:'840px',left:'1285px'},"fast");
		e.animate({top:'772px',left:'1370px'},"fast");
		e.animate({top:'680px',left:'1425px'},"fast");
		e.animate({top:'580px',left:'1460px'},"fast");
		e.animate({top:'488px',left:'1469px'},"fast");
		e.animate({top:'389px',left:'1459px'},"fast");
		e.animate({top:'295px',left:'1428px'},"fast");
		e.animate({top:'225px',left:'1388px'},"fast");
		e.animate({top:'165px',left:'1330px'},"fast");
	    e.animate({top:'100px',left:'1258px'},"fast");
		e.animate({top:'42px',left:'1080px'},"fast");
		e.animate({top:'36px',left:'980px'},"fast");
		e.animate({top:'36px',left:'780px'},"fast");
		e.animate({top:'42px',left:'580px'},"fast");
		e.animate({top:'100px',left:'460px'},"fast");
		e.animate({top:'165px',left:'375px'},"fast");
		e.animate({top:'227px',left:'320px'},"fast");/*1到了*/
		e.animate({top:'295px',left:'280px'},"fast");
		e.animate({top:'389px',left:'240px'},"fast");
		e.animate({top:'482px',left:'235px'},"fast");/*2到了*/
		e.animate({top:'580px',left:'240px'},"fast");
		e.animate({top:'680px',left:'272px'},"fast");
		e.animate({top:'747px',left:'320px'},"fast");/*3到了*/
    });
	/*0000000000000000000000000000 text/file 00000000000000000000000000000000*/
	$(window).load(function() {
		var one=$("#skin1");
		one.animate({top:'-100px'},"slow");/*製造延遲 1*/
		one.animate({top:'-100px'},"slow");/*2*/
		one.animate({top:'-100px'},"slow");/*3*/
		one.animate({top:'-100px'},"slow");/*4*/
		one.animate({top:'100px'},"slow");
	 });
	$(window).load(function() {
		var two=$("#skin2");
		two.animate({top:'-100px'},"slow");/*製造延遲 1*/
		two.animate({top:'-100px'},"slow");/*2*/
		two.animate({top:'-100px'},"slow");/*3*/
		two.animate({top:'-100px'},"slow");/*4*/
		two.animate({top:'-100px'},"slow");/*5*/
		two.animate({top:'295px'},"slow");
	 });
	$(window).load(function() {
		var three=$("#skin3");
		three.animate({top:'-100px'},"slow");/*1*/
		three.animate({top:'-100px'},"slow");/*2*/
		three.animate({top:'-100px'},"slow");/*3*/
		three.animate({top:'-100px'},"slow");/*4*/
		three.animate({top:'-100px'},"slow");/*5*/
		three.animate({top:'-100px'},"slow");/*6*/
		three.animate({top:'488px'},"slow");
	 });
	$(window).load(function() {
		var four=$("#skin4");
		four.animate({top:'-100px'},"slow");/*1*/
		four.animate({top:'-100px'},"slow");/*2*/
		four.animate({top:'-100px'},"slow");/*3*/
		four.animate({top:'-100px'},"slow");/*4*/
		four.animate({top:'-100px'},"slow");/*5*/
		four.animate({top:'-100px'},"slow");/*6*/
		four.animate({top:'-100px'},"slow");/*7*/
		four.animate({top:'680px'},"slow");
	 });
	$(window).load(function() {
		var five=$("#skin5");
		five.animate({top:'-100px'},"slow");/*1*/
		five.animate({top:'-100px'},"slow");/*2*/
		five.animate({top:'-100px'},"slow");/*3*/
		five.animate({top:'-100px'},"slow");/*4*/
		five.animate({top:'-100px'},"slow");/*5*/
		five.animate({top:'-100px'},"slow");/*6*/
		five.animate({top:'-100px'},"slow");/*7*/
		five.animate({top:'-100px'},"slow");/*8*/
		five.animate({top:'840px'},"slow");
	 });
	</script>

  
</head>
<body>

		<h1 style="color:white">${ErrMsg.action}</h1>
		<form action="<c:url value="/InsertHero"/>" method="post" enctype="multipart/form-data">

			<div id="heroNo">● 英雄編號:<input type="text"  name="heroNo"  size=18px style="font-family:Microsoft JhengHei; value="${param.heroNo}"  />
	        <font color='red' size='-1'>${ErrMsg.errHeroNo}</font></div>
	                    
	        <div id="heroName">● 英雄名稱:<input type="text"  name="heroName"  size=18px style="font-family:Microsoft JhengHei; value="${param.heroName}"  />
	        <font color='red' size='-1'>${ErrMsg.errHeroName}</font></div>
	                    
	        <div id="heroPrice">● 英雄價格:<input type="text" name="heroPrice"  size=18px style="font-family:Microsoft JhengHei; value="${param.heroPrice}"  />
	        <font color='red' size='-1'>${ErrMsg.errHeroPrice}</font></div>

	                    
	                    
			<div id="skin1">● 英雄SKIN1:
			<input type="file" name="myfile1" id="imgInp1" size="30" style="width: 200px;"/><img id="blah1" src="#"  width="80"/></div>
	                    
			<div id="skin2">● 英雄SKIN2:
			<input type="file" name="myfile2" id="imgInp2" size="30" style="width: 200px;"/><img id="blah2" src="#"  width="80"/></div>
						
			<div id="skin3">● 英雄SKIN3:
			<input type="file" name="myfile3" id="imgInp3" size="30" style="width: 200px;"/><img id="blah3" src="#"  width="80"/></div>
						
			<div id="skin4">● 英雄SKIN4:
			<input type="file" name="myfile4" id="imgInp4" size="30" style="width: 200px;"/><img id="blah4" src="#"  width="80"/></div>
						
			<div id="skin5">● 英雄SKIN5:
			<input type="file" name="myfile5" id="imgInp5" size="30" style="width: 200px;"/><img id="blah5" src="#"  width="80"/></div>
		    
			
			<br>
			
				<div id="button"><center>
				<input type="submit" name="hero" value="Insert" style="width:120px;height:40px;border:3px #D9408C double;font-size:16px;font-weight:bold;color:#0085CC;background-color:#FFFF4D;">
				<input type="submit" name="hero" value="Update" style="width:120px;height:40px;border:3px #D9408C double;font-size:16px;font-weight:bold;color:#00B280;background-color:#FFFF4D;">
				<input type="submit" name="hero" value="Delete"" style="width:120px;height:40px;border:3px #D9408C double;font-size:16px;font-weight:bold;color:#00E033;background-color:#FFFF4D;">
				</center></div>
			</form>
			<font id="title">Edit Hero</font>
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
							<li><a href="<c:url value="../secure/logOut.jsp" />">LogOut</a></li>
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
							<li><a id="m" href="#" onclick="window.open('pages/mission.jsp', 'Mission', config='height=825,width=430',flowover=hidden);" style="line-height:25px;">Publish Mission</a></li>
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
</body>
</html>
