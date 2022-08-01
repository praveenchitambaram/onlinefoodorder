<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Order Details</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="add" method="post" modelAttribute="addorderdetails">
				<div>
					<label for="orderId">Order Id</label>
					<div>
						<form:input path="orderId" />
					</div>
				</div>
				<div>
					<label for="foodId">Food Id</label>
					<div>
						<form:input path="foodId" />
					</div>
				</div>
				<div>
					<label for="foodQuantity">Food Quantity</label>
					<div>
						<form:input path="foodQuantity" />
					</div>
				</div>
				<div>
					<label for="Price">Price</label>
					<div>
						<form:input path="Price" />
					</div>
				</div>
				<div>
					<label for="gst">DST</label>
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
				<div>
					<form:button>Add New</form:button>
				</div>
			</form:form>
		</div>
	</div>
	</div>
</body>
</html>