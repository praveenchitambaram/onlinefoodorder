<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Food Shop</title>
<style type="text/css">
body {
	background-image: url("");
	height: 768px;
	width: 1366px;
	background-position: center top;
	background-repeat: no-repeat;
	background-size: cover;
	position: relative;
}

.container.col-md-20 {
	margin-left: 504px;
}
</style>
<link rel="stylesheet" href="w3.css" type="text/css">
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
				<a href="#" class="navbar-brand">Food Shop</a>
			</div>

			<ul class="navbar-nav">
			</ul>
		</nav>
	</header>
	<br>
	<br>
	<div>
		<fieldset style="width: 270px; float: center; background: white">

			<div class="container col-md-20">
				<div class="card">
					<div class="card-body">
						<form action="customerlogin" method="post">
							<fieldset class="form-group">
								<label><i class="fa fa-user"></i>&nbsp&nbspEmail :</label> <input
									type="text" class="form-control" name="email"
									placeholder="Enter your User Name" value="" required="required">
							</fieldset>

							<fieldset class="form-group">
								<label><i class="fas fa-unlock-alt"></i>&nbsp&nbspPassword
									:</label> <input type="password" class="form-control" name="password"
									placeholder="Enter the passowrd" value="" required="required">
							</fieldset>
							<button type="submit" class="btn btn-success">Sign In</button>
							<fieldset class="form-group">
								<label>Create an account :</label> <a
									href="/customer/addcustomerform"><input type="button"
									class="btn btn-success" value="Sign Up"></a>
							</fieldset>
						</form>
					</div>
				</div>
			</div>
		</fieldset>
	</div>
</body>
</html>
