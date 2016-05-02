<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>
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

body {
overflow:hidden; 
}
.content {
  font-family: 'Fredoka One', sans-serif;
  position:absolute;
  padding: 2rem;
  text-align: center;
  background: #FFEA80;
  letter-spacing: .08em;
  line-height: 2.0;
  overflow:hidden;  
  top:0px;
  height:100%;
  width:100%;
}

.title {
  font-size: 3vw;
}
.title .title-part {
  font-weight: 600;
  font-family: 'Fredoka One', sans-serif;
  text-transform: uppercase;
  display: block;
  color: #FFFFD9;
}
.title .title-part.line-1 {
  text-shadow: #ff6239 1px 1px, #ff6339 2px 2px, #ff643a 3px 3px, #ff663a 4px 4px, #ff673b 5px 5px, #ff683c 6px 6px, #ff693c 7px 7px, #ff6a3d 8px 8px, #ff6b3d 9px 9px, #ff6c3e 10px 10px, #ff6e3f 11px 11px, #ff6f3f 12px 12px, #ff7040 13px 13px, #ff7140 14px 14px, #ff7241 15px 15px, #ff7342 16px 16px, #ff7442 17px 17px, #ff7643 18px 18px, #ff7743 19px 19px, #ff7844 20px 20px, #ff7945 21px 21px, #ff7a45 22px 22px, #ff7b46 23px 23px, #ff7c46 24px 24px, #ff7e47 25px 25px, #ff7f48 26px 26px, #ff8048 27px 27px, #ff8149 28px 28px, #ff8249 29px 29px, #ff834a 30px 30px, #ff844b 31px 31px, #ff864b 32px 32px, #ff874c 33px 33px, #ff884c 34px 34px, #ff894d 35px 35px, #ff8a4e 36px 36px, #ff8b4e 37px 37px, #ff8c4f 38px 38px, #ff8e4f 39px 39px, #ff8f50 40px 40px, #ff9051 41px 41px, #ff9151 42px 42px, #ff9252 43px 43px, #ff9352 44px 44px, #ff9453 45px 45px, #ff9654 46px 46px, #ff9754 47px 47px, #ff9855 48px 48px, #ff9955 49px 49px, #ff9a56 50px 50px, #ff9b57 51px 51px, #ff9c57 52px 52px, #ff9e58 53px 53px, #ff9f58 54px 54px, #ffa059 55px 55px, #ffa15a 56px 56px, #ffa25a 57px 57px, #ffa35b 58px 58px, #ffa45b 59px 59px, #ffa65c 60px 60px, #ffa75d 61px 61px, #ffa85d 62px 62px, #ffa95e 63px 63px, #ffaa5e 64px 64px, #ffab5f 65px 65px, #ffac60 66px 66px, #ffad60 67px 67px, #ffaf61 68px 68px, #ffb061 69px 69px, #ffb162 70px 70px, #ffb263 71px 71px, #ffb363 72px 72px, #ffb464 73px 73px, #ffb564 74px 74px, #ffb765 75px 75px, #ffb866 76px 76px, #ffb966 77px 77px, #ffba67 78px 78px, #ffbb67 79px 79px, #ffbc68 80px 80px, #ffbd69 81px 81px, #ffbf69 82px 82px, #ffc06a 83px 83px, #ffc16a 84px 84px, #ffc26b 85px 85px, #ffc36c 86px 86px, #ffc46c 87px 87px, #ffc56d 88px 88px, #ffc76d 89px 89px, #ffc86e 90px 90px, #ffc96f 91px 91px, #ffca6f 92px 92px, #ffcb70 93px 93px, #ffcc70 94px 94px, #ffcd71 95px 95px, #ffcf72 96px 96px, #ffd072 97px 97px, #ffd173 98px 98px, #ffd273 99px 99px, #ffd374 100px 100px, #ffd475 101px 101px, #ffd575 102px 102px, #ffd776 103px 103px, #ffd876 104px 104px, #ffd977 105px 105px, #ffda78 106px 106px, #ffdb78 107px 107px, #ffdc79 108px 108px, #ffdd79 109px 109px, #ffdf7a 110px 110px, #ffe07b 111px 111px, #ffe17b 112px 112px, #ffe27c 113px 113px, #ffe37c 114px 114px, #ffe47d 115px 115px, #ffe57e 116px 116px, #ffe77e 117px 117px, #ffe87f 118px 118px, #ffe97f 119px 119px, #ffea80 120px 120px, #FF6138 0px 0px;
}
.title .title-part.line-2 {
  text-shadow: #ffb502 1px 1px, #ffb604 2px 2px, #ffb706 3px 3px, #ffb809 4px 4px, #ffb90b 5px 5px, #ffb90d 6px 6px, #ffba0f 7px 7px, #ffbb11 8px 8px, #ffbc13 9px 9px, #ffbd15 10px 10px, #ffbe17 11px 11px, #ffbf1a 12px 12px, #ffc01c 13px 13px, #ffc11e 14px 14px, #ffc220 15px 15px, #ffc222 16px 16px, #ffc324 17px 17px, #ffc426 18px 18px, #ffc529 19px 19px, #ffc62b 20px 20px, #ffc72d 21px 21px, #ffc82f 22px 22px, #ffc931 23px 23px, #ffca33 24px 24px, #ffcb35 25px 25px, #ffcb37 26px 26px, #ffcc3a 27px 27px, #ffcd3c 28px 28px, #ffce3e 29px 29px, #ffcf40 30px 30px, #ffd042 31px 31px, #ffd144 32px 32px, #ffd246 33px 33px, #ffd349 34px 34px, #ffd44b 35px 35px, #ffd44d 36px 36px, #ffd54f 37px 37px, #ffd651 38px 38px, #ffd753 39px 39px, #ffd855 40px 40px, #ffd957 41px 41px, #ffda5a 42px 42px, #ffdb5c 43px 43px, #ffdc5e 44px 44px, #ffdd60 45px 45px, #ffdd62 46px 46px, #ffde64 47px 47px, #ffdf66 48px 48px, #ffe069 49px 49px, #ffe16b 50px 50px, #ffe26d 51px 51px, #ffe36f 52px 52px, #ffe471 53px 53px, #ffe573 54px 54px, #ffe675 55px 55px, #ffe677 56px 56px, #ffe77a 57px 57px, #ffe87c 58px 58px, #ffe97e 59px 59px, #ffea80 60px 60px, #FFB400 0px 0px;
}
.title .title-part.line-3 {
  text-shadow: #03a488 1px 1px, #05a488 2px 2px, #08a588 3px 3px, #0aa688 4px 4px, #0da788 5px 5px, #0fa788 6px 6px, #12a887 7px 7px, #14a987 8px 8px, #17a987 9px 9px, #1aaa87 10px 10px, #1cab87 11px 11px, #1fac87 12px 12px, #21ac87 13px 13px, #24ad87 14px 14px, #26ae87 15px 15px, #29ae87 16px 16px, #2baf87 17px 17px, #2eb087 18px 18px, #30b086 19px 19px, #33b186 20px 20px, #36b286 21px 21px, #38b386 22px 22px, #3bb386 23px 23px, #3db486 24px 24px, #40b586 25px 25px, #42b586 26px 26px, #45b686 27px 27px, #47b786 28px 28px, #4ab886 29px 29px, #4db886 30px 30px, #4fb986 31px 31px, #52ba85 32px 32px, #54ba85 33px 33px, #57bb85 34px 34px, #59bc85 35px 35px, #5cbd85 36px 36px, #5ebd85 37px 37px, #61be85 38px 38px, #63bf85 39px 39px, #66bf85 40px 40px, #69c085 41px 41px, #6bc185 42px 42px, #6ec285 43px 43px, #70c284 44px 44px, #73c384 45px 45px, #75c484 46px 46px, #78c484 47px 47px, #7ac584 48px 48px, #7dc684 49px 49px, #80c784 50px 50px, #82c784 51px 51px, #85c884 52px 52px, #87c984 53px 53px, #8ac984 54px 54px, #8cca84 55px 55px, #8fcb84 56px 56px, #91cb83 57px 57px, #94cc83 58px 58px, #96cd83 59px 59px, #99ce83 60px 60px, #9cce83 61px 61px, #9ecf83 62px 62px, #a1d083 63px 63px, #a3d083 64px 64px, #a6d183 65px 65px, #a8d283 66px 66px, #abd383 67px 67px, #add383 68px 68px, #b0d482 69px 69px, #b3d582 70px 70px, #b5d582 71px 71px, #b8d682 72px 72px, #bad782 73px 73px, #bdd882 74px 74px, #bfd882 75px 75px, #c2d982 76px 76px, #c4da82 77px 77px, #c7da82 78px 78px, #c9db82 79px 79px, #ccdc82 80px 80px, #cfdd82 81px 81px, #d1dd81 82px 82px, #d4de81 83px 83px, #d6df81 84px 84px, #d9df81 85px 85px, #dbe081 86px 86px, #dee181 87px 87px, #e0e181 88px 88px, #e3e281 89px 89px, #e6e381 90px 90px, #e8e481 91px 91px, #ebe481 92px 92px, #ede581 93px 93px, #f0e680 94px 94px, #f2e680 95px 95px, #f5e780 96px 96px, #f7e880 97px 97px, #fae980 98px 98px, #fce980 99px 99px, #ffea80 100px 100px, #00A388 0px 0px;
}
.title .title-part.line-4 {
  text-shadow: #035bb2 1px 1px, #055db2 2px 2px, #085eb1 3px 3px, #0a60b1 4px 4px, #0d61b0 5px 5px, #0f63b0 6px 6px, #1264af 7px 7px, #1466af 8px 8px, #1767ae 9px 9px, #1a68ae 10px 10px, #1c6aad 11px 11px, #1f6bad 12px 12px, #216dac 13px 13px, #246eac 14px 14px, #2670ab 15px 15px, #2971ab 16px 16px, #2b72aa 17px 17px, #2e74aa 18px 18px, #3075a9 19px 19px, #3377a9 20px 20px, #3678a8 21px 21px, #387aa8 22px 22px, #3b7ba7 23px 23px, #3d7da7 24px 24px, #407ea6 25px 25px, #427fa6 26px 26px, #4581a5 27px 27px, #4782a5 28px 28px, #4a84a4 29px 29px, #4d85a4 30px 30px, #4f87a3 31px 31px, #5288a3 32px 32px, #548aa2 33px 33px, #578ba2 34px 34px, #598ca1 35px 35px, #5c8ea1 36px 36px, #5e8fa0 37px 37px, #6191a0 38px 38px, #63929f 39px 39px, #66949f 40px 40px, #69959e 41px 41px, #6b969e 42px 42px, #6e989d 43px 43px, #70999d 44px 44px, #739b9c 45px 45px, #759c9c 46px 46px, #789e9b 47px 47px, #7a9f9b 48px 48px, #7da19a 49px 49px, #80a29a 50px 50px, #82a399 51px 51px, #85a598 52px 52px, #87a698 53px 53px, #8aa897 54px 54px, #8ca997 55px 55px, #8fab96 56px 56px, #91ac96 57px 57px, #94ae95 58px 58px, #96af95 59px 59px, #99b094 60px 60px, #9cb294 61px 61px, #9eb393 62px 62px, #a1b593 63px 63px, #a3b692 64px 64px, #a6b892 65px 65px, #a8b991 66px 66px, #abba91 67px 67px, #adbc90 68px 68px, #b0bd90 69px 69px, #b3bf8f 70px 70px, #b5c08f 71px 71px, #b8c28e 72px 72px, #bac38e 73px 73px, #bdc58d 74px 74px, #bfc68d 75px 75px, #c2c78c 76px 76px, #c4c98c 77px 77px, #c7ca8b 78px 78px, #c9cc8b 79px 79px, #cccd8a 80px 80px, #cfcf8a 81px 81px, #d1d089 82px 82px, #d4d289 83px 83px, #d6d388 84px 84px, #d9d488 85px 85px, #dbd687 86px 86px, #ded787 87px 87px, #e0d986 88px 88px, #e3da86 89px 89px, #e6dc85 90px 90px, #e8dd85 91px 91px, #ebde84 92px 92px, #ede084 93px 93px, #f0e183 94px 94px, #f2e383 95px 95px, #f5e482 96px 96px, #f7e682 97px 97px, #fae781 98px 98px, #fce981 99px 99px, #ffea80 100px 100px, #005AB3 0px 0px;
}
.title .title-part.line-5 {
  text-shadow: #8202fe 1px 1px, #8405fc 2px 2px, #8507fb 3px 3px, #8609fa 4px 4px, #870cf9 5px 5px, #890ef7 6px 6px, #8a10f6 7px 7px, #8b13f5 8px 8px, #8c15f4 9px 9px, #8e17f2 10px 10px, #8f1af1 11px 11px, #901cf0 12px 12px, #911eee 13px 13px, #9321ed 14px 14px, #9423ec 15px 15px, #9525eb 16px 16px, #9628e9 17px 17px, #982ae8 18px 18px, #992ce7 19px 19px, #9a2fe6 20px 20px, #9b31e4 21px 21px, #9d33e3 22px 22px, #9e36e2 23px 23px, #9f38e1 24px 24px, #a13bdf 25px 25px, #a23dde 26px 26px, #a33fdd 27px 27px, #a442db 28px 28px, #a644da 29px 29px, #a746d9 30px 30px, #a849d8 31px 31px, #a94bd6 32px 32px, #ab4dd5 33px 33px, #ac50d4 34px 34px, #ad52d3 35px 35px, #ae54d1 36px 36px, #b057d0 37px 37px, #b159cf 38px 38px, #b25bcd 39px 39px, #b35ecc 40px 40px, #b560cb 41px 41px, #b662ca 42px 42px, #b765c8 43px 43px, #b867c7 44px 44px, #ba69c6 45px 45px, #bb6cc5 46px 46px, #bc6ec3 47px 47px, #bd70c2 48px 48px, #bf73c1 49px 49px, #c075c0 50px 50px, #c177be 51px 51px, #c37abd 52px 52px, #c47cbc 53px 53px, #c57eba 54px 54px, #c681b9 55px 55px, #c883b8 56px 56px, #c985b7 57px 57px, #ca88b5 58px 58px, #cb8ab4 59px 59px, #cd8cb3 60px 60px, #ce8fb2 61px 61px, #cf91b0 62px 62px, #d093af 63px 63px, #d296ae 64px 64px, #d398ac 65px 65px, #d49aab 66px 66px, #d59daa 67px 67px, #d79fa9 68px 68px, #d8a1a7 69px 69px, #d9a4a6 70px 70px, #daa6a5 71px 71px, #dca8a4 72px 72px, #ddaba2 73px 73px, #deada1 74px 74px, #e0b0a0 75px 75px, #e1b29e 76px 76px, #e2b49d 77px 77px, #e3b79c 78px 78px, #e5b99b 79px 79px, #e6bb99 80px 80px, #e7be98 81px 81px, #e8c097 82px 82px, #eac296 83px 83px, #ebc594 84px 84px, #ecc793 85px 85px, #edc992 86px 86px, #efcc91 87px 87px, #f0ce8f 88px 88px, #f1d08e 89px 89px, #f2d38d 90px 90px, #f4d58b 91px 91px, #f5d78a 92px 92px, #f6da89 93px 93px, #f7dc88 94px 94px, #f9de86 95px 95px, #fae185 96px 96px, #fbe384 97px 97px, #fce583 98px 98px, #fee881 99px 99px, #ffea80 100px 100px, #8100FF 0px 0px;
}
.title .title-part.line-6 {
  text-shadow: black 2px 2px
  }
