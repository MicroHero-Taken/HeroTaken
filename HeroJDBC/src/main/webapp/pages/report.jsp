<%-- <%@page import="_08report.ReportDAO_JDBC"%> --%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%@ page import="_08report.*"%> --%>
<%@ page import="java.util.*"%>
<!doctype html>
<html lang="zh">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Taken</title>
<link rel="stylesheet" type="text/css" media="screen"
	href="css/reset.css">
<link rel="stylesheet" type="text/css" href="css/default.css">
<script src="http://libs.useso.com/js/jquery/1.11.0/jquery.min.js"></script>
<script type="text/javascript" src="js/turnBox.js"></script>
<style>
body {
	background-color: #000000;
	color: white;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
}

h2 {
	display: block;
	width: 100%;
	font-weight: 300;
	font-size: 20px;
	margin-bottom: 50px;
	text-align: center;
}

input {
	margin: 0;
	padding: 0;
	border: 0;
	outline: 0;
	font-size: 100%;
	vertical-align: baseline;
	background: transparent;
	background-color: #fff;
}

.example {
	color: #fff;
	margin: 0px auto;
	text-align: center;
}

.turnBoxFace {
	box-sizing: border-box;
}

p {
	line-height: 2.5;
	font-weight: blod;
}

.example {
	color: #fff;
	margin: 0px auto;
}

.example.turnBoxCurrentFace1>.turnBoxFaceNum1, .example.turnBoxCurrentFace3>.turnBoxFaceNum3
	{
	background-color: #5E86C1;
}

.example.turnBoxCurrentFace1>.turnBoxFaceNum1:hover, .example.turnBoxCurrentFace3>.turnBoxFaceNum3:hover
	{
	background-color: #4169E1;
}

.example>.turnBoxFaceNum1, .example>.turnBoxFaceNum3 {
	background-color: #5E86C1;
}

.example.turnBoxCurrentFace2>.turnBoxFaceNum2 {
	background-color: #007FFF;
}

.example>.turnBoxFaceNum1 p, .example>.turnBoxFaceNum3 p {
	width: 100%;
	height: 100%;
}

.example>.turnBoxFaceNum2 {
	background-color: #4169E1;
}

.example>.turnBoxFace {
	box-sizing: border-box;
}

.example p {
	line-height: 4.2;
}

.example textarea, .example input {
	-webkit-transition: all 240ms ease-in-out 0ms;
	-moz-transition: all 240ms ease-in-out 0ms;
	-ms-transition: all 240ms ease-in-out 0ms;
	-o-transition: all 240ms ease-in-out 0ms;
	transition: all 240ms ease-in-out 0ms;
	background-color: rgba(255, 255, 255, 1);
	border: 1px solid transparent;
}

.example textarea.lock, .example input.lock {
	background-color: rgba(255, 255, 255, 0);
	border-color: rgba(0, 0, 0, 0.15);
}

.example textarea {
	margin-top: 30px;
	width: 306px;
	height: 150px;
	resize: none;
	padding: 10px 20px;
	font-size: 2em;
	box-sizing: border-box;
	font-weight: bold;
}

.user-information {
	padding-top: 30px;
}

.user-information>li>* {
	display: inline-block;
}

.user-information>li>span {
	width: 13%;
	text-align: right;
	font-size: 14px;
	margin-right: 10px;
}

.user-information>li>input {
	width: 65%;
	height: 20px;
	padding: 8px 10px;
}

.user-information>li:first-child {
	margin-bottom: 10px;
}

.check {
	margin: 0px auto;
	margin-top: 23px;
}

.check.turnBoxCurrentFace1 .turnBoxFaceNum1 {
	background-color: #000022;
}

.check.turnBoxCurrentFace1>.turnBoxFaceNum1:hover, .check.turnBoxCurrentFace3>.turnBoxFaceNum3:hover
	{
	background-color: #000044;
}

.check>.turnBoxFaceNum1 {
	background-color: #000022;
}

.check>.turnBoxFaceNum2 {
	font-size: 0;
}

.check>.turnBoxFaceNum2 .turnBoxButton {
	display: inline-block;
	width: 50%;
	font-size: 20px;
}

.check p {
	line-height: 3;
	font-size: 20px;
	cursor: pointer
}

.check.turnBoxCurrentFace2 .cancel {
	background-color: #444;
}

.check.turnBoxCurrentFace2 .send {
	background-color: #de0707;
}

.check.turnBoxCurrentFace2 .cancel:hover {
	background-color: #2b2b2b;
}

.check.turnBoxCurrentFace2 .send:hover {
	background-color: #ad0505;
}

.cancel {
	background-color: #2b2b2b;
}

.send {
	background-color: #ad0505;
}
</style>
<!--[if IE]>
		<script src="http://libs.useso.com/js/html5shiv/3.7/html5shiv.min.js"></script>
	<![endif]-->

</head>
<body>
	<form action="<c:url value='/Report.do' />" method="post">
		<div class="htmleaf-container">
			<header class="htmleaf-header">
				<h1>
					CONTACT FORM<span></span>
				</h1>
				<div class="htmleaf-links"></div>
				<div class="htmleaf-demo center"></div>
			</header>
			<div class="htmleaf-content">
				<div class="example contact-form">
					<div>
						<p class="turnBoxButton" style="font-size: 22.5px">CONTACT</p>
					</div>
					<div>
						<ul class="user-information">
							<li><span>No.</span></li>
							<li><span>MAIL</span></li>
						</ul>
						<textarea></textarea>
						<span class="check">
							<div>
								<p class="confirm-button turnBoxButton">CONFIRM</p>
							</div>
							<div>
								<p class="cancel turnBoxButton turnBoxButtonPrev">CANCEL</p>
								<p class="send turnBoxButton">
									<input type="submit" value="">SEND
								</p>
							</div>
						</span>
					</div>
					<div>
						<p class="turnBoxButton turnBoxButtonPrev"
							style="font-size: 22.5px">THANKS</p>
					</div>
				</div>
			</div>
		</div>
	</form>

	<script type="text/javascript">
		var width = 340;
		var duration = 450;
		var general_box = $(".example");
		var confirm_box = general_box.find(".check");

		general_box.turnBox({
			width : width,
			height : 87,
			even : 400,
			perspective : 3000,
			duration : duration,
			easing : "ease-in-out",
			type : "repeat"
		});

		confirm_box.turnBox({
			width : width * 0.9,
			height : 60,
			perspective : 3000,
			duration : 300,
			easing : "ease-in-out"
		});

		confirm_box.find(".send").turnBoxLink({
			box : ".contact-form",
			events : "click touchend"
		});

		$(".confirm-button").on(
				"click",
				function() {
					$(".contact-form input, .contact-form textarea").addClass(
							"lock").attr("disabled", "disabled");
				});

		$(".cancel").on(
				"click",
				function() {
					$(".contact-form input, .contact-form textarea")
							.removeClass("lock").removeAttr("disabled");
				});
		confirm_box.find(".send").on(
				"click touchend",
				function() {
					setTimeout(function() {
						confirm_box.turnBoxAnimate({
							animation : false
						});
						general_box.find("input").val("");
						general_box.find("textarea").val("");
						$(".contact-form input, .contact-form textarea")
								.removeClass("lock").removeAttr("disabled");
					}, duration);
				});
	</script>
</body>
</html>