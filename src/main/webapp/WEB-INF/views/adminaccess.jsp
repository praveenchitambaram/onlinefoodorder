<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Food Management Application</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: tomato">
			<div>
				<a href="#" class="navbar-brand"> Food Management App </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="/foodproduct/foodlist" class="nav-link">Food
						List</a></li>
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
				<button type="submit" class="btn btn-success"
					onclick="history.back()">Go Back</button>
			</div>
			<br>
			<table class="table table-bordered">
				<caption></caption>
				<tr>
					<th scope="row"></th>
				</tr>
				<thead>
					<tr>
						<th scope="row">ID</th>
						<th scope="row">Food Name</th>
						<th scope="row">Price</th>
						<th scope="row">Actions</th>
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