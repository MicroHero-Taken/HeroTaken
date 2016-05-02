<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Taken</title>
</head>
<style>
@import url(http://fonts.googleapis.com/css?family=Passion+One);
body {
  background: #D30215;
  overflow: hidden;
  margin: 0;
  font-family: 'Passion One', impact;
}

.bg {
  position: absolute;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  background: url("https://s3-us-west-2.amazonaws.com/s.cdpn.io/28359/marvel.jpg");
  background-size: 2000px auto;
  -webkit-animation: fade 6s steps(30) forwards;
          animation: fade 6s steps(30) forwards;
}
#retrigger--1:checked ~ .bg {
  -webkit-animation-name: fade--1;
          animation-name: fade--1;
}
#retrigger--2:checked ~ .bg {
  -webkit-animation-name: fade--2;
          animation-name: fade--2;
}
@-webkit-keyframes fade--1 {
  0% {
    background-position: 0 0;
    opacity: 1;
  }
  50% {
    background-position: 4000% 4000%;
    opacity: 0.6;
  }
  100% {
    background-position: -4000% -4000%;
    opacity: 0;
  }
}
@keyframes fade--1 {
  0% {
    background-position: 0 0;
    opacity: 1;
  }
  50% {
    background-position: 4000% 4000%;
    opacity: 0.6;
  }
  100% {
    background-position: -4000% -4000%;
    opacity: 0;
  }
}
@-webkit-keyframes fade--2 {
  0% {
    background-position: 0 0;
    opacity: 1;
  }
  50% {
    background-position: 4000% 4000%;
    opacity: 0.6;
  }
  100% {
    background-position: -4000% -4000%;
    opacity: 0;
  }
}
@keyframes fade--2 {
  0% {
    background-position: 0 0;
    opacity: 1;
  }
  50% {
    background-position: 4000% 4000%;
    opacity: 0.6;
  }
  100% {
    background-position: -4000% -4000%;
    opacity: 0;
  }
}
.pane {
  position: absolute;
  top: 50%;
  left: 50%;
  -webkit-transform: translate(-50%, -50%) scaleY(1.3);
          transform: translate(-50%, -50%) scaleY(1.3);
  -webkit-perspective: 700px;
          perspective: 700px;
}

