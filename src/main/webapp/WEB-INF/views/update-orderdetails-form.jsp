<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Order Details</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="updateorderdetail" method="post"
				modelAttribute="updateorderdetails">
				<div>
					<label for="orderId">Order Id</label>
					<div>
						<form:input path="orderId" />
					</div>
				</div>
				<div>
					<label for="customerId">Customer Id</label>
					<div>
						<form:input path="customerId" />
					</div>
				</div>
				<div>
					<label for="orderDate">Order Date</label>
					<div>
						<form:input path="orderDate" />
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
						<form:input path="paymentType" />
					</div>
				</div>
				<form:errors path="paymentType" cssClass="text-danger" />
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
				<form:errors path="deliveryAmount" cssClass="text-danger" />
				<div>
					<label for="netAmount">net Amount</label>
					<div>
						<form:input path="netAmount" />
					</div>
				</div>
				<form:errors path="netAmount" cssClass="text-danger" />
				<div>
					<label for="deliveryDate">delivery Date</label>
					<div>
						<form:input path="deliveryDate" />
					</div>
				</div>
				<form:errors path="deliveryDate" cssClass="text-danger" />
				<div>
					<label for="deliveryTime">Delivery Time</label>
					<div>
						<form:input path="deliveryTime" />
					</div>
				</div>
				<div>
					<form:button>Update Order Details</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>