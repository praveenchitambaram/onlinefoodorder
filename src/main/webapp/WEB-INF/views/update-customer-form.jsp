<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Customer</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="updatecustomer" method="post" modelAttribute="updatecustomer">
				<div>
					<label for="customerId">Customer Id</label>
					<div>
						<form:input path="customerId" />
					</div>
				</div>
				<form:errors path="customerId" cssClass="text-danger" />
				<div>
					<label for="customerName">customer Name</label>
					<div>
						<form:input path="customerName" />
					</div>
				</div>
				<form:errors path="customerName" cssClass="text-danger" />
				<div>
					<label for="contactNumber">Contact Number</label>
					<div>
						<form:input path="contactNumber" />
					</div>
				</div>
				<form:errors path="contactNumber" cssClass="text-danger" />
				<div>
					<label for="Address">Address</label>
					<div>
						<form:input path="Address" />
					</div>
				</div>
				<form:errors path="Address" cssClass="text-danger" />
				<div>
					<label for="email">Email</label>
					<div>
						<form:input path="email" />
					</div>
				</div>
				<form:errors path="email" cssClass="text-danger" />
				<div>
					<form:button>Update Customer</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>