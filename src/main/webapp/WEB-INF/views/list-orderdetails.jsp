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
			<caption></caption>
			<tr>
			</tr>
			<thead>
				<tr>
					<th scope="row">Order Id</th>
					<th scope="row">customer Id</th>
					<th scope="row">Order Date</th>
					<th scope="row">Order Time</th>
					<th scope="row">payment Type</th>
					<th scope="row">order Amount</th>
					<th scope="row">delivery Amount</th>
					<th scope="row">net Amount</th>
					<th scope="row">delivery Date</th>
					<th scope="row">delivery Date</th>
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