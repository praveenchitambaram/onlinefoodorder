<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find By Customer Id</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="findcustomerbyid">
				<div>
					<label for="customerId">Customer Id</label>
					<div>
						<form:input path="customerId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="customerName">customer Name</label>
					<div>
						<form:input path="customerName" readonly="true" />
					</div>
				</div>
				<div>
					<label for="contactNumber">Contact Number</label>
					<div>
						<form:input path="contactNumber" readonly="true" />
					</div>
				</div>
				<div>
					<label for="Address">Address</label>
					<div>
						<form:input path="Address" />
					</div>
				</div>
				<div>
					<label for="accountNumber">Accound Number</label>
					<div>
						<form:input path="accountNumber" readonly="true" />
					</div>
			</form:form>
		</div>
	</div>
</body>
</html>