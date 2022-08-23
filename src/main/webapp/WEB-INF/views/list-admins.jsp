<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%> --%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Customer List</title>
</head>
<body>
	<div id="table root">
		<table>
			<caption></caption>
			<tr>
				<th scope="row"></th>
			</tr>
			<thead>
				<tr>
					<th scope="row">User Id</th>
					<th scope="row">User Name</th>
					<th scope="row">Email</th>
					<th scope="row">UserPassword</th>

				</tr>
			</thead>
			<tbody>
				<c:forEach var="admin" items="${alladmins}">
					<tr>
						<td>${admin.userId}</td>
						<td>${admin.userName}</td>
						<td>${admin.email}</td>
						<td>${admin.userPassword}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>