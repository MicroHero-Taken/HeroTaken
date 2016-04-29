<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="_05mission.*"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
body {
	background-color: #808080;
}
</style>
<title>AccessMission</title>
<link
	href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.10.2/themes/hot-sneaks/jquery-ui.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="http://cdn.datatables.net/1.10.11/css/jquery.dataTables.min.css" />
<script type="text/javascript"
	src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-2.0.0.min.js"></script>
<script type="text/javascript"
	src="https://cdn.datatables.net/1.10.11/js/jquery.dataTables.min.js"></script>
<style>
    article,aside,figure,figcaption,footer,header,hgroup,menu,nav,section {display:block;}
    body {font: 70% "Trebuchet MS", sans-serif; margin: 50px;}
  </style>
  <script type="text/javascript">
	$(document).ready(function() {
		$("#testtt").DataTable({
			"pageLenght":5,
			"lengthMenu":[10 , 20, 25, 30 ]
		});
	});
</script>
</head>
<body>
<div class="htmleaf-header">
		<h1>
			<span>任務清單</span>
		</h1>
	</div>
	<form action="<c:url value="/AccessMission"/>" method="get">
		<table id="testtt">
		<thead>
			<tr>
				<th>任務No:</th>
				<th>任務:</th>
				<th>內容:</th>
				<th>發起人:</th>
				<th>人數要求:</th>
				<th>執行時間:</th>
				<th>地點:</th>
				<th>任務狀態:</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
				<c:forEach var="bean" items="${beans}" begin="1" end="20" step="1">
				<tr>
					<td>${bean.missionNo}</td>
					<td>${bean.missionTitle}</td>
					<td>${bean.missionDesc}</td>
					<td>${bean.given_name}</td>
					<td>${bean.missionPeople}</td>	
					<td>${bean.missionExcuteTime}</td>
					<td>${bean.missionArea}</td>
					<td>${bean.missionStatus}</td>
					<td><input type="submit" value="Access" onclick="onnn()"></td>
				</tr>
				</c:forEach>
		</tbody>
	</table>
	</form>
	<script language="JavaScript">
    $(document).ready(function(){ 
      $("#table1").dataTable();
      });
    function onnn(){
    	alert($("#hi").val());
    }
  </script>
</body>
</html>