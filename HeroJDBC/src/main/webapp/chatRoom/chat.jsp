<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ChatRoom</title>
<script type="text/javascript">
var websocket = new WebSocket("ws://localhost:8080/HeroJDBC/chatroomServerEndpoint");
	websocket.onmessage = function processMessage(message){
		var jsonData = JSON.parse(message.data);
		if(jsonData.message != null)messageTextArea.value += jsonData.message + "\\n" ;
	}
	function sendMessage(){
		websocket.send(messageText.value);
		messageText.value = "" ;
	}
</script>
</head>
<body>
	<div>
	<mark>UserName: ${username } </mark><br>
	<textarea id="messageTextArea" readonly="readonly" rows="12" cols="26"></textarea>
	<input 	type="text" id="messageText" size="19"   onkeydown = "if (event.keyCode == 13) document.getElementById('btn').click()"  />
	<input	type="button" id="btn" value="Send" onclick="sendMessage()"  />
	</div>
	
</body>
</html>