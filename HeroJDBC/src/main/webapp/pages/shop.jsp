<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>

    <head>
        <title>Taken</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="description" content="Merging Image Boxes with jQuery" />
        <meta name="keywords" content="jquery, merge, effect, images, photos, animation, background-image"/>
		<link rel="shortcut icon" href="<c:url value='/favicon.ico' />" type="image/x-icon"/>
        <link rel="stylesheet" href="<c:url value='/css/style.css' />" type="text/css" media="screen"/>
		<script src='${pageContext.servletContext.contextPath}/js/cufon-yui.js' type="text/javascript"></script>
		<script src='${pageContext.servletContext.contextPath}/js/ChunkFive_400.font.js' type="text/javascript"></script>
		<script type="text/javascript">
			Cufon.replace('h1',{ textShadow: '1px 1px #fff'});
			Cufon.replace('.description',{ textShadow: '1px 1px #fff'});
			Cufon.replace('a',{ textShadow: '1px 1px #fff', hover : true});
		</script>
        <style type="text/css">
        
        h1 {position:absolute;top:5px;left:780px;}
        
			.description{
				position:fixed;
				right:10px;
				top:10px;
				font-size:12px;
				color:#888;
			}
			span.reference{
				position:fixed;
				left:10px;
				bottom:10px;
				font-size:12px;
			}
			span.reference a{
				color:#888;
				text-transform:uppercase;
				text-decoration:none;
				padding-right:20px;
			}
			span.reference a:hover{
				color:#444;
			}
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
    </head>
    <body>
<div class="menuHolder" >
	<div class="menuWindow">
		<ul class="p1">
			<li class="s1"><a href="#url">Menu</a>
				<ul class="p2" style="line-height:20px;">
					<li class="s2"><a href="<c:url value="/index1.jsp" />"><span>Home</span></a>
					<ul class="p3 a2">
							<li><a style="line-height:20px;" href="#">Name: ${memberInfo.memberName}</a></li><!--名字 -->
							<li><a href="#">$: ${memberInfo.coin}</a></li>
							<li><a href="#">Rating: ${memberInfo.rating}</a></li>
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
<c:if test="${not empty message1}">
	<script type="text/javascript">alert("購 買 成 功 ! ");</script>
</c:if>
<c:if test="${not empty message2}">
	<script type="text/javascript">alert("餘 額 不 足 ! ");</script>
</c:if>
<c:if test="${not empty message3}">
	<script type="text/javascript">alert("已擁有此英雄 ! ");</script>
</c:if>
<c:if test="${not empty message4}">
	<script type="text/javascript">alert("此英雄未上架 ! ");</script>
</c:if>
		<h1>Hero <span>Shopping Mall</span></h1>
		<center><h1>Hero <span>Shopping Mall</span></h1></center>
		<!--<div class="description">Click on the thumbs or the large image</div>-->
