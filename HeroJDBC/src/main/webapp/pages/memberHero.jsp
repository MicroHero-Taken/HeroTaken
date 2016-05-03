<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" >
    <head>
    <title>Uniforms</title>
        <meta charset="utf-8" />
        <link href="../css/main.css" rel="stylesheet" type="text/css" />
    </head>
    <style>
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
-webkit-transform:rotate(45deg);                 /*藍色02*/
-moz-transform:rotateZ(45deg);
-ms-transform:rotate(45deg);
-o-transform:rotate(45deg);
transform:rotate(45deg);
}
.menuHolder .a6 li:nth-of-type(3) > a {background:#0000AA; /*懸賞任務*/
-webkit-transform:rotate(0deg);                 /*藍色02*/
-moz-transform:rotateZ(0deg);
-ms-transform:rotate(0deg);
-o-transform:rotate(0deg);
transform:rotate(0deg);
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

a {line-height:20px;}
    </style>  
    <body>
             <div id="Garage">Garage</div>        
      
              
        <div class="pss_main"> <!-- main parallax scrolling slider object -->
            <input id="r_1" type="radio" name="p" class="sel_page_1" style="display: none" checked="checked" /> <!-- hidden radios -->
            <input id="r_2" type="radio" name="p" class="sel_page_2" style="display: none" />
            <input id="r_3" type="radio" name="p" class="sel_page_3" style="display: none" />
            <input id="r_4" type="radio" name="p" class="sel_page_4" style="display: none" />
            <input id="r_5" type="radio" name="p" class="sel_page_5" style="display: none" />
            <input id="r_6" type="radio" name="p" class="sel_page_6" style="display: none" />
            <input id="r_7" type="radio" name="p" class="sel_page_7" style="display: none" />
            <input id="r_8" type="radio" name="p" class="sel_page_8" style="display: none" />
            <input id="r_9" type="radio" name="p" class="sel_page_9" style="display: none" />
            <input id="r_10" type="radio" name="p" class="sel_page_10" style="display: none" />
            <input id="r_11" type="radio" name="p" class="sel_page_11" style="display: none" />
            <input id="r_12" type="radio" name="p" class="sel_page_12" style="display: none" />
            <input id="r_13" type="radio" name="p" class="sel_page_13" style="display: none" />
            <input id="r_14" type="radio" name="p" class="sel_page_14" style="display: none" />
            <input id="r_15" type="radio" name="p" class="sel_page_15" style="display: none" />
            <input id="r_16" type="radio" name="p" class="sel_page_16" style="display: none" />
            <input id="r_17" type="radio" name="p" class="sel_page_17" style="display: none" />
            <input id="r_18" type="radio" name="p" class="sel_page_18" style="display: none" />
            <input id="r_19" type="radio" name="p" class="sel_page_19" style="display: none" />
            <input id="r_20" type="radio" name="p" class="sel_page_20" style="display: none" />
            <input id="r_21" type="radio" name="p" class="sel_page_21" style="display: none" />
            <input id="r_22" type="radio" name="p" class="sel_page_22" style="display: none" />
            <input id="r_23" type="radio" name="p" class="sel_page_23" style="display: none" />
            <input id="r_24" type="radio" name="p" class="sel_page_24" style="display: none" />

<!--             <label for="r_1" class="pss_contr c1"></label> controls -->
<!--             <label for="r_2" class="pss_contr c2"></label> -->
<!--             <label for="r_3" class="pss_contr c3"></label> -->
<!--             <label for="r_4" class="pss_contr c4"></label> -->
<!--             <label for="r_5" class="pss_contr c5"></label>  -->
<!--             <label for="r_6" class="pss_contr c6"></label> -->
<!--             <label for="r_7" class="pss_contr c7"></label> -->
            
            <c:forEach var="i" begin="1" end="${count}">
            	<label for="r_${i}" class="pss_contr c${i}"></label>
            </c:forEach>
          
            <div class="pss_slides">
                <div class="pss_background"></div>
                <ul> <!-- slides -->
                <c:forEach var="memberHero" items="${memberHero}">
                	<li><img src="${pageContext.request.contextPath}/Garage?heroNo=${memberHero.heroNo}"  />
                        <form action="<c:url value="/ChangeHeroSkin"/>">
                        	<div>Name: <input type="hidden" name="heroName" value="${memberHero.heroName}">${memberHero.heroName} <br><br>
                        	<input type="submit" style="width: 100px"  value="Replace" id="replace"/>
                        </form>
                        </div>
                    </li>
                </c:forEach>    
                </ul>
          </div>
        </div>
        <div class="menuHolder" >
	<div class="menuWindow">
		<ul class="p1">
			<li class="s1"><a href="#url">Menu</a>
				<ul class="p2" style="line-height:20px;">
					<li class="s2"><a href='<c:url value="/index1.jsp" />'>Home</a>
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
							<li><a style="line-height:20px;" href="#">Uniforms</a></li>
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
					<li class="s2"><a href="#"><span>Sopping Center</span></a>
					<ul class="p3 a5">
							<li><a href="/HeroJDBC/pages/shop.jsp">Purchase Heros</a></li>
						</ul>
					</li>
					<li class="s2"><a href="#url"><span>Others</span></a>
					<ul class="p3 a6">
							<li><a onclick="window.open('/HeroJDBC/pages/report.jsp', 'Mission', config='height=825,width=430',flowover=hidden);" style="line-height:25px;">Report<br>a<br>Problem</a></li>
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
                