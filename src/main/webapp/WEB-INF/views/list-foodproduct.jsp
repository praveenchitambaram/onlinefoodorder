<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%> --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FoodProduct List</title>
</head>
<body>
	<div id="table root">
		<table>
			<thead>
				<tr>
					<th>Food Id</th>
					<th>Food Name</th>
					<th>Price</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="foodproduct" items="${allfoodproduct}">
					<tr>
						<td>${foodproduct.foodId}</td>
						<td>${foodproduct.foodName}</td>
						<td>${foodproduct.foodPrice}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div>
			<h3>
				<a href="/order/addform">Add Orders</a>
			</h3>
		</div>
	</div>
</body>
</html>