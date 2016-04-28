<%-- <%@page import="model.dao.MissionMemDAO_JDBC"%> --%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%@ page import="model.*"%> --%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>aLLiNoNE</title>
<link
	href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.10.2/themes/hot-sneaks/jquery-ui.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="http://cdn.datatables.net/1.10.11/css/jquery.dataTables.min.css" />


<style type="text/css">
* {
	-webkit-print-color-adjust: exact;
}

body {
	background: url(Img/marvelQ3.jpg);
	margin: 0px;
	padding: 0px;
	font-align: center;
	overflow-y: hidden;
}

.menuHolder {
	width: 100px;
	height: 100px;
	margin: 0px 0 250px 0px;
	position: fiexd;
	z-index: 4;
} /*選單為網頁最上層*/
.menuHolder ul {
	padding: 0;
	margin: 0;
	list-style: none;
	position: absolute;
	left: 0;
	top: 0;
	width: 0;
	height: 0;
}

.menuHolder ul li {
	border-radius: 0 0 300px 0;
	width: 0;
	height: 0;
}

.menuHolder ul li a {
	color: #000;
	text-decoration: none;
	font: bold 15px/55px malgun gothic, sans-serif;
	text-align: center;
	box-shadow: -5px 5px 5px rgba(0, 0, 0, 0.4);
	-webkit-transform-origin: 0 0;
	-moz-transform-origin: 0 0;
	-ms-transform-origin: 0 0;
	-o-transform-origin: 0 0;
	transform-origin: 0 0;
}

.menuHolder ul.p1 li {
	position: absolute;
	left: 0;
	top: 0;
}

.menuHolder ul.p2 {
	z-index: -1;
}

.menuHolder ul.p3 {
	z-index: -1;
}

.menuHolder li.s1>a {
	position: absolute;
	display: block;
	width: 100px;
	height: 100px;
	background: url(Img/shield/Shield6.png);
	border-radius: 0 0 100px 0;
}

.menuHolder li.s2>a {
	position: absolute;
	display: block;
	width: 100px;
	padding-left: 100px;
	height: 200px;
	background: #444444; /*灰*/
	border-radius: 0 0 200px 0;
}

.menuHolder ul.p3 li a {
	position: absolute;
	display: block;
	width: 100px;
	padding-left: 200px;
	height: 300px;
	background: #FFB5B5;
	border-radius: 0 0 300px 0;
}

.menuHolder ul ul {
	-webkit-transform-origin: 0 0;
	-moz-transform-origin: 0 0;
	-ms-transform-origin: 0 0;
	-o-transform-origin: 0 0;
	transform-origin: 0 0;
	-webkit-transform: rotate(90deg);
	-moz-transform: rotateZ(90deg);
	-ms-transform: rotate(90deg);
	-o-transform: rotate(90deg);
	transform: rotate(90deg);
	-webkit-transition: 1s;
	-moz-transition: 1s;
	-ms-transition: 1s;
	-o-transition: 1s;
	transition: 1s;
}

.menuHolder li.s2:nth-of-type(6)>a {
	background: #DCDCDC; /*灰6*/
	-moz-transform: rotateZ(90deg);
	-ms-transform: rotate(90deg);
	-o-transform: rotate(90deg);
	transform: rotate(90deg);
}

.menuHolder li.s2:nth-of-type(5)>a {
	background: #DDDDDD; /*灰5*/
	-webkit-transform: rotate(72deg);
	-moz-transform: rotateZ(72deg);
	-ms-transform: rotate(72deg);
	-o-transform: rotate(72deg);
	transform: rotate(72deg);
}

.menuHolder li.s2:nth-of-type(4)>a {
	background: #AAAAAA; /*灰4*/
	-webkit-transform: rotate(54deg);
	-moz-transform: rotateZ(54deg);
	-ms-transform: rotate(54deg);
	-o-transform: rotate(54deg);
	transform: rotate(54deg);
}

.menuHolder li.s2:nth-of-type(3)>a {
	background: #888888; /*灰3*/
	-webkit-transform: rotate(36deg);
	-moz-transform: rotateZ(36deg);
	-ms-transform: rotate(36deg);
	-o-transform: rotate(36deg);
	transform: rotate(36deg);
}

