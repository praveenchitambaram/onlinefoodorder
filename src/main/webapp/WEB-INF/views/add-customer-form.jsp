<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registration</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
				<form action="add" method="post">
					<fieldset class="form-group">
						<label><i class="fas fa-file-signature"></i>&nbsp&nbsp
							Name :</label> <input type="text" class="form-control"
							name="customerName" placeholder="Enter the Name"
							required="required">
					</fieldset>

					<fieldset class="form-group">
						<label><i class="fas fa-file-signature"></i>&nbsp&nbspContact
							Number :</label> <input type="text" class="form-control"
							name="contactNumber" placeholder="Enter the Contact Number"
							required="required">
					</fieldset>

					<fieldset class="form-group">
						<label><i class="fa fa-envelope"></i>&nbsp&nbspEmail :</label> <input
							type="text" name="email" class="form-control"
							placeholder="Enter your Email" required="required">
					</fieldset>
					<fieldset class="form-group">
						<label><i class="fas fa-unlock-alt"></i>&nbsp&nbspPassword
							:</label> <input type="password" class="form-control" name="password"
							placeholder="Enter the Password" required="required">
					</fieldset>

					<button type="submit" class="btn btn-success">Sign up</button>

					<fieldset class="form-group">
						<label>Already have account :</label> <a
							href="/customer/customerloginpage"><input type="button"
							class="btn btn-success" value="Sign In"></a>
					</fieldset>
				</form>
			</div>
		</div>
	</div>
</body>
</html>