.rotate {
  position: absolute;
  top: 50%;
  left: 50%;
  -webkit-transform: translate(-50%, -50%) rotate3d(1, -1, 0, 40deg) scale(2);
          transform: translate(-50%, -50%) rotate3d(1, -1, 0, 40deg) scale(2);
  -webkit-transform-style: preserve-3d;
          transform-style: preserve-3d;
  -webkit-animation: rotate 6s 2s forwards;
          animation: rotate 6s 2s forwards;
}
#retrigger--1:checked ~ .pane .rotate {
  -webkit-animation-name: rotate--1;
          animation-name: rotate--1;
}
#retrigger--2:checked ~ .pane .rotate {
  -webkit-animation-name: rotate--2;
          animation-name: rotate--2;
}
@-webkit-keyframes rotate--1 {
  0% {
    -webkit-transform: translate(-50%, -50%) rotate3d(1, -1, 0, 40deg) scale(2);
            transform: translate(-50%, -50%) rotate3d(1, -1, 0, 40deg) scale(2);
  }
  50% {
    -webkit-transform: translate(-50%, -50%) rotate3d(0, 0, 0, 0deg) scale(1.1);
            transform: translate(-50%, -50%) rotate3d(0, 0, 0, 0deg) scale(1.1);
  }
  100% {
    -webkit-transform: translate(-50%, -50%) rotate3d(0, 0, 0, 0deg) scale(1);
            transform: translate(-50%, -50%) rotate3d(0, 0, 0, 0deg) scale(1);
  }
}
@keyframes rotate--1 {
  0% {
    -webkit-transform: translate(-50%, -50%) rotate3d(1, -1, 0, 40deg) scale(2);
            transform: translate(-50%, -50%) rotate3d(1, -1, 0, 40deg) scale(2);
  }
  50% {
    -webkit-transform: translate(-50%, -50%) rotate3d(0, 0, 0, 0deg) scale(1.1);
            transform: translate(-50%, -50%) rotate3d(0, 0, 0, 0deg) scale(1.1);
  }
  100% {
    -webkit-transform: translate(-50%, -50%) rotate3d(0, 0, 0, 0deg) scale(1);
            transform: translate(-50%, -50%) rotate3d(0, 0, 0, 0deg) scale(1);
  }
}
@-webkit-keyframes rotate--2 {
  0% {
    -webkit-transform: translate(-50%, -50%) rotate3d(1, -1, 0, 40deg) scale(2);
            transform: translate(-50%, -50%) rotate3d(1, -1, 0, 40deg) scale(2);
  }
  50% {
    -webkit-transform: translate(-50%, -50%) rotate3d(0, 0, 0, 0deg) scale(1.1);
            transform: translate(-50%, -50%) rotate3d(0, 0, 0, 0deg) scale(1.1);
  }
  100% {
    -webkit-transform: translate(-50%, -50%) rotate3d(0, 0, 0, 0deg) scale(1);
            transform: translate(-50%, -50%) rotate3d(0, 0, 0, 0deg) scale(1);
  }
}
@keyframes rotate--2 {
  0% {
    -webkit-transform: translate(-50%, -50%) rotate3d(1, -1, 0, 40deg) scale(2);
            transform: translate(-50%, -50%) rotate3d(1, -1, 0, 40deg) scale(2);
  }
  50% {
    -webkit-transform: translate(-50%, -50%) rotate3d(0, 0, 0, 0deg) scale(1.1);
            transform: translate(-50%, -50%) rotate3d(0, 0, 0, 0deg) scale(1.1);
  }
  100% {
    -webkit-transform: translate(-50%, -50%) rotate3d(0, 0, 0, 0deg) scale(1);
            transform: translate(-50%, -50%) rotate3d(0, 0, 0, 0deg) scale(1);
  }
}
.logo {
  position: absolute;
  top: 50%;
  left: 50%;
  -webkit-transform-style: preserve-3d;
          transform-style: preserve-3d;
  -webkit-transform: translate(-50%, -50%);
          transform: translate(-50%, -50%);
  font-size: 9em;
  letter-spacing: -0.06em;
  -webkit-animation: hide 8s linear forwards;
          animation: hide 8s linear forwards;
  padding: 0 0.2em;
  line-height: 1;
  border: 0.02em solid black;
}
#retrigger--1:checked ~ .pane .logo {
  -webkit-animation-name: hide--1;
          animation-name: hide--1;
}
#retrigger--2:checked ~ .pane .logo {
  -webkit-animation-name: hide--2;
          animation-name: hide--2;
}
.logo:nth-child(1) {
  -webkit-animation: change 8s steps(30) forwards;
          animation: change 8s steps(30) forwards;
  background: url("https://s3-us-west-2.amazonaws.com/s.cdpn.io/28359/marvel.jpg");
  background-size: 2000px auto;
  -webkit-background-clip: text;
  -webkit-filter: drop-shadow(0 -1px 0 black) drop-shadow(0 1px 0 black) drop-shadow(1px 0 0 black) drop-shadow(-1px 0 0 black);
  color: transparent;
}
#retrigger--1:checked ~ .pane .logo:nth-child(1) {
  -webkit-animation-name: change--1;
          animation-name: change--1;
}
#retrigger--2:checked ~ .pane .logo:nth-child(1) {
  -webkit-animation-name: change--2;
          animation-name: change--2;
}
.logo:nth-child(2) {
  -webkit-transform: translate3d(-50%, -50%, -2px);
          transform: translate3d(-50%, -50%, -2px);
}
.logo:nth-child(3) {
  -webkit-transform: translate3d(-50%, -50%, -3px);
          transform: translate3d(-50%, -50%, -3px);
}
.logo:nth-child(4) {
  -webkit-transform: translate3d(-50%, -50%, -4px);
          transform: translate3d(-50%, -50%, -4px);
}
.logo:nth-child(5) {
  -webkit-transform: translate3d(-50%, -50%, -5px);
          transform: translate3d(-50%, -50%, -5px);
}
.logo:nth-child(6) {
  -webkit-transform: translate3d(-50%, -50%, -6px);
          transform: translate3d(-50%, -50%, -6px);
}
.logo:nth-child(7) {
  -webkit-transform: translate3d(-50%, -50%, -7px);
          transform: translate3d(-50%, -50%, -7px);
}
.logo:nth-child(8) {
  -webkit-transform: translate3d(-50%, -50%, -8px);
          transform: translate3d(-50%, -50%, -8px);
}
.logo:nth-child(9) {
  -webkit-transform: translate3d(-50%, -50%, -9px);
          transform: translate3d(-50%, -50%, -9px);
}
.logo:nth-child(10) {
  -webkit-transform: translate3d(-50%, -50%, -10px);
          transform: translate3d(-50%, -50%, -10px);
}
.logo:nth-child(11) {
  -webkit-transform: translate3d(-50%, -50%, -11px);
          transform: translate3d(-50%, -50%, -11px);
}
.logo:nth-child(12) {
  -webkit-transform: translate3d(-50%, -50%, -12px);
          transform: translate3d(-50%, -50%, -12px);
}
.logo:nth-child(13) {
  -webkit-transform: translate3d(-50%, -50%, -13px);
          transform: translate3d(-50%, -50%, -13px);
}
.logo:nth-child(14) {
  -webkit-transform: translate3d(-50%, -50%, -14px);
          transform: translate3d(-50%, -50%, -14px);
}
.logo:nth-child(15) {
  -webkit-transform: translate3d(-50%, -50%, -15px);
          transform: translate3d(-50%, -50%, -15px);
}
.logo:nth-child(16) {
  -webkit-transform: translate3d(-50%, -50%, -16px);
          transform: translate3d(-50%, -50%, -16px);
}
.logo:nth-child(17) {
  -webkit-transform: translate3d(-50%, -50%, -17px);
          transform: translate3d(-50%, -50%, -17px);
}
.logo:nth-child(18) {
  -webkit-transform: translate3d(-50%, -50%, -18px);
          transform: translate3d(-50%, -50%, -18px);
}
.logo:nth-child(19) {
  -webkit-transform: translate3d(-50%, -50%, -19px);
          transform: translate3d(-50%, -50%, -19px);
}
.logo:nth-child(20) {
  -webkit-transform: translate3d(-50%, -50%, -20px);
          transform: translate3d(-50%, -50%, -20px);
}
@-webkit-keyframes hide--1 {
  0% {
    visibility: visible;
    opacity: 1;
  }
  100% {
    visibility: hidden;
    opacity: 0;
  }
}
@keyframes hide--1 {
  0% {
    visibility: visible;
    opacity: 1;
  }
  100% {
    visibility: hidden;
    opacity: 0;
  }
}
@-webkit-keyframes hide--2 {
  0% {
    visibility: visible;
    opacity: 1;
  }
  100% {
    visibility: hidden;
    opacity: 0;
  }
}
@keyframes hide--2 {
  0% {
    visibility: visible;
    opacity: 1;
  }
  100% {
    visibility: hidden;
    opacity: 0;
  }
}
@-webkit-keyframes change--1 {
  0% {
    background-position: 0 0;
    color: rgba(150, 150, 0, 0.4);
    -webkit-filter: drop-shadow(0 -1px 0 black) drop-shadow(0 1px 0 black) drop-shadow(1px 0 0 black) drop-shadow(-1px 0 0 black);
    border-color: black;
  }
  50% {
    background-position: 200% 200%;
    color: rgba(150, 150, 0, 0.4);
    -webkit-filter: drop-shadow(0 -1px 0 black) drop-shadow(0 1px 0 black) drop-shadow(1px 0 0 black) drop-shadow(-1px 0 0 black);
    border-color: white;
  }
  100% {
    background-position: -200% -200%;
    color: white;
    -webkit-filter: drop-shadow(0 0 0 white) drop-shadow(0 0 0 white) drop-shadow(0 0 0 white) drop-shadow(0 0 0 white);
    border-color: white;
  }
}
@keyframes change--1 {
  0% {
    background-position: 0 0;
    color: rgba(150, 150, 0, 0.4);
    -webkit-filter: drop-shadow(0 -1px 0 black) drop-shadow(0 1px 0 black) drop-shadow(1px 0 0 black) drop-shadow(-1px 0 0 black);
    border-color: black;
  }
  50% {
    background-position: 200% 200%;
    color: rgba(150, 150, 0, 0.4);
    -webkit-filter: drop-shadow(0 -1px 0 black) drop-shadow(0 1px 0 black) drop-shadow(1px 0 0 black) drop-shadow(-1px 0 0 black);
    border-color: white;
  }
  100% {
    background-position: -200% -200%;
    color: white;
    -webkit-filter: drop-shadow(0 0 0 white) drop-shadow(0 0 0 white) drop-shadow(0 0 0 white) drop-shadow(0 0 0 white);
    border-color: white;
  }
}
@-webkit-keyframes change--2 {
  0% {
    background-position: 0 0;
    color: rgba(150, 150, 0, 0.4);
    -webkit-filter: drop-shadow(0 -1px 0 black) drop-shadow(0 1px 0 black) drop-shadow(1px 0 0 black) drop-shadow(-1px 0 0 black);
    border-color: black;
  }
  50% {
    background-position: 200% 200%;
    color: rgba(150, 150, 0, 0.4);
    -webkit-filter: drop-shadow(0 -1px 0 black) drop-shadow(0 1px 0 black) drop-shadow(1px 0 0 black) drop-shadow(-1px 0 0 black);
    border-color: white;
  }
  100% {
    background-position: -200% -200%;
    color: white;
    -webkit-filter: drop-shadow(0 0 0 white) drop-shadow(0 0 0 white) drop-shadow(0 0 0 white) drop-shadow(0 0 0 white);
    border-color: white;
  }
}
@keyframes change--2 {
  0% {
    background-position: 0 0;
    color: rgba(150, 150, 0, 0.4);
    -webkit-filter: drop-shadow(0 -1px 0 black) drop-shadow(0 1px 0 black) drop-shadow(1px 0 0 black) drop-shadow(-1px 0 0 black);
    border-color: black;
  }
  50% {
    background-position: 200% 200%;
    color: rgba(150, 150, 0, 0.4);
    -webkit-filter: drop-shadow(0 -1px 0 black) drop-shadow(0 1px 0 black) drop-shadow(1px 0 0 black) drop-shadow(-1px 0 0 black);
    border-color: white;
  }
  100% {
    background-position: -200% -200%;
    color: white;
    -webkit-filter: drop-shadow(0 0 0 white) drop-shadow(0 0 0 white) drop-shadow(0 0 0 white) drop-shadow(0 0 0 white);
    border-color: white;
  }
}
.retrigger {
  position: absolute;
  left: -5em;
  opacity: 0;
}

