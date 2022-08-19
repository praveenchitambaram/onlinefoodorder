<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>List Customer Orders Details</title>
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
	<div id="table root">
		<table>
			<caption></caption>
			<tr>
				<th></th>
			</tr>
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
				<c:forEach var="orderdetails" items="${orderdetailslist}">
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