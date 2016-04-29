<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:if test="${not empty MemberBean}">
<table>
	<thead>
	<tr>
		<th>memberAccount</th>
		<th>password</th>
		<th>memberName</th>
		<th>gender</th>
		<th>nickName</th>
		<th>gender</th>
		<th>email</th>
		<th>Photo</th>
		<th>birthday</th>
		
	</tr>
	</thead>
	<tbody>
	
		
		
		
	<tr>
		<td>${MemberBean.memberAccount}</td>
		<td>${MemberBean.password}</td>
		<td>${MemberBean.memberName}</td>
		<td>${MemberBean.gender}</td>
		<td>${MemberBean.nickName}</td>
		<td>${MemberBean.gender}</td>
		<td>${MemberBean.email}</td>
		<td>${MemberBean.phone}</td>
		<td>${MemberBean.birthday}</td>
	
		<td></td>
	</tr>
	
	</tbody>
</table>
</c:if>

</body>
</html>