@-webkit-keyframes buttons--1 {
  0%,99% {
    visibility: hidden;
  }
  100% {
    visibility: visible;
  }
}

@keyframes buttons--1 {
  0%,99% {
    visibility: hidden;
  }
  100% {
    visibility: visible;
  }
}
@-webkit-keyframes buttons--2 {
  0%,99% {
    visibility: hidden;
  }
  100% {
    visibility: visible;
  }
}
@keyframes buttons--2 {
  0%,99% {
    visibility: hidden;
  }
  100% {
    visibility: visible;
  }
}
.buttons {
  position: absolute;
  z-index: 3;
  top: 1em;
  left: 50%;
  width: 10em;
  margin-left: -5em;
  height: 2em;
  line-height: 2em;
  text-align: center;
  cursor: pointer;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
  -webkit-animation: button 8s linear;
          animation: button 8s linear;
}
#retrigger--1:checked ~ .buttons {
  -webkit-animation-name: buttons--1;
          animation-name: buttons--1;
}
#retrigger--2:checked ~ .buttons {
  -webkit-animation-name: buttons--2;
          animation-name: buttons--2;
}
.buttons .button {
  padding: 0.3em 1em;
  color: black;
  font-size: 1.3em;
  display: none;
  cursor: pointer;
  border: 2px solid black;
}
.buttons .button:hover {
  color: white;
  background: black;
}
#retrigger--2:checked ~ .buttons .button--1 {
  display: block;
}
#retrigger--1:checked ~ .buttons .button--2 {
  display: block;
}
</style>
<body>
<input type="radio" name="rerun" id="retrigger--1" class="retrigger"/>
<input type="radio" name="rerun" id="retrigger--2" checked="checked" class="retrigger"/>
<div class="bg"></div>
<div class="buttons">
  <label for="retrigger--1" class="button button--1">PLAY AGAIN</label>
  <label for="retrigger--2" class="button button--2">PLAY AGAIN</label>
  <label ><a href="/HeroJDBC/secure/login.jsp">ENTER</a></label>
  
</div>
<div class="pane">
  <div class="rotate">
   <div class="logo">TAKEN</div>
   <div class="logo">TAKEN</div>
   <div class="logo">TAKEN</div>
   <div class="logo">TAKEN</div>
   <div class="logo">TAKEN</div>
   <div class="logo">TAKEN</div>
   <div class="logo">TAKEN</div>
   <div class="logo">TAKEN</div>
   <div class="logo">TAKEN</div>
   <div class="logo">TAKEN</div>
   <div class="logo">TAKEN</div>
   <div class="logo">TAKEN</div>
   <div class="logo">TAKEN</div>
   <div class="logo">TAKEN</div>
   <div class="logo">TAKEN</div>
   <div class="logo">TAKEN</div>
   <div class="logo">TAKEN</div>
   <div class="logo">TAKEN</div>
   <div class="logo">TAKEN</div>
  </div>
</div>
</body>
</html>