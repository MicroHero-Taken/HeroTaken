<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
</head>
<style>
body {overflow:hidden;}
div {margin:2px;}
#A img {position: absolute;}
#B img {position: absolute;}
#C img {position: absolute;}
#D img {position: absolute;}
#E img {position: absolute;}
#F img {position: absolute;}
#G img {position: absolute;}
#H img {position: absolute;}
#I img {position: absolute;}

#login {background:white;width:15%; height:34%;position:fixed;top:38%;left:42%;border:5px solid red;padding:2px solid blue;z-index:7;}
#A {position:fixed;width:398px;height:590px;border:4px solid black;z-index:3;}
#B {position:fixed;width:825px;height:320px;border:4px solid black;top:605px;z-index:3; }
#C {position:fixed;width:450px;height:450px;border:4px;top:200px;left:390px;z-index:2; }/*斜的沒有框*/
#D {position:fixed;width:640px;height:480px;border:4px solid black;top:-5px;left:450px;z-index:1; }
#E {position:fixed;width:470px;height:400px;border:2px solid black;bottom:6px;right:5px;float:right;z-index:3;}
#F {position:fixed;width:760px;height:300px;border:4px solid black;top:5px;right:5px;float:right;z-index:1; }
#G {position:fixed;width:930px;height:420px;border:4px;top:255px;right:5px;float:right;z-index:2; }
#H {position:fixed;width:370px;height:370px;border:4px solid black;bottom:-5px;right:490px;float:right;z-index:3; }
#I {position:fixed;width:190px;height:250px;border:4px solid black;bottom:4px;right:872px;float:right; }

#signup {background:url(${pageContext.servletContext.contextPath}/Img/All_Might.png);position:fixed;width:500px;height:750px;top:-90%;left:37%;z-index:8;}
#close {background:url(${pageContext.servletContext.contextPath}/Img/x.png);position:absolute;width:100px;height:100px;top:0px;right:0px;float:right;z-index:8;}
#page {width:80%;border:3px solid black;top:15px;}
td {width:80%;font-size:27px;}
</style>

<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="../js/Login.js"></script>
<script type="text/javascript">
$(function(){
	$("#deco").click(function(){   
		$("#signup").animate({ top:'10%'}, 200 ,'swing');
	   });
	$("#close").click(function(){   
		$("#signup").animate({ top:'-90%'}, 200 ,'swing');
	   });
});
</script>
<body>
<!-- 移除放在session物件內的屬性物件 -->
<c:remove var="Login" scope="session" />
                                                                          
<div id="login">                                         
   <center>                                     
		<br><a href="https://accounts.google.com/o/oauth2/auth?response_type=code&client_id=226465592315-jnveboc4pda9qkp3kms665bu2n3rebp7.apps.googleusercontent.com&redirect_uri=http://127.0.0.1:8080/HeroJDBC/Oauth2callback&scope=https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fuserinfo.profile+https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fuserinfo.email"><img width="90%" height="10%" src="${pageContext.servletContext.contextPath}/Img/sign-in-with-google.jpg"></a>
<div style="font-size:25px">-----------or-----------</div>
	   Use your email address
	    <form action="<c:url value="/LoginServlet"/>" method="get" ><br>
			<input type="text"   name="email" value="${param.email}" placeholder="Email Address"><br>
			<font  color='red'    size='-1'>${error.email}</font><br>
			<input type="text"    name="password" value="${param.password}" placeholder="Password"><br>
			<font  color='red'    size='-1'>${error.password}</font><br>
			<input type="submit"  value="Sign in"><br><br>
			<img src="${pageContext.servletContext.contextPath}/Img/deco1.png" width="35%" height="10%" id="deco">
		</form>
	</center>
</div>
<div>
<div id="A"><img src="${pageContext.servletContext.contextPath}/Img/LOGIN/A.jpg" ></div>
<div id="B"><img src="${pageContext.servletContext.contextPath}/Img/LOGIN/B.jpg" ></div>
<div id="C"><img src="${pageContext.servletContext.contextPath}/Img/LOGIN/C.png" ></div>
<div id="D"><img src="${pageContext.servletContext.contextPath}/Img/LOGIN/D.jpg" ></div>
<div id="E"><img src="${pageContext.servletContext.contextPath}/Img/LOGIN/E.jpg" ></div>
<div id="F"><img src="${pageContext.servletContext.contextPath}/Img/LOGIN/F.jpg" ></div>
<div id="G"><img src="${pageContext.servletContext.contextPath}/Img/LOGIN/G.png" ></div>
<div id="H"><img src="${pageContext.servletContext.contextPath}/Img/LOGIN/H.jpg" ></div>
<div id="I"><img src="${pageContext.servletContext.contextPath}/Img/LOGIN/I.jpg" ></div>
</div>
<div id="signup">
<div id="close"></div>
<div id="page">
<form action="<c:url value="/register/Register.do" />" method="post">
		<table>
			<tr>
				<td>帳號 :</td>
				<td><input type="text" name="memberAccount"
					value="${param.email}"></td>
				<td>${error.email}</td></tr><tr>
				
				
				<td>密碼 :</td>
				<td><input type="text" name="password"
					value="${param.password}"></td>
				<td>${error.password}</td></tr><tr>
				
				
				<td>姓名:</td>
				<td><input type="text" name="memberName"
					value="${param.memberName}"></td>
				<td>${error.memberName}</td></tr><tr>
				
				
				<td>暱稱 :</td>
				<td><input type="text" name="nickName"
					value="${param.nickName}"></td>
				<td>${error.nickName}</td></tr><tr>
				
				
				<td>性別 :</td>
				<td><input type="text" name="gender" value="${param.gender}"></td>
				<td>${error.gender}</td></tr><tr>
				
				
			<td>身分證字號 :</td>
				<td><input type="text" name="id" value="${param.id}"></td>
				<td>${error.id}</td></tr><tr>
				
				
			<td>信箱 :</td>
				<td><input type="text" name="email" value="${param.email}"></td>
				<td>${error.email}</td></tr><tr>
				
				
				<td>電話號碼 :</td>
				<td><input type="text" name="phone" value="${param.phone}"></td>
				<td>${error.phone}</td></tr><tr>
				
				
				<td>出生日 :</td>
				<td><input type="text" name="birthday"
					value="${param.birthday}"></td>
				<td>${error.birthday}</td>
			</tr><tr><td>
				<input type="reset" value="clear">
				<input type="submit" value="register">
				</td>
			</tr>
		</table>
	</form>
	</div>
</div>

</body>
</html>