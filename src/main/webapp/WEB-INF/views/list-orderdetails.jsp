<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
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
					<th>customer Id</th>
					<th>Order Date</th>
					<th>Order Time</th>
					<th>payment Type</th>
					<th>order Amount</th>
					<th>delivery Amount</th>
					<th>net Amount</th>
					<th>delivery Date</th>
					<th>delivery Date</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="orderdetails" items="${allorderdetails}">
					<tr>
						<td>${orderdetails.orderId}</td>
						<td>${orderdetails.customerId}</td>
						<td>${orderdetails.orderDate}</td>
						<td>${orderdetails.orderTime}</td>
						<td>${orderdetails.paymentType}</td>
						<td>${orderdetails.orderAmount}</td>
						<td>${orderdetails.deliveryAmount}</td>
						<td>${orderdetails.netAmount}</td>
						<td>${orderdetails.deliveryDate}</td>
						<td>${orderdetails.deliveryTime}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>