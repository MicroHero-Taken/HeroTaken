<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<title>利用 jQuery 來製作網頁頁籤(Tab)</title>
<style type="text/css">
    body {flowover:hidden;background:url(${pageContext.request.contextPath}/Img/lighting.jpg);}
    /*==============================================================================================================*/
    .menuHolder {width:100px; height:100px; margin:0px 0 250px 0px; position:fiexd;z-index:4;}/*選單為網頁最上層*/
.menuHolder ul {padding:0; margin:0; list-style:none; position:absolute; left:0; top:0; width:0; height:0;}
.menuHolder ul li {border-radius:0 0 300px 0; width:0; height:0;}
.menuHolder ul li a {color:white; text-decoration:none; font:bold 15px/55px malgun gothic, sans-serif; text-align:center; box-shadow:-5px 5px 5px rgba(0,0,0,0.4);
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
-webkit-transform:rotate(45deg);                 /*藍色02*/
-moz-transform:rotateZ(45deg);
-ms-transform:rotate(45deg);
-o-transform:rotate(45deg);
transform:rotate(45deg);
}
.menuHolder .a6 li:nth-of-type(3) > a {background:#0000AA; /*懸賞任務*/
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
-webkit-transform:rotate(45deg);
-moz-transform:rotateZ(45deg);
-ms-transform:rotate(45deg);
-o-transform:rotate(45deg);
transform:rotate(45deg);
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

.p2 a {line-height:20px;}
    /*//////////////////////////////////////////////////////////////////////////////////////////////////////////////*/
	ul, li {
		margin: 0;
		padding: 0;
		list-style: none;
	}
	.abgne_tab { /*最外框*/
	    position:absolute;
		left:10%;
		width: 80%;
		height:89%;
		top:10%;
		border: 2px solid #999;
		border-top: none;
	}
	ul.tabs {
		width: 100%;
		height: 32px;
		border-bottom: 1px solid #999;
		border-left: 1px solid #999;
	}
	ul.tabs li {
		float: left;
		width:24.9%;
		height: 83px;
		line-height: 83px;
		overflow: hidden;
		position: relative;
		margin-bottom: -1px;	/* 讓 li 往下移來遮住 ul 的部份 border-bottom */
		border: 1px solid #999;
		border-left: none;
		background: #e1e1e1;
	}
	ul.tabs li a {
		display: block;
		padding: 0 20px;
		color: #000;
		border: 1px solid #fff;
		text-decoration: none;
	}
	ul.tabs li a:hover {
		background: #ccc;
	}
	ul.tabs li.active  {
		background: #fff;
		border-bottom: 1px solid #fff;
	}
	ul.tabs li.active a:hover {
		background: #fff;
	}
	div.tab_container {
		clear: left;
		width: 100%;
		height:90%;
		bottom:0%;
		background: #fff;
		position:absolute;
	}
	div.tab_container .tab_content {
		padding: 20px;
	}
	div.tab_container .tab_content h2 {
		margin: 0 0 20px;
	}
</style>
<style type="text/css">
#IH{}
#heroNo {background-color:rgba(0,0,0,0.7);color:#26FFD9;Font-family:Meiryo; font-size:20px;font-weight:bold;position:absolute; top:25%;left:10%;}
#heroName {background-color:rgba(0,0,0,0.8);color:#80FF80;Font-family:Meiryo; font-size:20px;font-weight:bold;position:absolute; top:45%;left:10%;}
#heroPrice {background-color:rgba(0,0,0,0.7);color:#D9FF26;Font-family:Meiryo; font-size:20px;font-weight:bold;position:absolute; top:65%;left:10%;}
#skin1 {color:#FF2E1A;font-size:1.5em;position:absolute;font-weight:bold;float:right; top:15%;right:10%;} 
#skin2 {color:#FF2640;font-size:1.5em;position:absolute;font-weight:bold;float:right; top:30%;right:15%;} 
#skin3 {color:#FF1F66;font-size:1.5em;position:absolute;font-weight:bold;float:right; top:45%;right:20%;} 
#skin4 {color:#FF178C;font-size:1.5em;position:absolute;font-weight:bold;float:right; top:60%;right:25%;} 
#skin5 {color:#FF0FB2;font-size:1.5em;position:absolute;font-weight:bold;float:right; top:75%;right:30%;} 
#button {width:380px;height:40px;bottom:1.875em;float:right;right:5%;position:absolute;}
</style>
<script type="text/javascript">
	$(function(){
		// 預設顯示第一個 Tab
		var _showTab = 0;
		var $defaultLi = $('ul.tabs li').eq(_showTab).addClass('active');
		$($defaultLi.find('a').attr('href')).siblings().hide();
		
		// 當 li 頁籤被點擊時...
		// 若要改成滑鼠移到 li 頁籤就切換時, 把 click 改成 mouseover
		$('ul.tabs li').click(function() {
			// 找出 li 中的超連結 href(#id)
			var $this = $(this),
				_clickTab = $this.find('a').attr('href');
			// 把目前點擊到的 li 頁籤加上 .active
			// 並把兄弟元素中有 .active 的都移除 class
			$this.addClass('active').siblings('.active').removeClass('active');
			// 淡入相對應的內容並隱藏兄弟元素
			$(_clickTab).stop(false, true).fadeIn().siblings().hide();

			return false;
		}).find('a').focus(function(){
			this.blur();
		});
	});
</script>
<script type="text/javascript">
                                                                  //顯示上傳圖
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
</script>
</head>

<body>
	
	<div class="abgne_tab">
		<ul class="tabs">
			<li><a href="#tab1">商城管理</a></li>
			<li><a href="#tab2">任務管理</a></li>
			<li><a href="#tab3">會員帳戶</a></li>
			<li><a href="#tab4">回報系統</a></li>
		</ul>

		<div class="tab_container">
			<div id="tab1" class="tab_content">
				<h2>商城管理</h2>
				<div style="position:absolute;left:2%;"><h3>英雄管理</h3></div><!-- 11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111 -->
			    
			    <h1 style="color:white">${ErrMsg.action}</h1>
		<form action="<c:url value='/InsertHero'/>" method="post" enctype="multipart/form-data">

			<div id="heroNo">● 英雄編號:<input type="text"  name="heroNo"  size=18px style="font-family:Microsoft JhengHei; value="${param.heroNo}"  />
	        <font color='red' size='-1'>${ErrMsg.errHeroNo}</font></div>
	                    
	        <div id="heroName">● 英雄名稱:<input type="text"  name="heroName"  size=18px style="font-family:Microsoft JhengHei; value="${param.heroName}"  />
	        <font color='red' size='-1'>${ErrMsg.errHeroName}</font></div>
	                    
	        <div id="heroPrice">● 英雄價格:<input type="text" name="heroPrice"  size=18px style="font-family:Microsoft JhengHei; value="${param.heroPrice}"  />
	        <font color='red' size='-1'>${ErrMsg.errHeroPrice}</font></div>

	                    
	                    
			<div id="skin1">● 英雄SKIN1:
			<input type="file" name="myfile1" id="imgInp1" size="30" style="width: 200px;"/><img id="blah1" src="#"  width="50" height="50"/></div>
	                    
			<div id="skin2">● 英雄SKIN2:
			<input type="file" name="myfile2" id="imgInp2" size="30" style="width: 200px;"/><img id="blah2" src="#"  width="50" height="50"/></div>
						
			<div id="skin3">● 英雄SKIN3:
			<input type="file" name="myfile3" id="imgInp3" size="30" style="width: 200px;"/><img id="blah3" src="#"  width="50" height="50"/></div>
						
			<div id="skin4">● 英雄SKIN4:
			<input type="file" name="myfile4" id="imgInp4" size="30" style="width: 200px;"/><img id="blah4" src="#"  width="50" height="50"/></div>
						
			<div id="skin5">● 英雄SKIN5:
			<input type="file" name="myfile5" id="imgInp5" size="30" style="width: 200px;"/><img id="blah5" src="#"  width="50" height="50"/></div>
		    
			
			<br>
			
				<div id="button"><center>
				<input type="submit" name="hero" value="Insert" style="width:120px;height:40px;border:3px #D9408C double;font-size:16px;font-weight:bold;color:#0085CC;background-color:#FFFF4D;">
				<input type="submit" name="hero" value="Update" style="width:120px;height:40px;border:3px #D9408C double;font-size:16px;font-weight:bold;color:#00B280;background-color:#FFFF4D;">
				<input type="submit" name="hero" value="Delete"" style="width:120px;height:40px;border:3px #D9408C double;font-size:16px;font-weight:bold;color:#00E033;background-color:#FFFF4D;">
				</center></div>
			</form>
			    </div>
			    
			<div id="tab2" class="tab_content">
				<h2>任務管理</h2>
				<div style="position:absolute;left:2%;"><h3>刪除任務</h3></div><!-- 22222222222222222222222222222222222222222222222222222222222222222222222222222222222222222 -->
				</div>
			<div id="tab3" class="tab_content">
				<h2>會員帳戶</h2>
				<div style="position:absolute;left:2%;"><h3>更改造型</h3></div><!-- 33333333333333333333333333333333333333333333333333333333333333333333333333333333333333333 -->
				<div style="position:absolute;left:52%;"><h3>會員停權</h3></div>
			</div>
			<div id="tab4" class="tab_content">
				<h2>回報系統</h2>
				<div style="position:absolute;left:2%;"><h3>回報處理</h3></div><!-- 44444444444444444444444444444444444444444444444444444444444444444444444444444444444444444 -->
				</div>
		</div>
	</div>
	
	<!-- */*/*/*/*/*/*/*//*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/**/*/*//*/*/*/*/*/*/*/*//*/*/*/*//*///*/*/*/*/*/*/*/*/*/*/*/*/*/*/* -->
<div class="menuHolder" >
	<div class="menuWindow">
		<ul class="p1">
			<li class="s1"><a href="#url">Menu</a>
				<ul class="p2" style="line-height:20px;">
					<li class="s2"><a href='<c:url value="/index1.jsp" />'><span>Home</span></a>
					<ul class="p3 a2">
							<li><a style="line-height:20px;" href="#">Name: ${memberInfo.memberName}</a></li><!--名字 -->
							<li><a href="#">$: ${memberInfo.coin}</a></li>
							<li><a href="#">Rating: ${memberInfo.rating}</a></li>
							<li><a href='<c:url value="AboutUs/starwars.jsp" />'>AboutUs</a></li>
							<li><a href='<c:url value="/secure/logOut.jsp" />'>LogOut</a></li>
						</ul>
					</li>
					<li class="s2"><a href="#"><span>Members Only</span></a>
					<ul class="p3 a3">
							<li><a style="line-height:20px;" href='<c:url value="pages/memberHero.jsp" />'>Modify<br>Skin</a></li>
							<li><a style="line-height:20px;" href='<c:url value="secure/memberchange.jsp" />'>Modify<br>Data</a></li>
						</ul>
					</li>
					<li class="s2"><a href="#"><span>Mission Area</span></a>
					<ul class="p3 a4">
							<li><a id="m" href="#" onclick="window.open('pages/mission.jsp', 'Mission', config='height=825,width=430',flowover=hidden);" style="line-height:25px;">Publish Mission</a></li>
							<li><a href='<c:url value="/missionMem.do?" />' style="line-height:25px;">Accept Mission</a></li>
							<li><a href="#" style="line-height:25px;">Inquire Mission</a></li>
						</ul>
					</li>
					<li class="s2"><a href="#"><span>Hero Market</span></a>
					<ul class="p3 a5">
							<li><a href="pages/shop.jsp">Buy Hero</a></li>
						</ul>
					</li>
					<li class="s2"><a href="#url" style="line-height:20px;"><span>Others</span></a>
					<ul class="p3 a6">
							<li><a href="pages/report.jsp" style="line-height:25px;">Report</a></li>
							<li><a href="#" style="line-height:25px;">Administrator<br>Only</a></li>
						</ul>
					</li>
				</ul>
			</li>
		</ul>
	</div>
</div>
</body>
</html>