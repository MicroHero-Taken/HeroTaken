<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<link rel="stylesheet" type="text/css" href="../css/default.css" />
<link rel="stylesheet" type="text/css" href="../css/demo.css" />
<link href="../css/css.css" rel="stylesheet" type="text/css">
<link href="../css/progression.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="../css/start-demo.css" />
<link rel='stylesheet'
	href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css'>
<style>

<div class="htmleaf-container">
		<header class="htmleaf-header">
			<h1>CONTACT FORM<span></span></h1>
			<div class="htmleaf-links">

			</div>
#demo5 {
	position: fixed;
	bottom: 10PX;
	right: -10%;
	width: 10px;
}

#myform {
	width: 500px;
	margin: 0 auto;
}

label {
	display: block;
	width: 180%;

}

input, textarea {
	width: 100%;
}
</style>
<title>Search</title>

</head>
<body>

	
<h1>執行中的任務</h1>
<table id="testtt">
		<thead>
			<tr>
				<th>任務No:</th>
				<th>發起人:</th>
				<th>任務:</th>
				<th>內容:</th>
				<th>人數要求:</th>
				<th>執行時間:</th>
				<th>地點:</th>
				<th>任務狀態:</th> 
				<th>Rate:</th>
			</tr>
		</thead>
		<tbody>
				<c:forEach var="mission2" items="${mission2}">
				<tr>
					<td>${mission2.missionNo}</td>
					<td>${mission2.given_name }</td>
					<td>${mission2.missionTitle }</td>
					<td>${mission2.missionDesc }</td>
					<td>${mission2.missionPeople }</td>	
					<td>${mission2.missionExcuteTime }</td>
					<td>${mission2.missionArea }</td>
					<td>${mission2.missionStatus}</td>
					<td id="demo5" class="demo" style="display:block; margin:10px; padding:10px; "><span id="rate" class="ratyli" data-rate="" data-ratemax="5"></span></td>
				</tr>
				</c:forEach>			
		</tbody>
</table>


<hr>
<h1>已完成的任務</h1>
<table id="testtt">
		<thead>
			<tr>
				<th>任務No:</th>
				<th>發起人:</th>
				<th>任務:</th>
				<th>內容:</th>
				<th>人數要求:</th>
				<th>執行時間:</th>
				<th>地點:</th>
				<th>任務狀態:</th> 
			</tr>
		</thead>
		<tbody>
				<c:forEach var="mission3" items="${mission3}">
				<tr>
					<td>${mission3.missionNo}</td>
					<td>${mission3.given_name }</td>
					<td>${mission3.missionTitle }</td>
					<td>${mission3.missionDesc }</td>
					<td>${mission3.missionPeople }</td>	
					<td>${mission3.missionExcuteTime }</td>
					<td>${mission3.missionArea }</td>
					<td>${mission3.missionStatus}</td>
					<td></td>
				</tr>
				</c:forEach>	
		</tbody>
</table>

	
<script type="text/javascript"
	src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-2.0.0.min.js"></script>
<script type="text/javascript"
	src="https://cdn.datatables.net/1.10.11/js/jquery.dataTables.min.js"></script>

	<script type="text/javascript"></script>
	<script>
		window.jQuery=document.write('<script src="../js/jquery-2.1.1.min.js"><\/script>')
	</script>
	<script src="../js/jquery.ratyli.js"></script>
	<script src="../js/demo.js"></script>

	<script type="text/javascript">
	$("#rate").click(function(){
		var rate = $("#rate").attr('data-rate');
		console.log(rate);
	});
	</script>
	<a href='<c:url value="/index1.jsp" />'>回首頁</a>
</body>
</html>