.menuHolder li.s2:nth-of-type(2)>a {
	background: #666666; /*灰2*/
	-webkit-transform: rotate(18deg);
	-moz-transform: rotateZ(18deg);
	-ms-transform: rotate(18deg);
	-o-transform: rotate(18deg);
	transform: rotate(18deg);
}
/*-----------------------------------------------------------------------------*/
.menuHolder .a6 li:nth-of-type(2)>a {
	background: #FF3333; /*懸賞任務*/
	-webkit-transform: rotate(90deg);
	-moz-transform: rotateZ(90deg);
	-ms-transform: rotate(90deg);
	-o-transform: rotate(90deg);
	transform: rotate(90deg);
}
/*------------------------------------------------------------------------------*/
.menuHolder .a5 li:nth-of-type(2)>a {
	background: #FF3333; /*商城*/
	-webkit-transform: rotate(22.5deg);
	-moz-transform: rotateZ(22.5deg);
	-ms-transform: rotate(22.5deg);
	-o-transform: rotate(22.5deg);
	transform: rotate(22.5deg);
}
/*------------------------------------------------------------------------------*/
.menuHolder .a4 li:nth-of-type(2)>a {
	background: #FF3333; /*紅2*/ /*任務專區*/
	-webkit-transform: rotate(30deg);
	-moz-transform: rotateZ(30deg);
	-ms-transform: rotate(30deg);
	-o-transform: rotate(30deg);
	transform: rotate(30deg);
}

.menuHolder .a4 li:nth-of-type(3)>a {
	background: #CC0000; /*紅3*/
	-webkit-transform: rotate(60deg);
	-moz-transform: rotateZ(60deg);
	-ms-transform: rotate(60deg);
	-o-transform: rotate(60deg);
	transform: rotate(60deg);
}

/*----------------------------------------------------------------------*/
.menuHolder .a3 li:nth-of-type(2)>a {
	background: #FF3333; /*r2*/ /*會員*/
	-webkit-transform: rotate(30deg);
	-moz-transform: rotateZ(30deg);
	-ms-transform: rotate(60deg);
	-o-transform: rotate(30deg);
	transform: rotate(30deg);
}

.menuHolder .a3 li:nth-of-type(3)>a {
	background: #CC0000; /*r3*/
	-webkit-transform: rotate(60deg);
	-moz-transform: rotateZ(60deg);
	-ms-transform: rotate(60deg);
	-o-transform: rotate(60deg);
	transform: rotate(60deg);
}
/*-------------------------------------------------------------------------*/
.menuHolder li.s1:hover ul.p2 {
	-webkit-transform: rotate(0deg);
	-moz-transform: rotateZ(0deg);
	-ms-transform: rotate(0deg);
	-o-transform: rotate(0deg);
	transform: rotate(0deg);
}

.menuHolder li.s2:hover ul.p3 {
	-webkit-transform: rotate(0deg);
	-moz-transform: rotateZ(0deg);
	-ms-transform: rotate(0deg);
	-o-transform: rotate(0deg);
	transform: rotate(0deg);
}

.menuHolder ul li:hover>a {
	background: url(Img/shield/Shield6.png);
	color: #fff;
} /*鼠標碰到後的顏色*/
.menuHolder li.s2:hover>a {
	background: #00BB00;
	color: #fff;
}

.menuHolder .a6 li:hover>a {
	background: #01DFD7;
	color: #fff;
}

.menuHolder .a5 li:hover>a {
	background: #01DFD7;
	color: #fff;
}

.menuHolder .a4 li:hover>a {
	background: #01DFD7;
	color: #fff;
}

.menuHolder .a3 li:hover>a {
	background: #01DFD7;
	color: #fff;
} /*color = 字的顏色*/
.menuWindow {
	width: 110px;
	height: 110px;
	overflow: hidden;
	position: absolute;
	left: 0;
	top: 0;
	z-index: 4;
	-webkit-transition: 0s 1s;
	-moz-transition: 0s 1s;
	-ms-transition: 0s 1s;
	-o-transition: 0s 1s;
	transition: 0s 1s;
}

