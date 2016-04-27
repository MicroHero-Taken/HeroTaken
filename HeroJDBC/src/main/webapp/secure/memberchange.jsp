<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<link rel="stylesheet" type="text/css" href="" />
<title>Taken</title>
</head>
<body>
<jsp:include page="../Top.jsp" flush="true" ></jsp:include><!--選單-->
	<h3>編輯會員資料</h3>
<div>
	<form action="<c:url value="/register/Register.do" />" method="post">
		<table>
		
				<tr>
				<td>信箱 :</td>
				<td>${user.email}</td>
				<td>${error.email}</td>
			</tr>
			
			<tr>
				<td>密碼 :</td>
				<td><input type="text" name="password"
					value="${user.password}"></td>
				<td>${error.password}</td>
			</tr>
		
			<tr>
				<td>性別 :</td>
				<td><input id="man" type="radio" checked="checked" name="gender" value="${user.gender}" />男<input id="woman" type="radio"  name="gender"/>女</td>
				<td>${error.gender}</td>
			</tr>
			<tr>
				<td>身分證字號 :</td>
				<td>${user.id}</td>
				<td>${error.id}</td>
			</tr>
		
			<tr>
				<td>電話號碼 :</td>
				<td><input type="text" name="phone" value="${user.phone}"></td>
				<td>${error.phone}</td>
			</tr>
			<tr>
				<td>出生日 :</td>
				<td>${user.birthday}</td>
				<td>${error.birthday}</td>
			</tr>
			<tr>
				<td>
				
				<input type="submit" value="Save">
				
				</td>
			
			</tr>
		</table>
	</form>
</div>
</body>
</html>