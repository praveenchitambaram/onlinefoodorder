<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>List Customer Orders</title>
</head>
<body>
	<div id="root">
		<div id="getcus">
			<form:form action="updatecus" method="post" modelAttribute="getcus">
				<div>
					<label for="customerId">Customer Id</label>
					<div>
						<form:input path="customerId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="customerName">customer Name</label>
					<div>
						<form:input path="customerName" />
					</div>
				</div>
				<div>
					<label for="contactNumber">Contact Number</label>
					<div>
						<form:input path="contactNumber" />
					</div>
				</div>
				<div>
					<label for="Address">Address</label>
					<div>
						<form:input path="Address" />
					</div>
				</div>
				<div>
					<label for="email">Email</label>
					<div>
						<form:input path="email" />
					</div>
				</div>
			</form:form>
		</div>
	</div>
	<div id="orderlist">
		<table>
			<caption></caption>
			<tr>
				<th scope="row" ></th>
			</tr>
			<thead>
				<tr>
					<th scope="row">Order Id</th>
					<th scope="row">Customer Id</th>
					<th scope="row">Food Id</th>
					<th scope="row">Food Quantity</th>
					<th scope="row">Payment Type</th>
					<th scope="row">Price</th>
					<th scope="row">Total Amount</th>
					<th scope="row">Order Date</th>
					<th scope="row">Order Time</th>

				</tr>
			</thead>
			<tbody>
				<c:forEach var="order" items="${orderlist}">
					<tr>
						<td>${order.orderId}</td>
						<td>${order.customerId}</td>
						<td>${order.foodId}</td>
						<td>${order.foodQuantity}</td>
						<td>${order.paymentType}</td>
						<td>${order.price}</td>
						<td>${order.totalAmount}</td>
						<td>${order.orderDate}</td>
						<td>${order.orderTime}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>