.menuHolder:hover .menuWindow {
	width: 400px;
	height: 400px;
	-webkit-transition: 0s 0s;
	-moz-transition: 0s 0s;
	-ms-transition: 0s 0s;
	-o-transition: 0s 0s;
	transition: 0s 0s;
}

.menuHolder span {
	display: block;
	-webkit-transform: rotate(5deg);
	-moz-transform: rotateZ(5deg);
	-ms-transform: rotate(5deg);
	-o-transform: rotate(5deg);
	transform: rotate(5deg);
}

.menuHolder ~ img.close {
	width: 0;
	height: 0;
	position: fixed;
	z-index: -1;
	left: 0;
	top: 0;
}

.menuHolder:hover ~ img.close {
	width: 100%;
	height: 50%;
}
/* ====================================================================================================================================== */
#big_door_left /*左大半*/ {
	top: 0px;
	buttom: 0px;
	left: -49%;
	width: 50%;
	height: 946px; /*佔滿瀏覽器高度*/
	position: fixed; /*固定定位*/
	z-index: 2;
}

#big_door_right /*右大半*/ {
	top: 0px;
	buttom: 0px;
	right: -49%;
	width: 50%;
	height: 946px; /*佔滿瀏覽器高度*/
	position: fixed; /*固定定位*/
	z-index: 2;
}

#hiden_door_left { /*隱藏部分(左)*/
	background: url(Img/CaptainAmericaCivilWar21.jpg);
	width: -49%;
	height: 946px;
	z-index: 5;
}

#hiden_door_right { /*隱藏部分(右)*/
	background: url(Img/CaptainAmericaCivilWar22.jpg);
	width: -49%;
	height: 946px;
	z-index: 5;
}

#right_door { /*觸碰區(右)*/
	position: absolute;
	left: 0px;
	width: 25px;
	height: 946px;
	background: Alpha(opacity = 100); /*背景(透明)*/
	padding-top: 470px;
	z-index: 3;
}

#left_door { /*觸碰區(左)*/
	position: absolute;
	right: 0px;
	width: 25px;
	height: 946px;
	background: Alpha(opacity = 100); /*背景 (透明)*/
	padding-top: 470px;
	z-index: 3;
}
/* ====================================================================================================================================== */
#ad { /*外*/
	position: fixed;
	top: -100%;
	buttom: 0px;
	left: 0px;
	right: 0px;
	width: 100%;
	height: 100%;
	z-index: 6;
	/* 	background:orange; */
	/* 	opacity:0.5; */
}

#bk { /*裡*/
	position: fixed;
	top: -100%;
	left: 0px;
	right: 0px;
	width: 100%;
	height: 100%;
	background: black;
	opacity: 0.7;
}

#X {
	position: fixed;
	top: -100%;
	width: 100%;
	height: 50px;
	background: white;
	font-size: 20px;
	font: center;
	z-index: 7;
}
/* ====================================================================================================================================== */
#abgneBlock {
	width: 60%;
	height: 88%;
	top: 80px;
	left: 200px;
	position: absolute;
	border: 1px solid black;
}

.hdr {
	background: gray;
	width: 461px;
	height: 94px;
	margin: 10px auto;
	text-indent: -9999px;
}

a {
	text-decoration: none;
}

a:hover {
	text-decoration: underline;
}

.listReset {
	padding: 0;
	margin: 0;
	list-style: none;
}

.tabPanel {
	width: 768px;
	height: 1024px;
	position: absolute;
	top: 75px;
	left: 25%;
}

.tab-content {
	width: 450px;
	height: 200px;
	position:;
	top: 0;
	left: 0;
}

.detail {
	position: absolute;
	left: 20px;
	top: 0;
	width: 150px;
	height: 190px;
	background: url(images/detailBG.png);
	padding: 5px;
}

.detail h1 a {
	color: #FF0;
	font-size: .5em;
}

.detail p {
	color: #FFF;
	font-size: .8em;
	line-height: 1.5;
}

.detail ul {
	color: #F90;
	list-style-type: square;
	padding-left: 20px;
	margin: 10px 0 0;
}

