<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registration</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: tomato">
			<div>
				<a href="" class="navbar-brand">Food Shop</a>
			</div>
		</nav>
	</header>
	<br>
	<br>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<form:form action="add" method="post" modelAttribute="addcustomer">
					<fieldset class="form-group">
						<legend></legend>
						<label><em class="fa fa-user"></em> Name :</label> <input
							type="text" class="form-control" name="customerName"
							placeholder="Enter the Name" required="required">
					</fieldset>

					<fieldset class="form-group">
						<legend></legend>
						<label><em class="fa fa-phone"></em>Contact Number :</label> <input
							type="text" class="form-control" name="contactNumber"
							pattern="[0-9]{10}" title="enter valid number"
							placeholder="Enter the Contact Number" required="required">
					</fieldset>

					<fieldset class="form-group">
						<legend></legend>
						<label><em class="fa fa-envelope"></em>Email :</label>
						<form:input type="text" path="email" class="form-control"
							pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\\.[a-z]{2,3}"
							title="enter valid email" placeholder="Enter your Email"
							required="required" />
					</fieldset>
					<fieldset class="form-group">
						<legend></legend>
						<label><em class="fas fa-unlock-alt"></em>Password :</label> <input
							type="password" class="form-control" name="password"
							placeholder="Enter the Password" required="required">
					</fieldset>

					<button type="submit" class="btn btn-success">Sign up</button>

					<fieldset class="form-group">
						<legend></legend>
						<label>Already have account :</label> <a
							href="/customer/customerloginpage"><input type="button"
							class="btn btn-success" value="Sign In"></a>
					</fieldset>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>