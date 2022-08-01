<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Food Product</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="updatefp" method="post" modelAttribute="updatefoodproduct">
				<div>
					<label for="foodId">Food Id</label>
					<div>
						<form:input path="foodId" />
					</div>
				</div>
				<div>
					<label for="foodName">Food Name</label>
					<div>
						<form:input path="foodName" />
					</div>
				</div>
				<div>
					<label for="foodPrice">Food Price</label>
					<div>
						<form:input path="foodPrice" />
					</div>
				</div>
				<div>
					<label for="quantity">Quantity</label>
					<div>
						<form:input path="quantity" />
					</div>
				</div>
				<div>
					<label for="foodQuantity">Food Quantity</label>
					<div>
						<form:input path="foodQuantity" />
					</div>
				</div>
				<div>
					<form:button>Update Food Product</form:button>
				</div>
			</form:form>
		</div>
	</div>
	</div>
</body>
</html>