input[type="text"] {
  padding: 10px;
  border: solid 5px #c9c9c9;
  -webkit-box-shadow: inset 0 0 0 1px #707070;
  -moz-box-shadow: inset 0 0 0 1px #707070;
  box-shadow: inset 0 0 0 1px #707070;
  -webkit-transition: box-shadow 0.3s, border 0.3s;
  -moz-transition: box-shadow 0.3s, border 0.3s;
  -o-transition: box-shadow 0.3s, border 0.3s;
  transition: box-shadow 0.3s, border 0.3s;
  font-size:25px;
}
input[type="text"]:focus, .style-3 input[type="text"].focus {
  border: solid 5px #969696;
</style>
<body>
<div class="content">
  <h1 class="title">
  <form action="<c:url value='../register/Register.do' />" method="post">
    <span class="title-part line-1">信箱 : ${user.email} ${error.email}</span>
    <span class="title-part line-2">密碼 : <input type="text" name="password" value="${user.password} ${error.password}"></span>
    <span class="title-part line-3">性別 : <input id="man" type="radio" checked="checked" name="gender" value="${user.gender}" />男<input id="woman" type="radio"  name="gender"/>女 ${error.gender}</span>
    <span class="title-part line-4">身分證字號 : ${user.id} ${error.id}</span>
    <span class="title-part line-5">電話號碼 : <input type="text" name="phone" value="${user.phone}">${error.phone}</span>
    <span class="title-part line-6">出生日 : ${user.birthday} ${error.birthday}</span>
     <input type="submit" value="Save">
    </form>
  </h1>
</div>
<div class="menuHolder" >
	<div class="menuWindow">
		<ul class="p1">
			<li class="s1"><a href="#url">Menu</a>
				<ul class="p2" style="line-height:20px;">
					<li class="s2"><a href='<c:url value="/index1.jsp" />'>Home</span></a>
					<ul class="p3 a2">
							<li><a style="line-height:20px;" href="#">Name: ${Login.memberName}</a></li><!--名字 -->
							<li><a href="#">$: ${Login.coin}</a></li>
							<li><a href="#">Rating: ${Login.rating}</a></li>
							<li><a href="/HeroJDBC/AboutUs/CAST.jsp">AboutUs</a></li>
							<li><a href="/HeroJDBC/secure/logOut.jsp">LogOut</a></li>
						</ul>
					</li>
					<li class="s2"><a href="#"><span>Members</span></a>
					<ul class="p3 a3">
							<li><a style="line-height:20px;" href="/HeroJDBC/pages/memberHero.jsp">Uniforms</a></li>
							<li><a style="line-height:20px;" href="/HeroJDBC/secure/memberchange.jsp">Edit<br>Profile</a></li>
						</ul>
					</li>
					<li class="s2"><a href="#"><span>Missions</span></a>
					<ul class="p3 a4">
							<li><a id="m" href="#" onclick="window.open('/HeroJDBC/pages/mission.jsp', 'Mission', config='height=825,width=430',flowover=hidden);" style="line-height:25px;">Release Mission</a></li>
							<li><a style="line-height:25px;" href="/HeroJDBC/missionMem.do">Accept Mission</a></li>
							<li><a href="../pages/search.jsp" style="line-height:25px;">Search For Mission</a></li>
						</ul>
					</li>
					<li class="s2"><a href="#" style="line-height:25px;"><span>Shopping<br>Center</span></a>
					<ul class="p3 a5">
							<li><a href="/HeroJDBC/pages/shop.jsp">Purchase<br>Heros</a></li>
						</ul>
					</li>
					<li class="s2"><a href="#url"><span>Others</span></a>
					<ul class="p3 a6">
							<li><a href="HeroJDBC/pages/report.jsp" style="line-height:25px;">Report<br>a<br>Problem</a></li>
						    <li><a href="/HeroJDBC/pages/backend.jsp" style="line-height:25px;">Supervisor</a></li>
						</ul>
					</li>
				</ul>
			</li>
		</ul>
	</div>
</div>
</body>
</html>