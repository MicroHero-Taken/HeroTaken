<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Mission Display</title>

</head>
<body >
<table   width="680" border="2" align="center" cellpadding="2" cellspacing="2" bordercolorlight="#FFFFFF" bordercolordark="#330033">
	<tr height='36'>
       <td width="120" align="right" >任務標題:</td>
       <td colspan="3" align="center">${mission.missionTitle}</td>
    </tr>
    <tr height='36'>
       <td width="120" align="right" >任務描述:</td>
       <td colspan="3" align="center">${mission.missionDesc}</td>
    </tr>
    <tr height='36'>
       <td width="120" align="right" >任務人數:</td>
       <td colspan="3" align="center">${mission.missionPeople}</td>
    </tr>
    <tr height='36'>
       <td width="120" align="right" >任務地區:</td>
       <td colspan="3" align="center">${mission.missionArea}</td>
    </tr>
    <tr height='36'>
       <td width="120" align="right" >任務地址:</td>
       <td colspan="3" align="center">${mission.address}</td>
    </tr>
    <tr height='36'>
       <td width="120" align="right" >任務執行時間:</td>
       <td colspan="3" align="center">${mission.missionExcuteTime}</td>
    </tr>
    <tr >
       <td width="120" align="right" >任務報酬:</td>
       <th align="center">Coin: ${missionReward.rewardCoin} $</th>
       <th><img width="100px"
				src="${pageContext.request.contextPath}/photo.view?missionNo=${missionNo.missionNo}">
       </th>    
    </tr>
</table>
</body>
</html>