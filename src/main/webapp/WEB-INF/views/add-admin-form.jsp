<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Admin</title>
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
	<div id="form" text-align="center">
		<form:form action="add" method="post" modelAttribute="addadmin">
			<div>
				<label for="userName">Name</label>
				<div>
					<form:input path="userName" title="Pls Enter Your Name"
						required="true" />
				</div>
			</div>
			<div>
				<label for="email">Email</label>
				<div>
					<form:input path="email" title="Pls Enter Your Email"
						required="true" />
				</div>
			</div>
			<form:errors path="email" cssClass="text-danger" />
			<div>
				<label for="userPassword">UserPassword</label>
				<div>
					<form:input path="userPassword" title="Pls Enter Your Password"
						required="true" />
				</div>
			</div>
			<form:errors path="userPassword" cssClass="text-danger" />
			<div>
				<form:button>Creat Account</form:button>
			</div>
		</form:form>
	</div>
</body>
</html>