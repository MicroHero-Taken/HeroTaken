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
body {background:url(/HeroJDBC/Img/insertHeroBG.jpg)no-repeat;}
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
</body>
</html>
