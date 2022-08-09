<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find By Order Id</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="findorderbyid">
				<div>
					<label for="orderId">Order Id</label>
					<div>
						<form:input path="orderId" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="customerId">customer Id</label>
					<div>
						<form:input path="customerId" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="foodId">Food Id </label>
					<div>
						<form:input path="foodId" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="foodQuantity">Food Quantity </label>
					<div>
						<form:input path="foodQuantity" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="paymentType">Payment Type</label>
					<div>
						<form:input path="paymentType" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="price">Price</label>
					<div>
						<form:input path="price" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="totalAmount">Total Amount</label>
					<div>
						<form:input path="totalAmount" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="orderDate">Order Date</label>
					<div>
						<form:input path="orderDate" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="orderTime">Order Time</label>
					<div>
						<form:input path="orderTime" readonly="true"/>
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>