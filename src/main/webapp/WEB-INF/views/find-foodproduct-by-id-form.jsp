<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find By Food Product Id</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="findfoodproductbyid">
				<div>
					<label for="foodId">Food Id</label>
					<div>
						<form:input path="foodId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="foodName">Food Name</label>
					<div>
						<form:input path="foodName" readonly="true" />
					</div>
				</div>
				<div>
					<label for="foodPrice">Food Price</label>
					<div>
						<form:input path="foodPrice" readonly="true" />
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>