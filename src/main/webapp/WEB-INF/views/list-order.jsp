<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Orders</title>
</head>
<body>
	<div id="table root">
		<table border="2" width="100%" cellpadding="2">
			<thead>
				<tr>
					<th>Order Id</th>
					<th>Customer Id</th>
					<th>Food Id</th>
					<th>food Quantity</th>
					<th>Payment Type</th>
					<th>Food Price</th>
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
</body>
</html>