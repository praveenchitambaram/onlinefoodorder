<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
				<a href="/order/list">Food Shop</a>
			</div>
			<h1 style="">
				Thank you for making Order.....<br> It will delivered to you
				within next 30 minutes...
			</h1>
		</div>
	</div>
	<div class="container col-md-100">
		<br> <br>
		<h4>Your Order:</h4>
		<div class="card">

			<div class="card-body">
				<form:form action="" method="post" modelAttribute="findorderbyid">
					<fieldset class="form-group">
						<legend></legend>
						<label><em class="fa fa-user"></em>Enter Order Id :</label>
						<form:input type="text" class="form-control" path="orderId"
							readonly="true" />

					</fieldset>
					<fieldset class="form-group">
						<legend></legend>
						<label><em class="fa fa-user"></em>Enter Customer Id :</label>
						<form:input type="text" class="form-control" path="customerId"
							readonly="true" />

					</fieldset>

					<fieldset class="form-group">
						<legend></legend>
						<label><em class="fa fa-phone"></em>Enter Food Name :</label>
						<form:input type="text" class="form-control" path="foodName"
							readonly="true" />

					</fieldset>


					<fieldset class="form-group">
						<legend></legend>
						<label><em class="fa fa-envelope"></em>Enter Food Quantity
							:</label>
						<form:input type="text" class="form-control" path="foodQuantity"
							readonly="true" />
					</fieldset>

					<fieldset class="form-group">
						<legend></legend>
						<label><em class="fa fa-envelope"></em>Enter Payment Type
							:</label>
						<form:input type="text" class="form-control" path="paymentType"
							readonly="true" />
					</fieldset>

					<fieldset class="form-group">
						<legend></legend>
						<label><em class="fa fa-envelope"></em> Food Price :</label>
						<form:input type="text" class="form-control" path="price"
							readonly="true" />
					</fieldset>
					<fieldset class="form-group">
						<legend></legend>
						<label><em class="fa fa-envelope"></em> Total Amount :</label>
						<form:input type="text" class="form-control" path="totalAmount"
							readonly="true" />
					</fieldset>
					<fieldset class="form-group">
						<legend></legend>
						<label><em class=""></em>Address :</label>
						<form:input type="text" class="form-control" path="address"
							readonly="true" />
					</fieldset>
					<fieldset class="form-group">
						<legend></legend>
						<label><em class="fa fa-envelope"></em>Order Date :</label>
						<form:input type="text" class="form-control" path="orderDate"
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