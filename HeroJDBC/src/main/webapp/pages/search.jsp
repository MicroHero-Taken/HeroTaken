<%@page import="_05mission.MissionMemDAO_JDBC"%>
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

<title>aLLiNoNE</title>
   <link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.10.2/themes/hot-sneaks/jquery-ui.css" rel="stylesheet">
  <link href="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/css/jquery.dataTables.css" rel="stylesheet">
  <script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-2.0.0.min.js"></script>
  <script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.10.2/jquery-ui.min.js"></script>
  <script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/jquery.dataTables.min.js"></script>
  <style>
    article,aside,figure,figcaption,footer,header,hgroup,menu,nav,section {display:block;}
    body {font: 70% "Trebuchet MS", sans-serif; margin: 50px;}
  </style>
</head>
<body>
	<form action="<c:url value="/missionMem.do"/>" method="get">
	<table>
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
			</tr>
		</thead>
		<tbody>
				<c:forEach var="bean" items="${beans}">
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
				<td><input type="submit" value="submit"></td>
		</tbody>
	</table>
	</form>
	<script language="JavaScript">
    $(document).ready(function(){ 
      $("#table1").dataTable();
      });
  </script>
</body>
</html>