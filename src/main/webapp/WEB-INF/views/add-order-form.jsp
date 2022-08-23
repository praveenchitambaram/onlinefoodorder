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
				<a href="/customer/homepage">Food Shop</a>
			</div>
		</div>
	</div>
	<div class="container col-md-100">
		<h4>Add Order:</h4>
		<div class="card">

			<div class="card-body">
				<form:form action="add" method="post" modelAttribute="addorder">
					<fieldset class="form-group">
						<legend></legend>
						<label><em class="fa-solid fa-id-badge"></em>Enter
							Customer Id :</label> <input type="text" class="form-control"
							name="customerId" placeholder="Enter the customer Id"
							required="required">

					</fieldset>

					<fieldset class="form-group">
						<legend></legend>
						<label><em class="fa-solid fa-bowl-hot"></em>Enter Food
							Name :</label>
						<form:input type="text" class="form-control" path="foodName"
							required="required" id="foodName" onchange="calculation();"
							readonly="true" />

					</fieldset>


					<fieldset class="form-group">
						<legend></legend>
						<label><em class=""></em>Enter Food Quantity :</label>
						<form:input type="text" class="form-control" path="foodQuantity"
							placeholder="Enter your Food Quantity " required="required"
							id="foodQuantity" onchange="calculation();" />
					</fieldset>
					<fieldset class="form-group">
						<legend>
							<label><em class="fa-solid fa-credit-card-front"></em>Select
								your Payment Type :</label> <select class="form-control"
								name="paymentType">
								<option value="1" selected>---choose Payment Type---</option>
								<option value="Gpay">Gpay</option>
								<option value="PhonePay">PhonePay</option>
								<option value="CashOnDelivery">Cash on delivery</option>
							</select>
						</legend>
					</fieldset>
					<fieldset class="form-group">
						<legend></legend>
						<label><em class="fa-solid fa-circle-dollar"></em> Food
							Price :</label>
						<form:input type="text" class="form-control" path="price"
							required="required" id="price" onchange="calculation();"
							readonly="true" />
					</fieldset>
					<fieldset class="form-group">
						<legend></legend>
						<label><em class="fa-solid fa-sack-dollar"></em> Total
							Amount :</label>
						<form:input type="text" class="form-control" path="totalAmount"
							placeholder="Total Amount " required="required" id="totalAmount"
							onchange="calculation(this.form);" readonly="true" />
					</fieldset>
					<fieldset class="form-group">
						<legend></legend>
						<label><em class="fa-solid fa-calendar"></em>Address :</label>
						<form:input type="text" class="form-control" path="address"
							placeholder="Address" required="required" />
					</fieldset>
					<fieldset class="form-group">
						<legend></legend>
						<label><em class="fa-solid fa-calendar"></em>Order Date :</label>
						<form:input type="text" class="form-control" path="orderDate"
							placeholder="Order Date" required="required" />
					</fieldset>
					<button type="submit" class="btn btn-success">Order</button>

					<button type="submit" class="btn btn-success"
						onclick="history.back()">Go Back</button>
				</form:form>
			</div>

		</div>
	</div>
	<script>
		function calculation() {
			var quantity = document.getElementById("foodQuantity").value
			var price = document.getElementById("price").value
			var total = parseInt(quantity) * parseInt(price);
			document.getElementById("totalAmount").value = parseInt(total);
			return parseInt(total);

		}
	</script>
</body>
</html>