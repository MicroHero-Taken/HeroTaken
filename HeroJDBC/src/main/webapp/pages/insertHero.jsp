<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- -------------------------------------------jQuery---------------------------------------------- -->
<script type="text/javascript" src="/HeroJDBC/js/jquery-2.2.1.min.js"></script>
<script src="/HeroJDBC/js/jquery.js"></script>
<!-- ------------------------------------------------------------------------------------------------ -->

<title>編輯Hero</title>
<script type="text/javascript">
// 顯示上傳圖
	$(function()
	{
		$("#imgInp1").change(function(){
			if (this.files && this.files[0]) {
				var reader = new FileReader();			
				reader.onload = function (e) {
					$('#blah1').attr('src', e.target.result);
				}
				reader.readAsDataURL(this.files[0]);
			}
		});
	}) ;
	$(function()
			{
				$("#imgInp2").change(function(){
					if (this.files && this.files[0]) {
						var reader = new FileReader();			
						reader.onload = function (e) {
							$('#blah2').attr('src', e.target.result);
						}				
						reader.readAsDataURL(this.files[0]);
					}
				});
			}) ;
	$(function()
			{
				$("#imgInp3").change(function(){
					if (this.files && this.files[0]) {
						var reader = new FileReader();	
						reader.onload = function (e) {
							$('#blah3').attr('src', e.target.result);
						}	
						reader.readAsDataURL(this.files[0]);
					}
				});
			}) ;
	$(function()
			{
				$("#imgInp4").change(function(){
					if (this.files && this.files[0]) {
						var reader = new FileReader();	
						reader.onload = function (e) {
							$('#blah4').attr('src', e.target.result);
						}	
						reader.readAsDataURL(this.files[0]);
					}
				});
			}) ;
	$(function()
			{
				$("#imgInp5").change(function(){
					if (this.files && this.files[0]) {
						var reader = new FileReader();	
						reader.onload = function (e) {
							$('#blah5').attr('src', e.target.result);
						}
						reader.readAsDataURL(this.files[0]);
					}
				});
			}) ;
</script>
</head>
<body>
	<center> 
		<h1>${ErrMsg.action}</h1>
		<form action="<c:url value="/InsertHero"/>" method="post" enctype="multipart/form-data">
		<table>
			<tr><td id="title">● 英雄編號:</td></tr>
			<tr><td><input type="text" id="heroNo" name="heroNo"  size=50%  value="${param.heroNo}"  /><br>
	                    <font color='red' size='-1'>${ErrMsg.errHeroNo}</font></td></tr>
			<tr><td id="title">● 英雄名稱:</td></tr>
			<tr><td><input type="text" id="heroName" name="heroName"  size=50%  value="${param.heroName}" /><br>
	                    <font color='red' size='-1'>${ErrMsg.errHeroName}</font></td></tr>
			<tr><td id="title">● 英雄價格:</td></tr>
			<tr><td><input type="text" id="heroPrice" name="heroPrice"  size=50%  value="${param.heroPrice}" /><br>
	                    <font color='red' size='-1'>${ErrMsg.errHeroPrice}</font></td></tr>
			<tr><td id="title">● 英雄SKIN1:</td></tr>
			<tr><td><input type="file" name="myfile1" id="imgInp1" size="30" style="width: 200px;"/>
						<img id="blah1" src="#"  width="80"/><br>
	                    <font color='red' size='-1'></font></td></tr>
			<tr><td id="title">● 英雄SKIN2:</td></tr>
			<tr><td><input type="file" name="myfile2" id="imgInp2" size="30" style="width: 200px;"/>
						<img id="blah2" src="#"  width="80"/></td></tr>
			<tr><td id="title">● 英雄SKIN3:</td></tr>
			<tr><td><input type="file" name="myfile3" id="imgInp3" size="30" style="width: 200px;"/>
						<img id="blah3" src="#"  width="80"/></td></tr>
			<tr><td id="title">● 英雄SKIN4:</td></tr>
			<tr><td><input type="file" name="myfile4" id="imgInp4" size="30" style="width: 200px;"/>
						<img id="blah4" src="#"  width="80"/></td></tr>
			<tr><td id="title">● 英雄SKIN5:</td></tr>
			<tr><td><input type="file" name="myfile5" id="imgInp5" size="30" style="width: 200px;"/>
						<img id="blah5" src="#"  width="80"/></td></tr>
		    
			
			<br>
			<tr>
				<td>
					<input type="submit" name="hero" value="Insert">
					<input type="submit" name="hero" value="Update">
					<input type="submit" name="hero" value="Delete">
				</td>
			</tr>

		</table>
		</form>
	</center>
</body>
</html>