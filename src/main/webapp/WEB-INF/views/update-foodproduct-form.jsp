<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Food Product</title>
<style>
body {
	background-image: url();
	height: 768px;
	width: 1366px;
	background-position: center top;
	background-repeat: no-repeat;
	background-size: cover;
	position: relative;
}

.text-danger {
	color: #e80c4d;
	font-size: 0.9em;
}
</style>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="updatefp" method="post"
				modelAttribute="updatefoodproduct">
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
				<form:errors path="foodName" cssClass="text-danger" />
				<div>
					<label for="foodPrice">Food Price</label>
					<div>
						<form:input path="foodPrice" />
					</div>
				</div>
				<div>
					<form:button>Update Food Product</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>