<div id="im_wrapper" class="im_wrapper">
			<div style="background-position:   0px 0px;"><img src="${pageContext.request.contextPath}/HeroPhoto?heroNo=1" alt="" /></div>
			<div style="background-position:-125px 0px;"><img src="${pageContext.request.contextPath}/HeroPhoto?heroNo=2" alt="" /></div>
			<div style="background-position:-250px 0px;"><img src="${pageContext.request.contextPath}/HeroPhoto?heroNo=3" alt="" /></div>
			<div style="background-position:-375px 0px;"><img src="${pageContext.request.contextPath}/HeroPhoto?heroNo=4" alt="" /></div>
			<div style="background-position:-500px 0px;"><img src="${pageContext.request.contextPath}/HeroPhoto?heroNo=5" alt="" /></div>
			<div style="background-position:-625px 0px;"><img src="${pageContext.request.contextPath}/HeroPhoto?heroNo=6" alt="" /></div>

			<div style="background-position:   0px -125px;"><img src="${pageContext.request.contextPath}/HeroPhoto?heroNo=7" alt="" /></div>
			<div style="background-position:-125px -125px;"><img src="${pageContext.request.contextPath}/HeroPhoto?heroNo=8" alt="" /></div>
			<div style="background-position:-250px -125px;"><img src="${pageContext.request.contextPath}/HeroPhoto?heroNo=9" alt="" /></div>
			<div style="background-position:-375px -125px;"><img src="${pageContext.request.contextPath}/HeroPhoto?heroNo=10" alt="" /></div>
			<div style="background-position:-500px -125px;"><img src="${pageContext.request.contextPath}/HeroPhoto?heroNo=11" alt="" /></div>
			<div style="background-position:-625px -125px;"><img src="${pageContext.request.contextPath}/HeroPhoto?heroNo=12" alt="" /></div>

			<div style="background-position:   0px -250px;"><img src="${pageContext.request.contextPath}/HeroPhoto?heroNo=13" alt="" /></div>
			<div style="background-position:-125px -250px;"><img src="${pageContext.request.contextPath}/HeroPhoto?heroNo=14" alt="" /></div>
			<div style="background-position:-250px -250px;"><img src="${pageContext.request.contextPath}/HeroPhoto?heroNo=15" alt="" /></div>
			<div style="background-position:-375px -250px;"><img src="${pageContext.request.contextPath}/HeroPhoto?heroNo=16" alt="" /></div>
			<div style="background-position:-500px -250px;"><img src="${pageContext.request.contextPath}/HeroPhoto?heroNo=17" alt="" /></div>
			<div style="background-position:-625px -250px;"><img src="${pageContext.request.contextPath}/HeroPhoto?heroNo=18" alt="" /></div>

			<div style="background-position:   0px -375px;"><img src="${pageContext.request.contextPath}/HeroPhoto?heroNo=19" alt="" /></div>
			<div style="background-position:-125px -375px;"><img src="${pageContext.request.contextPath}/HeroPhoto?heroNo=20" alt="" /></div>
			<div style="background-position:-250px -375px;"><img src="${pageContext.request.contextPath}/HeroPhoto?heroNo=21" alt="" /></div>
			<div style="background-position:-375px -375px;"><img src="${pageContext.request.contextPath}/HeroPhoto?heroNo=22" alt="" /></div>
			<div style="background-position:-500px -375px;"><img src="${pageContext.request.contextPath}/HeroPhoto?heroNo=23" alt="" /></div>
			<div style="background-position:-625px -375px;"><img src="${pageContext.request.contextPath}/HeroPhoto?heroNo=24" alt="" /></div>
		</div>
		<form action="<c:url value="/Shopping"/>" method="get">
		<div id="im_loading" class="im_loading"></div>
		<div id="im_next" class="im_next"></div>
		<div id="im_prev" class="im_prev"></div>
		<div id="buy"><p></p>
	    <input type="submit" value="Buy" id="busy"/></div>
      	</form>


        <!-- The JavaScript -->
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.3/jquery.min.js"></script>
		<script src='${pageContext.servletContext.contextPath}/js/jquery.transform-0.9.1.min.js'></script>
		<script type="text/javascript">
			//Paul Irish smartresize : http://paulirish.com/2009/throttled-smartresize-jquery-event-handler/
			(function($,sr){
				// debouncing function from John Hann
				// http://unscriptable.com/index.php/2009/03/20/debouncing-javascript-methods/
				var debounce = function (func, threshold, execAsap) {
					var timeout;
					return function debounced () {
						var obj = this, args = arguments;
						function delayed () {
							if (!execAsap)
								func.apply(obj, args);
							timeout = null;
						};
						if (timeout)
							clearTimeout(timeout);
						else if (execAsap)
							func.apply(obj, args);
						timeout = setTimeout(delayed, threshold || 100);
					};
				}
				//smartresize
				jQuery.fn[sr] = function(fn){  return fn ? this.bind('resize', debounce(fn)) : this.trigger(sr); };
			})(jQuery,'smartresize');
		</script>
        <script type="text/javascript">	
        var text = [
        			'Name:<input type="hidden" name="name" value="${heroSkin1.heroName}">${heroSkin1.heroName}</br>$:<input type="hidden" name="price" value="${heroSkin1.heroPrice}">${heroSkin1.heroPrice} ',
                    'Name:<input type="hidden" name="name" value="${heroSkin2.heroName}">${heroSkin2.heroName}</br>$:<input type="hidden" name="price" value="${heroSkin2.heroPrice}">${heroSkin2.heroPrice} ',
                    'Name:<input type="hidden" name="name" value="${heroSkin3.heroName}">${heroSkin3.heroName}</br>$:<input type="hidden" name="price" value="${heroSkin3.heroPrice}">${heroSkin3.heroPrice} ',
                    'Name:<input type="hidden" name="name" value="${heroSkin4.heroName}">${heroSkin4.heroName}</br>$:<input type="hidden" name="price" value="${heroSkin4.heroPrice}">${heroSkin4.heroPrice} ',
                    'Name:<input type="hidden" name="name" value="${heroSkin5.heroName}">${heroSkin5.heroName}</br>$:<input type="hidden" name="price" value="${heroSkin5.heroPrice}">${heroSkin5.heroPrice} ',
                    'Name:<input type="hidden" name="name" value="${heroSkin6.heroName}">${heroSkin6.heroName}</br>$:<input type="hidden" name="price" value="${heroSkin6.heroPrice}">${heroSkin6.heroPrice} ',
                    'Name:<input type="hidden" name="name" value="${heroSkin7.heroName}">${heroSkin7.heroName}</br>$:<input type="hidden" name="price" value="${heroSkin7.heroPrice}">${heroSkin7.heroPrice} ',
                    'Name:<input type="hidden" name="name" value="${heroSkin8.heroName}">${heroSkin8.heroName}</br>$:<input type="hidden" name="price" value="${heroSkin8.heroPrice}">${heroSkin8.heroPrice} ',
                    'Name:<input type="hidden" name="name" value="${heroSkin9.heroName}">${heroSkin9.heroName}</br>$:<input type="hidden" name="price" value="${heroSkin9.heroPrice}">${heroSkin9.heroPrice} ',
                    'Name:<input type="hidden" name="name" value="${heroSkin10.heroName}">${heroSkin10.heroName}</br>$:<input type="hidden" name="price" value="${heroSkin10.heroPrice}">${heroSkin10.heroPrice} ',
                    'Name:<input type="hidden" name="name" value="${heroSkin11.heroName}">${heroSkin11.heroName}</br>$:<input type="hidden" name="price" value="${heroSkin11.heroPrice}">${heroSkin11.heroPrice} ',
                    'Name:<input type="hidden" name="name" value="${heroSkin12.heroName}">${heroSkin12.heroName}</br>$:<input type="hidden" name="price" value="${heroSkin12.heroPrice}">${heroSkin12.heroPrice} ',
                    'Name:<input type="hidden" name="name" value="${heroSkin13.heroName}">${heroSkin13.heroName}</br>$:<input type="hidden" name="price" value="${heroSkin13.heroPrice}">${heroSkin13.heroPrice} ',
                    'Name:<input type="hidden" name="name" value="${heroSkin14.heroName}">${heroSkin14.heroName}</br>$:<input type="hidden" name="price" value="${heroSkin14.heroPrice}">${heroSkin14.heroPrice} ',
                    'Name:<input type="hidden" name="name" value="${heroSkin15.heroName}">${heroSkin15.heroName}</br>$:<input type="hidden" name="price" value="${heroSkin15.heroPrice}">${heroSkin15.heroPrice} ',
                    'Name:<input type="hidden" name="name" value="${heroSkin16.heroName}">${heroSkin16.heroName}</br>$:<input type="hidden" name="price" value="${heroSkin16.heroPrice}">${heroSkin16.heroPrice} ',
                    'Name:<input type="hidden" name="name" value="${heroSkin17.heroName}">${heroSkin17.heroName}</br>$:<input type="hidden" name="price" value="${heroSkin17.heroPrice}">${heroSkin17.heroPrice} ',
                    'Name:<input type="hidden" name="name" value="${heroSkin18.heroName}">${heroSkin18.heroName}</br>$:<input type="hidden" name="price" value="${heroSkin18.heroPrice}">${heroSkin18.heroPrice} ',
                    'Name:<input type="hidden" name="name" value="${heroSkin19.heroName}">${heroSkin19.heroName}</br>$:<input type="hidden" name="price" value="${heroSkin19.heroPrice}">${heroSkin19.heroPrice} ',
                    'Name:<input type="hidden" name="name" value="${heroSkin20.heroName}">${heroSkin20.heroName}</br>$:<input type="hidden" name="price" value="${heroSkin20.heroPrice}">${heroSkin20.heroPrice} ',
                    'Name:<input type="hidden" name="name" value="${heroSkin21.heroName}">${heroSkin21.heroName}:</br>$:<input type="hidden" name="price" value="${heroSkin21.heroPrice}">${heroSkin21.heroPrice} ',
                    'Name:<input type="hidden" name="name" value="${heroSkin22.heroName}">${heroSkin22.heroName}</br>$:<input type="hidden" name="price" value="${heroSkin22.heroPrice}">${heroSkin22.heroPrice} ',
                    'Name:<input type="hidden" name="name" value="${heroSkin23.heroName}">${heroSkin23.heroName}</br>$:<input type="hidden" name="price" value="${heroSkin23.heroPrice}">${heroSkin23.heroPrice} ',
                    'Name:<input type="hidden" name="name" value="${heroSkin24.heroName}">${heroSkin24.heroName}</br>$:<input type="hidden" name="price" value="${heroSkin24.heroPrice}">${heroSkin24.heroPrice} '];
        
        
            $(function() {
				//check if the user made the
				//mistake to open it with IE
				var ie 			= false;
				if ($.browser.msie)
					ie = true;
				//flag to control the click event
				var flg_click	= true;
				//the wrapper
                var $im_wrapper	= $('#im_wrapper');
				//the thumbs
				var $thumbs		= $im_wrapper.children('div');
				//all the images
				var $thumb_imgs = $thumbs.find('img');
				//number of images
				var nmb_thumbs	= $thumbs.length;
				//image loading status
				var $im_loading	= $('#im_loading');
				//the next and previous buttons
				var $im_next	= $('#im_next');
				var $im_prev	= $('#im_prev');
				//number of thumbs per line
				var per_line	= 6;
				//number of thumbs per column
				var per_col		= Math.ceil(nmb_thumbs/per_line)
				//index of the current thumb
				var current		= -1;
				//mode = grid | single
				var mode		= 'grid';
				//an array with the positions of the thumbs
				//we will use it for the navigation in single mode
				var positionsArray = [];
				for(var i = 0; i < nmb_thumbs; ++i)
					positionsArray[i]=i;
				
				
				//preload all the images
				$im_loading.show();
				var loaded		= 0;
				$thumb_imgs.each(function(){
					var $this = $(this);
					$('<img/>').load(function(){
						++loaded;
						if(loaded == nmb_thumbs*2)
							start();
					}).attr('src',$this.attr('src'));
					$('<img/>').load(function(){
						++loaded;
						if(loaded == nmb_thumbs*2)
							start();
					}).attr('src',$this.attr('src').replace('/thumbs',''));
				});
				
				//starts the animation
				function start(){
					$im_loading.hide();
					//disperse the thumbs in a grid
					disperse();
				}
				
				//disperses the thumbs in a grid based on windows dimentions
				function disperse(){
					if(!flg_click) return;
					setflag();
					mode			= 'grid';
					//center point for first thumb along the width of the window
					var spaces_w 	= $(window).width()/(per_line + 1);
					//center point for first thumb along the height of the window
					var spaces_h 	= $(window).height()/(per_col + 1);
					//let's disperse the thumbs equally on the page
					$thumbs.each(function(i){
						var $thumb 	= $(this);
						//calculate left and top for each thumb,
						//considering how many we want per line
						var left	= spaces_w*((i%per_line)+1) - $thumb.width()/2;
						var top		= spaces_h*(Math.ceil((i+1)/per_line)) - $thumb.height()/2;
						//lets give a random degree to each thumb
						var r 		= Math.floor(Math.random()*41)-20;
						/*
						now we animate the thumb to its final positions;
						we also fade in its image, animate it to 115x115,
						and remove any background image	of the thumb - this
						is not relevant for the first time we call disperse,
						but when changing from single to grid mode
						 */
						if(ie)
							var param = {
								'left'		: left + 'px',
								'top'		: top + 'px'
							};
						else
							var param = {
								'left'		: left + 'px',
								'top'		: top + 'px',
								'rotate'	: r + 'deg'
							};
						$thumb.stop()
						.animate(param,700,function(){
							if(i==nmb_thumbs-1)
								setflag();
						})
						.find('img')
						.fadeIn(700,function(){
							$thumb.css({
								'background-image'	: 'none'
							});
							$(this).animate({
								'width'		: '115px',
								'height'	: '115px',
								'marginTop'	: '5px',
								'marginLeft': '5px'
							},150);
						});
					});
				}
				
				//controls if we can click on the thumbs or not
				//if theres an animation in progress
				//we don't want the user to be able to click
				function setflag(){
					flg_click = !flg_click
				}
				
				/*
				when we click on a thumb, we want to merge them
				and show the full image that was clicked.
				we need to animate the thumbs positions in order
				to center the final image in the screen. The
				image itself is the background image that each thumb
				will have (different background positions)
				If we are currently seeing the single image,
				then we want to disperse the thumbs again,
				and with this, showing the thumbs images.
				 */
				$thumbs.bind('click',function(){
					
					if(!flg_click) return;
					setflag();
					
					var $this 		= $(this);
					current 		= $this.index();
					
					if(mode	== 'grid'){
						mode			= 'single';
						//the source of the full image
						var image_src	= $this.find('img').attr('src').replace('/thumbs','');
						
						$thumbs.each(function(i){
							var $thumb 	= $(this);
							var $image 	= $thumb.find('img');
							//first we animate the thumb image
							//to fill the thumbs dimentions
							$image.stop().animate({
								'width'		: '100%',
								'height'	: '100%',
								'marginTop'	: '0px',
								'marginLeft': '0px'
							},150,function(){
								//calculate the dimentions of the full image
								var f_w	= per_line * 125;
								var f_h	= per_col * 125;
								var f_l = $(window).width()/2 - f_w/2
								var f_t = $(window).height()/2 - f_h/2
								/*
								set the background image for the thumb
								and animate the thumbs postions and rotation
								 */
								if(ie)
									var param = {
										'left'	: f_l + (i%per_line)*125 + 'px',
										'top'	: f_t + Math.floor(i/per_line)*125 + 'px'
									};
								else
									var param = {
										'rotate': '0deg',
										'left'	: f_l + (i%per_line)*125 + 'px',
										'top'	: f_t + Math.floor(i/per_line)*125 + 'px'
									};
								$thumb.css({
									'background-image'	: 'url('+image_src+')'
								}).stop()
								.animate(param,1200,function(){
									//insert navigation for the single mode
									if(i==nmb_thumbs-1){
										addNavigation();
										setflag();
									}
								});
								//fade out the thumb's image
								$image.fadeOut(700);
							});
						});
						$("#buy p").html(text[current]);
					}
					else{
						setflag();
						//remove navigation
						removeNavigation();
						//if we are on single mode then disperse the thumbs
						disperse();
					}
					
					
					
				});
				
				//removes the navigation buttons
				function removeNavigation(){
					$im_next.stop().animate({'right':'-50px'},300);
					$im_prev.stop().animate({'left':'-50px'},300);
					$("#buy").css("display","none");
				}
				
				//add the navigation buttons
				function addNavigation(){
					$im_next.stop().animate({'right':'0px'},300);
					$im_prev.stop().animate({'left':'0px'},300);
					$("#buy").css("display","block");
					
					
				}
			
				//User clicks next button (single mode)
				$im_next.bind('click',function(){
					if(!flg_click) return;
					setflag();
					
					++current;
					var $next_thumb	= $im_wrapper.children('div:nth-child('+(current+1)+')');
					if($next_thumb.length>0){
						var image_src	= $next_thumb.find('img').attr('src').replace('/thumbs','');
						var arr 		= Array.shuffle(positionsArray.slice(0));
						$thumbs.each(function(i){
							//we want to change each divs background image
							//on a different point of time
							var t = $(this);
							setTimeout(function(){
								t.css({
									'background-image'	: 'url('+image_src+')'
								});
								if(i == nmb_thumbs-1)
									setflag();
							},arr.shift()*20);
						});
					}
					else{
						setflag();
						--current;
						return;
					}
					$("#buy p").html(text[current]);
				});
				
				//User clicks prev button (single mode)
				$im_prev.bind('click',function(){
					
					
					if(!flg_click) return;
					setflag();
					--current;
					var $prev_thumb	= $im_wrapper.children('div:nth-child('+(current+1)+')');
					if($prev_thumb.length>0){
						var image_src	= $prev_thumb.find('img').attr('src').replace('/thumbs','');
						var arr 		= Array.shuffle(positionsArray.slice(0));
						$thumbs.each(function(i){
							var t = $(this);
							setTimeout(function(){
								t.css({
									'background-image'	: 'url('+image_src+')'
								});
								if(i == nmb_thumbs-1)
									setflag();
							},arr.shift()*20);
						});
					}
					else{
						setflag();
						++current;
						return;
					}
					$("#buy p").html(text[current]);
				});
				
				//on windows resize call the disperse function
				$(window).smartresize(function(){
					removeNavigation()
					disperse();
				});
				
				//function to shuffle an array
				Array.shuffle = function( array ){
					for(
					var j, x, i = array.length; i;
					j = parseInt(Math.random() * i),
					x =	 array[--i], array[i] = array[j], array[j] = x
				);
					return array;
				};
				
			
            });
            
            //alert出商城英雄的價錢
//             $(document).ready(function(){
//             	$("#buy").click(function(){
//                 	alert( $("#price").text());
//                 });
//             });
        </script>
      
    </body>
</html>
