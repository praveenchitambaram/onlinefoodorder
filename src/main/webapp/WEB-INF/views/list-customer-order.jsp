<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
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
			<thead>
				<tr>
					<th>Order Id</th>
					<th>Customer Id</th>
					<th>Food Id</th>
					<th>Food Quantity</th>
					<th>Payment Type</th>
					<th>Price</th>
					<th>Total Amount</th>
					<th>Order Date</th>
					<th>Order Time</th>

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