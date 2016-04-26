<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>About Us</title>
</head>

<link type="text/css" rel="stylesheet" href="fullpage.css">
<script>
StarWars = (function() {
	  
	  /* 
	   * Constructor 
	   */
	  function StarWars(args) {
	    // Context wrapper
	    this.el = $(args.el);
	    
	    // Audio to play the opening crawl
// 	    this.audio = this.el.find('audio').get(0);
	    
	    // Start the animation
	    this.start = this.el.find('.start');
	    
	    // The animation wrapper
	    this.animation = this.el.find('.animation');
	    
	    // Remove animation and shows the start screen
	    this.reset();

	    // Start the animation on click
	    this.start.bind('click', $.proxy(function() {
	      this.start.hide();
	      this.audio.play();
	      this.el.append(this.animation);
	    }, this));
	    
	    // Reset the animation and shows the start screen
	    $(this.audio).bind('ended', $.proxy(function() {
	      this.audio.currentTime = 0;
	      this.reset();
	    }, this));
	  }
	  
	  /*
	   * Resets the animation and shows the start screen.
	   */
	  StarWars.prototype.reset = function() {
	    this.start.show();
	    this.cloned = this.animation.clone(true);
	    this.animation.remove();
	    this.animation = this.cloned;
	  };

	  return StarWars;
	})();

	new StarWars({
	  el : '.starwars'
	});
</script>
<body>

<article class="starwars">
  <audio preload="auto">
    <source src="http://s.cdpn.io/1202/Star_Wars_original_opening_crawl_1977.ogg" type="audio/ogg" />
    <source src="http://s.cdpn.io/1202/Star_Wars_original_opening_crawl_1977.mp3" type="audio/mpeg" />
  </audio>
  
  <div class="start">
    <p>
                 即刻救援 <br> <span>Token</span>
      <br>
      <span>組員:蘇賢庭、吳至晟、<br>郭大偉、蔡捷安、鄭懋霖</span>
      
    </p>
  </div>
   
  <div class="animation">
    
  <section class="intro" text-align="center">
                                主題簡介:
  </section>
    
  <section class="titles">
    <div contenteditable="true" spellcheck="false">  
      <p>
        本專案的初衷是透過網際網路
        與行動手機和電腦的普及，來幫助
        週遭需要幫助的陌生人，在現今的社會，
        大多數人都非常的忙碌，人與人之間的
        關係越趨冷漠，
      </p>

      <p>
              我們希望透過遊戲任務的方式讓使用者互相幫助，
              讓即時需要幫助的人能夠順利尋求到幫助並拉近
              人與人的距離從而衍生出這個主題，讓這個社會
              更能展現出熱心的一面。
      </p>

      <p>
        專案的內容，以此網站為平台，使用google map 發起任務
        尋求他人的協助，透過即時聊天系統，讓周遭有餘力的人前來幫助，
        額外加入了英雄造型的展示以及懸賞任務，讓使用者收集自己
        喜愛的英雄造型在google map上替換來顯示自己的座標。
        希望這個專案能夠使更多需要幫助的人得到即時的幫助
        並實行助人為快樂之本的理念。
      </p>
      </div>
  </section>
  <img id="TOKEN" src="../AboutUs/taken.png">
 
  </div>
</article>
</body>
</html>