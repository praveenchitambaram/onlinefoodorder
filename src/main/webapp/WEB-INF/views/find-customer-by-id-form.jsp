<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Post Order</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>

	<style>
body, div, ul, li, p {
	font-family: arial;
}

#header {
	height: 120px;
	display: block;
	background-color: #F5F5F5;
}

#header .logo {
	background-color: tomato;
}

#header .logo a {
	padding-left: 450px;
	color: black;
	text-decoration: none;
	font-size: 40px;
}
/** Navigation **/
#navigation {
	display: inline-block;
	list-style: none;
	line-height: 50px;
	margin: 0;
	padding-left: 20;
}

#navigation ul {
	display: inline-block;
	list-style: none;
	margin: 0;
	padding: 0;
}

#navigation li {
	float: left;
	width: 180px;
	text-align: right;
}

#navigation li a {
	color: #616161;
	font-size: 20px;
	text-decoration: none;
}

#navigation li a:hover {
	font-size: 20px;
	color: #212121;
}

#navigation li.active a {
	transition: 900ms;
	color: #fff;
	padding: 12px;
	background-color: transparent;
	font-size: 20px;
	border: 2px solid white;
	border-radius: 10px;
}
</style>
	<div id="header">
		<div>
			<div class="logo">
				<a href="/customer/homepage">Food Shop</a>
			</div>
		</div>
	</div>
	<div class="container col-md-100">
		<h4>User Details:</h4>
		<div class="card">

			<div class="card-body">
				<form:form action="" method="post" modelAttribute="findcustomerbyid">
					<fieldset class="form-group">
						<legend></legend>
						<label><em class="fa fa-user"></em>Enter Customer Id :</label>
						<form:input type="text" class="form-control" path="customerId"
							readonly="true" />

					</fieldset>

					<fieldset class="form-group">
						<legend></legend>
						<label><em class="fa fa-phone"></em>Enter Customer Name :</label>
						<form:input type="text" class="form-control" path="customerName"
							readonly="true" />

					</fieldset>


					<fieldset class="form-group">
						<legend></legend>
						<label><em class="fa fa-envelope"></em>Enter Contact
							Number :</label>
						<form:input type="text" class="form-control" path="contactNumber"
							readonly="true" />
					</fieldset>

					<fieldset class="form-group">
						<legend></legend>
						<label><em class="fa fa-envelope"></em>Enter Email :</label>
						<form:input type="text" class="form-control" path="email"
							readonly="true" />
					</fieldset>
				</form:form>
				<button type="submit" class="btn btn-success"
					onclick="history.back()">Go Back</button>
			</div>

		</div>
	</div>
</body>
</html>