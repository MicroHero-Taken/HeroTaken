<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<link rel="stylesheet" type="text/css" href="" />
<title>Sign up</title>
</head>
<body>

	<form action="<c:url value="/register/Register.do" />" method="post">
		<table>
		
			<tr>
				<td>信箱 :</td>
				<td><input type="text" name="email" 
				value="${param.email}"></td>
				<td><font color='red' size='-1'>${error.email}</font></td>
			</tr>
			<tr>
				<td>密碼 :</td>
				<td><input type="password" name="password"
					value="${param.password}"></td>
				<td><font color='red' size='-1'>${error.password}</font></td>
			</tr>
			<tr>
				<td>會員名稱:</td>
				<td><input type="text" name="memberName"
					value="${param.memberName}"></td>
				<td><font color='red' size='-1'>${error.memberName}</font></td>
			</tr>
			<tr>
				<td>姓氏:</td>
				<td><input type="text" name="family_name"
					value="${param.family_name}"></td>
				<td><font color='red' size='-1'>${error.family_name}</font></td>
			</tr>
			<tr>
				<td>姓名:</td>
				<td><input type="text" name="given_name"
					value="${param.given_name}"></td>
				<td><font color='red' size='-1'>${error.given_name}</font></td>
			</tr>
			<tr>
				<td>性別 :</td>
				<td><input id="man" type="radio" checked="checked" name="gender" />男<input id="woman" type="radio"  name="gender"/>女</td>
				<td><font color='red' size='-1'>${error.gender}</font></td>
				
			</tr>
			<tr>
				<td>身分證字號 :</td>
				<td><input type="text" name="id" value="${param.id}"></td>
				<td><font color='red' size='-1'>${error.id}</font></td>
			</tr>
		
			<tr>
				<td>電話號碼 :</td>
				<td><input type="text" name="phone" value="${param.phone}"></td>
				<td><font color='red' size='-1'>${error.phone}</font></td>
			</tr>
			<tr>
				<td>出生日 :</td>
				<td><input type="text" name="birthday"
					value="${param.birthday}"></td>
				<td><font color='red' size='-1'>${error.birthday}</font></td>
			</tr>
			<tr>
				<td>
				<input type="reset" value="clear">
				<input type="submit" value="register">
				</td>
			
			</tr>
		</table>
	</form>

</body>
</html>