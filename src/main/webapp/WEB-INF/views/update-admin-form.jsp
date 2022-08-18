<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Customer</title>
</head>
<body>
	<div id="root">
		<div id="form" align="center">
			<form:form action="updateadmins" method="post"
				modelAttribute="updateadminform">
				<div>
					<label for="userId">User Id</label>
					<div>
						<form:input path="userId" readonly="true" />
					</div>
				</div>
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
				<div>
					<form:button>Update Customer</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>