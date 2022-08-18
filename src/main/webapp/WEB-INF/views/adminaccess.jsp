<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Item Management Application</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: tomato">
			<div>
				<a href="#" class="navbar-brand">
					Item Management App </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="/foodproduct/foodlist" class="nav-link">Items</a></li>
				<li><a href="/order/list" class="nav-link">Order Details</a></li>
			</ul>
		</nav>
	</header>
	<br>

	<div class="row">


		<div class="container">
			<h3 class="text-center">List of Items</h3>
			<hr>
			<div class="container text-left">

				<a href="/foodproduct/addform" class="btn btn-success">Add New
					Items</a>
				<button type="submit" class="btn btn-success"onclick="history.back()">Go Back</button>
			</div>
			<br>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>ID</th>
						<th>Food Name</th>
						<th>Price</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>

					<c:forEach var="foodproduct" items="${allfoodproduct}">

						<tr>
							<td>${foodproduct.foodId}</td>
							<td>${foodproduct.foodName}</td>
							<td>${foodproduct.foodPrice}</td>
							<td>
						</tr>
					</c:forEach>
				</tbody>

			</table>
		</div>
	</div>
</body>
</html>