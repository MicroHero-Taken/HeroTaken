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
body {overflow:hidden;font-weight:bold;font-size:20px;}
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

#signup {background:url(${pageContext.servletContext.contextPath}/Img/All_Might.jpg);position:fixed;width:500px;height:750px;top:5%;left:37%;z-index:-1;border:3px solid black;}
#close {background:url(${pageContext.servletContext.contextPath}/Img/x.png);position:absolute;width:100px;height:100px;top:0px;right:0px;float:right;z-index:8;}


</style>

<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="../js/Login.js"></script>
<script type="text/javascript">
$(function(){
	$("#deco").click(function(){   
	document.getElementById("signup").style.zIndex="8";
	   });
	$("#close").click(function(){   
		document.getElementById("signup").style.zIndex="-1"; 
	   });
});
</script>
<script>
window.onload="up()"
$(function up(){
var x=window.location.toString(); 
if(x=="http://localhost:8080/HeroJDBC/register/Register.do"){ 
	document.getElementById("signup").style.zIndex="8";}     
	});
</script>
<body>                                                                          
<div id="login">                                         
   <center>                                     
		<br><a href="https://accounts.google.com/o/oauth2/auth?response_type=code&client_id=741121189982-cn68b2b4e01pshdlr0pr782sref0ucia.apps.googleusercontent.com&redirect_uri=http://eeit84taken.cloudapp.net:8080/HeroJDBC/Oauth2callback&scope=https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fuserinfo.profile+https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fuserinfo.email"><img width="90%" height="10%" src="${pageContext.servletContext.contextPath}/Img/sign-in-with-google.jpg"></a>
<div style="font-size:25px">─────or─────</div>
	   	Use your email address
	    <form action="<c:url value="/LoginServlet"/>" method="get" ><br>
			<input type="text"   name="email" value="${param.email}" placeholder="Email Address"><br>
			<font  color='red'    size='-1'>${error.email}</font><br>
			<input type="password"    name="password" value="${param.password}" placeholder="Password"><br>
			<font  color='red'    size='-1'>${error.password}</font><br>
			<input type="submit"  value="Sign in"><br><br>
			<img href="#" src="${pageContext.servletContext.contextPath}/Img/deco1.png" width="35%" height="10%" id="deco">
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
<center>
		<div>
		       <h1>Sign Up</h1>
			   <td>信箱 :<br><input type="text" name="email" value="${param.email}"></td><br>
			    <td><font color='red'>${error.email}</font></td><br>
			    <td>密碼 :<br><input type="password" name="password" value="${param.password}"></td><br>
				<td><font color='red'>${error.password}</font></td><br>
				<td>會員名稱:<br><input type="text" name="memberName"value="${param.memberName}"></td><br>
				<td><font color='red'>${error.memberName}</font></td><br>
				<td>姓氏:<br><input type="text" name="family_name"value="${param.family_name}"></td><br>
				<td><font color='red'>${error.family_name}</font></td><br>
				<td>姓名:<br><input type="text" name="given_name"value="${param.given_name}"></td><br>
				<td><font color='red'>${error.given_name}</font></td><br>
				<td>性別 :<br><input type="text" name="gender" value="${param.gender}"></td><br>
				<td><font color='red'>${error.gender}</font></td><br>
				<td>身分證字號 :<br><input type="text" name="id" value="${param.id}"></td><br>
				<td><font color='red'>${error.id}</font></td><br>
				<td>電話號碼 :<br><input type="text" name="phone" value="${param.phone}"></td><br>
				<td><font color='red'>${error.phone}</font></td><br>
				<td>出生日 :<br><input type="text" name="birthday"value="${param.birthday}"></td><br>
				<td><font color='red'>${error.birthday}</font></td>
			    <br>
				<input type="reset" value="clear">
				<input type="submit" value="register">
		 </div>
		 </center>
	</form>
	</div>
</div>

</body>
</html>
