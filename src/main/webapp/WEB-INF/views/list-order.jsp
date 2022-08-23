<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
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
				<caption></caption>
				<tr>
				</tr>
				<thead>
					<tr>

						<th scope="row">Order Id</th>
						<th scope="row">Customer Id</th>
						<th scope="row">Food Name</th>
						<th scope="row">food Quantity</th>
						<th scope="row">Payment Type</th>
						<th scope="row">Food Price</th>
						<th scope="row">Total Amount</th>
						<th scope="row">Order Date</th>
						<th scope="row">Address</th>
						<th scope="row">Cancel Order</th>

					</tr>
				</thead>
				<tbody>
					<c:forEach var="order" items="${allorder}">
						<tr>
							<td>${order.orderId}</td>
							<td>${order.customerId}</td>
							<td>${order.foodName}</td>
							<td>${order.foodQuantity}</td>
							<td>${order.paymentType}</td>
							<td>${order.price}</td>
							<td>${order.totalAmount}</td>
							<td>${order.address}</td>
							<td>${order.orderDate}</td>
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