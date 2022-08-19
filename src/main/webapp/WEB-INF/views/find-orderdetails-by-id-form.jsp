<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find By Order Detail Id</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="findcustomerbyid">
				<div>
					<label for="orderId">Order Id</label>
					<div>
						<form:input path="orderId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="customerId">Customer Id</label>
					<div>
						<form:input path="customerId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="orderDate">Order Date</label>
					<div>
						<form:input path="orderDate" readonly="true" />
					</div>
				</div>
				<div>
					<label for="orderTime">Order Time</label>
					<div>
						<form:input path="orderTime" readonly="true" />
					</div>
				</div>
				<div>
					<label for="paymentType">Payment Type</label>
					<div>
						<form:input path="paymentType" readonly="true" />
					</div>
				</div>
				<div>
					<label for="orderAmount">Order Amount</label>
					<div>
						<form:input path="orderAmount" readonly="true" />
					</div>
				</div>
				<div>
					<label for="deliveryAmount">Delivery Amount</label>
					<div>
						<form:input path="deliveryAmount" readonly="true" />
					</div>
				</div>
				<div>
					<label for="netAmount">net Amount</label>
					<div>
						<form:input path="netAmount" readonly="true" />
					</div>
				</div>
				<div>
					<label for="deliveryDate">delivery Date</label>
					<div>
						<form:input path="deliveryDate" readonly="true" />
					</div>
				</div>
				<div>
					<label for="deliveryTime">Delivery Time</label>
					<div>
						<form:input path="deliveryTime" readonly="true" />
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>