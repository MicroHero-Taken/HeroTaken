<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//Dtd HTML 4.01 tdansitional//EN" "http://www.w3.org/td/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Mission Display</title>
<style type="text/css">

	.body{
	    position:absolute;
        background-repeat:no-repeat;
        width:52%;
        height:60%;
        background:url(${pageContext.request.contextPath}/Img/wood.jpg);
        left:16%;
        top:20%;
    }
    .chat {
          position:absolute;
          right:10%;
          bottom:20%;
          border:2px;
           }
    body{
    background:url(${pageContext.request.contextPath}/Img/photo.jpg) ;
    }
    td {font-size:x-large;
         font-weight:bold;
         color:white; 
       }
    .xu3 {
         color:#660033;
         font-weight:bold;
         }
</style>
<script type="text/javascript">
	var websocket = new WebSocket("ws://eeit84taken.cloudapp.net:8080/HeroJDBC/chatroomServerEndpoint");
		websocket.onmessage = function processMessage(message){
			var jsonData = JSON.parse(message.data);
			if(jsonData.message != null)messageTextArea.value += jsonData.message + "\n" ;
		}
		function sendMessage(){
			websocket.send(messageText.value);
			messageText.value = "" ;
		}
</script>
</head>
<body >
<div class="body">
<table   width="100.3%"   height="101%" border="2" align="center" cellpadding="2" cellspacing="2" bordercolorlight="#FFFFFF" bordercolordark="#330033">
	<tr height='36'>
       <td width="120" align="left" >任務標題:</td>
       <td class="xu3" colspan="3" align="center">${mission.missionTitle}</td>
    </tr>
    <tr height='36'>
       <td width="120" align="left" >任務描述:</td>
       <td class="xu3" colspan="3" align="center">${mission.missionDesc}</td>
    </tr>
    <tr height='36'>
       <td width="120" align="left" >任務人數:</td>
       <td class="xu3" colspan="3" align="center">${mission.missionPeople}</td>
    </tr>
    <tr height='36'>
       <td width="120" align="left" >任務地區:</td>
       <td class="xu3" colspan="3" align="center">${mission.missionArea}</td>
    </tr>
    <tr height='36'>
       <td width="120" align="left" >任務地址:</td>
       <td class="xu3" colspan="3" align="center">${mission.address}</td>
    </tr>
    <tr height='36'>
       <td width="120" align="left" >任務執行時間:</td>
       <td class="xu3" colspan="3" align="center">${mission.missionExcuteTime}</td>
    </tr>
    <tr height='36'>
       <td width="120" align="left" >任務報酬:</td>
       <th align="left" style="color:gold;font-size:large;">Coin: ${missionReward.rewardCoin}${mission.rewardCoin} $</th>
       <th>
       		<img width="100px" src="${pageContext.request.contextPath}/photo.view?missionNo=${missionNo.missionNo}${mission.missionNo}">
       </th>    
    </tr>
</table>
</div>
<div>
	<mark>UserName: ${username} </mark><br>
	<textarea id="messageTextArea" readonly="readonly" rows="12" cols="26"></textarea><br>
	<input 	type="text" id="messageText" size="19"   onkeydown = "if (event.keyCode == 13) document.getElementById('btn').click()"  />
	<input	type="button" id="btn" value="Send" onclick="sendMessage()"  />
</div>
</body>
</html>
