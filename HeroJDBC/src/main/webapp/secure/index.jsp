<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Taken</title>
</head>
<body>
<%--  <c:if test="${not empty MemberBean}">  --%>
 <form action="<c:url value="/LoginServlet"/>" method="get">
<table>

	<thead>
	<tr>
		<th>email</th>
		<th>password</th>
		<th>memberName</th>
		<th>family_name</th>
		<th>given_name</th>
		<th>gender</th>
		<th>phone</th>
		<th>birthday</th>
		
	</tr>
	</thead>
	<tbody>
	
		
		
		
	<tr>
		<td>${user.email}</td>
		<td>${user.password}</td>
		<td>${user.memberName}</td>
		<td>${user.family_name}</td>
		<td>${user.given_name}</td>
		<td>${user.gender}</td>
		<td>${user.phone}</td>
		<td>${user.birthday}</td>
	</tr>
	<tr>	
	<td align="right"><input type="submit" value="Login"></td>
	</tr>
	
	</tbody>
</table>
</form>
<%-- </c:if> --%>
 
</body>
</html>