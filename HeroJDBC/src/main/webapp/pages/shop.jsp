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
		</style>
    </head>
    <body>
<c:if test="${not empty message1}">
	<script type="text/javascript">alert("購 買 成 功 ! ");</script>
</c:if>
<c:if test="${not empty message2}">
	<script type="text/javascript">alert("餘 額 不 足 ! ");</script>
</c:if>
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