.detail ul a {
	color: #FC0;
	font-size: .8em;
	line-height: 1.5;
}

.switch {
	width: 150px;
	position: absolute;
	top: 0;
	right: 0px;
}

.switch a {
	display: block;
	line-height: 40px;
	background: url(images/tabBG.jpg);
	text-indent: 1em;
	color: #666;
	text-decoration: none;
	*height: 40px;
}

.switch a:hover {
	background: #F0F;
	color: #000;
	background: url(images/tabBG_over.jpg);
}

a.now-tab, a.now-tab:hover {
	background: url(images/tabBG_now.png);
	text-indent: 1.5em;
	color: #FFF;
	font-weight: bold;
	margin-left: -20px;
	border: 0;
}
</style>


<!-- <=======================================================================================================================================================> -->

</head>
<body>

	<!-- width="70%" height="95%"  style="border:5px solid black ;position:fixed;top:20px;left:15%;" z-index="1" -->
	<!-- css參考用 -->
	<!-- <div id="map" style="width:70%; height:880px;border:5px solid black ;margin-top:-330px; margin-left:547px"></div> -->
	<!-- 原程式 -->
	<div id="map"></div>
	<div class="menuHolder">
		<div class="menuWindow">
			<ul class="p1">
				<li class="s1"><a href="#url">選 單</a>
					<ul class="p2">
						<li class="s2"><a href="#"><span>首頁</span></a>
							<ul class="p3 a2">
								<li><a href="#">關於我們</a></li>
							</ul></li>
						<li class="s2"><a href="#"><span>會員專區</span></a>
							<ul class="p3 a3">
								<li><a href="#">修改英雄標籤</a></li>
								<li><a href="#">修改資料</a></li>
								<li><a href="#">查詢個人資料</a></li>
							</ul></li>
						<li class="s2"><a href="#"><span>任務專區</span></a>
							<ul class="p3 a4">
								<li><a href="pages/mission.jsp">發布任務</a></li>
								<li><a href="http://localhost:8080/HeroJDBC/missionMem.do;jsessionid=C9ED883D25A94F8DACE3BA7DCEFED262?">接收任務</a></li>
								<li><a href="pages/search.jsp">查詢任務</a></li>
							</ul></li>
						<li class="s2"><a href="#"><span>英雄商城</span></a>
							<ul class="p3 a5">
								<li><a href="#">購買英雄</a></li>
							</ul></li>
						<li class="s2"><a href="#url"><span>懸賞任務</span></a>
							<ul class="p3 a6">
								<li><a href="#">懸賞任務清單</a></li>
							</ul></li>
					</ul></li>
			</ul>
		</div>
	</div>
	<form action="<c:url value="/missionMem.do"/>" method="get">
	<table id="testtt" style="height:900px">
		<thead>
			<tr>
				<th>任務:</th>
				<th>內容:</th>
				<th>發起人:</th>
				<th>人數要求:</th>
				<th>性別要求:</th>
				<th>執行時間:</th>
				<th>地點:</th>
				<th>結束時間:</th>
				<th>任務狀態:</th>
				<th></th>

			</tr>
		</thead>
		<tbody>
				<c:forEach var="bean" items="${beans}" begin="1" end="20" step="1">
				<tr>
					<td>${bean.missionTitle}</td>
					<td>${bean.missionDesc}</td>
					<td>${bean.given_name}</td>
					<td>${bean.missionPeople}</td>
					<td>${bean.missionGender}</td>
					<td>${bean.missionExcuteTime}</td>
					<td>${bean.missionArea}</td>
					<td>${bean.missionEnd}</td>
					<td>${bean.missionStatusNo}</td>
					<td><a href="">接任務</a></td>
				</tr>
				</c:forEach>
		</tbody>
	</table>
	</form>
	
<script type="text/javascript"
	src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-2.0.0.min.js"></script>
<script type="text/javascript"
	src="https://cdn.datatables.net/1.10.11/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript">
	$(document).ready(function() {
		$("#testtt").DataTable({
			"pageLenght":5,
			"lengthMenu":[10 , 20, 25, 30 ]
		});
	});
</script>
</body>
</html>