<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find By Order Detail Id</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="findcustomerbyid">
				<div>
					<label for="orderId">order Id</label>
					<div>
						<form:input path="orderId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="foodId">Food Id</label>
					<div>
						<form:input path="foodId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="foodQuantity">Food Quantity</label>
					<div>
						<form:input path="foodQuantity" readonly="true" />
					</div>
				</div>
				<div>
					<label for="price">Price</label>
					<div>
						<form:input path="price" />
					</div>
				</div>
				<div>
					<label for="gst">gst</label>
					<div>
						<form:input path="gst" />
					</div>
				</div>
				<div>
					<label for="totalAmount">Total Amount</label>
					<div>
						<form:input path="totalAmount" />
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>