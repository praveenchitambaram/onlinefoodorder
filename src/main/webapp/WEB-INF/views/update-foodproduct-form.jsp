<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<style type="text/css">
h1 {
	color: rgb(210, 210, 210);
	float: center;
	text-align: center;
}

tr {
	color: red;
}

label {
	color: white;
	font-size: 1.3em;
	/* display: flex; */
	margin: 17px;
	font-weight: bold;
	/* cursor: pointer; */
	/* transition: .5s ease-in-out; */
	/* text-align: center; */
	margin-bottom: 6px;
}

#btn {
	width: 150px;
	height: 30px;
	border: black;
	border-radius: 3px;
	padding-left: 8px;
	color: white;
	background-color: maroon;
	display: inline-block;
	float: right;
}

#log {
	width: 150px;
	height: 30px;
	border: black;
	border-radius: 75px;
	padding-left: 8px;
	color: white;
	background-color: maroon;
	display: inline-block;
	margin: 4px 2px;
	cursor: pointer;
	-webkit-transition-duration: 0.4s;
	transition-duration: 0.4s;
	margin-left: 105px;
	float: center;
}

.box {
	overflow: hidden;
	border-radius: 10px;
	box-shadow: 5px 20px 50px #000;
	margin: auto;
	padding: 10px;
	text-align: center;
	float: center;
	font-weight: 600;
	width: 600px;
}

#centreName {
	width: 250px;
	height: 30px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;
}

#pinCode {
	width: 260px;
	height: 30px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;
}

#contactPersonName {
	width: 250px;
	height: 30px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;
}

#contactPersonPhoneNo {
	width: 250px;
	height: 30px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;
}

#log {
	box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
}

body {
	background-image:
		url("https://png.pngtree.com/background/20210709/original/pngtree-food-food-snack-eating-goods-picture-image_925656.jpg");
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
	background-color: #080710;
}

table {
	text-align: center;
	margin-left: 125px;
}
</style>
<meta charset="ISO-8859-1">
<title>Add Centre</title>
</head>
<body>
	<h1>Update Food</h1>
	<div id="root">
		<div id="form" class="box">
			<form:form action="updatefood" method="post" modelAttribute="updatefoodproduct">
				<div>
					<table>
					<caption></caption>
					<tr>
					<th></th>
					</tr>
						<tbody>
							<tr>
								<td><label for="foodId">Food Id</label></td>
								<td><form:input path="foodId" class="text-box"
										placaholder="foodId" title="Id must be required"
										required="true" /></td>
							</tr>
							<form:errors path="foodName" Class="text-danger"></form:errors>
							<tr>
								<td><label for="foodName">Food Name</label></td>
								<td><form:input path="foodName" class="text-box"
										placaholder="foodName" title="Name must be required"
										required="true" /></td>
							</tr>
							<form:errors path="foodName" Class="text-danger"></form:errors>
							<tr>
								<td><label for="foodPrice">Food Price</label></td>
								<td><form:input path="foodPrice" class="text-box"
										placaholder="foodPrice" title="foodPrice must be required"
										required="true" /></td>
							</tr>
							<form:errors path="foodPrice" Class="text-danger"></form:errors>

						</tbody>
					</table>
					<form:button id="log">Save</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>