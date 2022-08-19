<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
		<a href="http://www.nacreservices.com" class="navbar-brand"> Item
			Management App </a>
	</div>
	</nav> </header>
	<br>

	<div class="row">


		<div class="container">
			<h3 class="text-center">Food Menu</h3>
			<hr>
			<div class="container text-left">
				<button type="submit" class="btn btn-success"
					onclick="history.back()">Go Back</button>
			</div>
			<br>
			<table class="table table-bordered">
				<caption></caption>
				<tr>
					<th></th>
				</tr>
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
							<td><c:out value="${foodproduct.foodId}" /></td>
							<td><c:out value="${foodproduct.foodName}" /></td>
							<td><c:out value="${foodproduct.foodPrice}" /></td>
							<td><a href='/order/addform?foodId=${foodproduct.foodId}'>Add Orders </a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>