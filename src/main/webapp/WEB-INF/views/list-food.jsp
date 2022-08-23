<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Item Management Application</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
	<header> <nav class="navbar navbar-expand-md navbar-dark"
		style="background-color: tomato">
	<div>
		<a href="#" class="navbar-brand"> Food
			Management App </a>
	</div>
	</nav> </header>
	<br>

	<div class="row">


		<div class="container">
			<h3 class="text-center">List of Food Menu</h3>
			<hr>
			<div class="container text-left">

				<a href="/foodproduct/addform" class="btn btn-success">AddNew
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
							<td><c:out value="${foodproduct.foodId}" /></td>
							<td><c:out value="${foodproduct.foodName}" /></td>
							<td><c:out value="${foodproduct.foodPrice}" /></td>
							<td><a
								href="/foodproduct/updateform?foodid=${foodproduct.foodId}">Edit</a>
								&nbsp;&nbsp;&nbsp;&nbsp; <a
								href="/foodproduct/deletefoodproduct?foodproductid=${foodproduct.foodId}">Delete</a></td>
						</tr>
					</c:forEach>
				</tbody>

			</table>
		</div>
	</div>
</body>
</html>