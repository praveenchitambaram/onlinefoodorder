<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Login Form</title>
</head>
<body>
	<div id="root">
		<div id="form" align="center">
			<form:form action="customerlogin" method="post"
				modelAttribute="login">
				<h1>User Login</h1>
				<table>
					<tr>
						<td><label for="email">Email :</label></td>
						<td><form:input path="email" placeholder="email" /></td>
					</tr>
					<tr>
						<td><label for="customerId">Password :</label></td>
						<td><form:input path="customerId" placeholder="Password"
								type="password" /></td>
					</tr>
				</table>
				<div>
					<tr>
						<td><form:button>Sign In</form:button></td>
						<td><form:button>
								<a href="/customer/addcustomerform">Sign Up</a>
							</form:button></td>
					</tr>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>