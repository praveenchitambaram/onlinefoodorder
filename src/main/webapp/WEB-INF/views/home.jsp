<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<style type="">
* {
	margin: 0;
	padding: 0;
}

body {
	background-image:
		url("https://www.questrmg.com/wp-content/uploads/2019/03/web-banner-Top-Three-Restaurant-Trends.jpg");
	height: 768px;
	width: 1366px;
	background-position: center top;
	background-repeat: no-repeat;
	background-size: cover;
	position: relative;
}

.menu {
	width: 400px;
	float: left;
	height: 70px;
}

ul {
	float: left;
	display: flex;
	justify-content: center;
	align-items: center;
}

ul li {
	list-style: none;
	margin-left: 62px;
	margin-top: 27px;
	font-size: 20px;
}

ul li a {
	text-decoration: none;
	color: #FFFFFF;
	font-family: Arial;
	font-weight: bold;
	transition: 0.4s ease-in-out;
}

ul li a:hover {
	color: #0000FF;
}
</style>
</head>
<body>
	<div class="menu">
		<ul>	
			<li><a href="#">HOME</a></li>
			<li><a href="/customer/customerloginpage">LOGIN</a></li>
			<li><a href="/customer/addcustomerform">CUSTOMER</a></li>
			<li><a href="/admin/adminlogin">ADMIN</a></li>
		</ul>
	</div>
</body>
</html>