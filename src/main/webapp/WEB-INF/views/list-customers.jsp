<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%> --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer List</title>
</head>
<body>
	<div id="table root">
		<table>
			<thead>
				<tr>
					<th>Customer Id</th>
					<th>Name</th>
					<th>Contact Number</th>
					<th>Address</th>
					<th>Account Number</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="cus" items="${allcustomers}">
					<tr>
						<td>${cus.cust_id}</td>
						<td>${cus.cust_name}</td>
						<td>${cus.contact_num}</td>
						<td>${cus.address}</td>
						<td>${cus.acc_no}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>