<%@page import="java.util.Date"%>
<%@page import="_05mission.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>aLLiNoNE</title>

</head>
<body>

	<!-- width="70%" height="95%"  style="border:5px solid black ;position:fixed;top:20px;left:15%;" z-index="1" -->
	<!-- css參考用 -->
	<!-- <div id="map" style="width:70%; height:880px;border:5px solid black ;margin-top:-330px; margin-left:547px"></div> -->
	<!-- 原程式 -->
	<div id="map"></div>
	<form action="<c:url value='/search.do'/>" method="get">
	<table id="testtt" style="height:900px">
		<thead>
			<tr>
				<th>發起人:</th>
				<th>任務:</th>
				<th>內容:</th>
				<th>人數要求:</th>
				<th>性別要求:</th>
				<th>執行時間:</th>
				<th>地點:</th>
				<th>結束時間:</th>
				<th>任務狀態:</th>
				<th>接收任務</th>

			</tr>
		</thead>
		<tbody>
				<tr>
					<td>${mission.memberName}</td>
					<td>${mission.missionTitle}</td>
					<td>${mission.missionDesc}</td>
					<td>${mission.missionPeople}</td>
					<td>${mission.missionGender}</td>
					<td>${mission.missionExcuteTime}</td>
					<td>${mission.missionArea}</td>
					<td>${mission.missionEnd}</td>
					<td>${mission.missionStatusNo}</td>
					<td><a href="">接任務</a></td>
				</tr>
				<tr>
					<td>${mission.memberName}</td>
					<td>${mission.missionTitle}</td>
					<td>${mission.missionDesc}</td>
					<td>${mission.missionPeople}</td>
					<td>${mission.missionGender}</td>
					<td>${mission.missionExcuteTime}</td>
					<td>${mission.missionArea}</td>
					<td>${mission.missionEnd}</td>
					<td>${mission.missionStatusNo}</td>
					<td></td>
			</tr>
			<tr>

			</tr>
		</tbody>
	</table>
	</form>
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