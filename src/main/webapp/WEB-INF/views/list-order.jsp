<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Item Management Application</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: tomato">
			<div>
				<a href="" class="navbar-brand"> Item Management App </a>
			</div>
		</nav>
	</header>
	<br>

	<div class="row">
		<div class="container">
			<h3 class="text-center">List of Order</h3>
			<hr>
			<button type="submit" class="btn btn-success"
					onclick="history.back()">Go Back</button>
			<div class="container text-left"></div>
			<br>
			<table class="table table-bordered">
				<thead>
					<tr>

						<th>Order Id</th>
						<th>Customer Id</th>
						<th>Food Id</th>
						<th>food Quantity</th>
						<th>Payment Type</th>
						<th>Food Price</th>
						<th>Delivery Amount</th>
						<th>Total Amount</th>
						<th>Order Date</th>
						<th>Order Time</th>
						<th>Cancel Order</th>

					</tr>
				</thead>
				<tbody>
					<c:forEach var="order" items="${allorder}">
						<tr>
							<td>${order.orderId}</td>
							<td>${order.customerId}</td>
							<td>${order.foodId}</td>
							<td>${order.foodQuantity}</td>
							<td>${order.paymentType}</td>
							<td>${order.price}</td>
							<td>${order.deliveryAmount}</td>
							<td>${order.totalAmount}</td>
							<td>${order.orderDate}</td>
							<td>${order.orderTime}</td>
							<td><a href="/order/deleteorder?orderId=${order.orderId}">Cancel
									Orders</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>