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
		<table>
			<thead>
				<tr>
					<th>Order Id</th>
					<th>Customer Id</th>
					<th>Order Date</th>
					<th>Order Time</th>
					<th>Payment Type</th>
					<th>Order Amount</th>
					<th>Delivery Amount</th>
					<th>Net Amount</th>
					<th>Dlivery Date</th>
					<th>DeliveryTime</th>

				</tr>
			</thead>
			<tbody>
				<c:forEach var="order" items="${allorder}">
					<tr>
						<td>${order.orderId}</td>
						<td>${order.custamerId}</td>
						<td>${order.orderDate}</td>
						<td>${order.orderTime}</td>
						<td>${order.paymentType}</td>
						<td>${order.orderAmount}</td>
						<td>${order.deliveryAmount}</td>
						<td>${order.netAmount}</td>
						<td>${order.deliveryDate}</td>
						<td>${order.deliveryTime}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>