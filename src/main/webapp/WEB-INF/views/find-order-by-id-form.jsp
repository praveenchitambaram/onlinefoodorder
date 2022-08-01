<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
						<form:input path="orderId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="custamerId">Custamer Id</label>
					<div>
						<form:input path="custamerId" readonly="true" />
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
						<form:input path="orderTime" />
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
						<form:input path="orderAmount" />
					</div>
				</div>
				<div>
					<label for="deliveryAmount">Delivery Amount</label>
					<div>
						<form:input path="deliveryAmount" />
					</div>
				</div>
				<div>
					<label for="netAmount">Net Amount</label>
					<div>
						<form:input path="netAmount" />
					</div>
				</div>
				<div>
					<label for="deliveryDate">Delivery Date</label>
					<div>
						<form:input path="deliveryDate" />
					</div>
				</div>
				<div>
					<label for="deliveryTime">Delivery Time</label>
					<div>
						<form:input path="deliveryTime" />
					</div>
			</form:form>
		</div>
	</div>
</body>
</html>