<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Details</title>
</head>
<body>
<div id="table root">
		<table>
			<thead>
				<tr>
					<th>Order Id</th>
					<th>Food Id</th>
					<th>Food Quantity</th>
					<th>Price</th>
					<th>GST</th>
					<th>Total Amount</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="orderDetails" items="${allorderdetails}">
					<tr>
						<td>${orderDetails.orderId}</td>
						<td>${orderDetails.foodId}</td>
						<td>${orderDetails.foodQuantity}</td>
						<td>${orderDetails.price}</td>
						<td>${orderDetails.gst}</td>
						<td>${orderDetails.orderId}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>