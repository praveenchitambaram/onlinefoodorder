<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE >
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Admin login page</title>
<script>
.error{
	color:red 
	}
</script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: OrangeRed">
			<div>
				<a href="" class="navbar-brand">Food Shop</a>
			</div>
		</nav>
	</header>
	<br>
	<br>
	<div class="container col-md-20">
		<h4>Admin Login:</h4>
		<div class="card">
			<div class="card-body">
				<form action="userlogin" method="post">
					<fieldset class="form-group">
						<legend></legend>
						<label><em class="fa fa-user"></em> Email :</label> <input
							type="email" class="form-control" name="email"
							placeholder="Enter your User Email" value="" required="required">
					</fieldset>

					<fieldset class="form-group">
						<legend></legend>
						<label><em class="fas fa-unlock-alt"></em>Password :</label> <input
							type="password" class="form-control" name="userPassword"
							placeholder="Enter the passowrd" value="" required="required">
					</fieldset>
					<button type="submit" class="btn btn-success">Sign In</button>
					<div class="error">${result}</div>
					<button type="submit" class="btn btn-success"
						onclick="history.back()">Go Back</button>
				</form>
			</div>
		</div>
	</div>
</body>
</body>
</html>