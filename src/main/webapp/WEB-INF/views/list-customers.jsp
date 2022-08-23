<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
					<th scope="row">Customer Id</th>
					<th scope="row">Name</th>
					<th scope="row">Contact Number</th>
					<th scope="row">Email</th>

				</tr>
			</thead>
			<tbody>
				<c:forEach var="customer" items="${allcustomers}">
					<tr>
						<td>${customer.customerId}</td>
						<td>${customer.customerName}</td>
						<td>${customer.contactNumber}</td>
						<td>${customer.email}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>