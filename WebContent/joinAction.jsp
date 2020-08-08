<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="User.*,java.util.*"%>	
	<h1>Users List</h1>

	<%
	List<User> list = UserDao.getAllRecords();
	request.setAttribute("list", list);
	%>

	<table border="1" width="90%">
		<tr>
			<th>Id</th>
			<th>Password</th>
			<th>Name</th>
			<th>Email</th>
		</tr>
		<c:forEach items = "${list}" var= "u">
			<tr>
				<td>${u.getUserId()}</td>
				<td>${u.getUserPassword()}</td>
				<td>${u.getUserName()}</td>
				<td>${u.getUserEmail()}</td>
			</tr>
		</c:forEach>
	</table>
	<br/>
	<a href="NewFile.jsp">Add New User</a>

</body>
</html>
</body>
</html>