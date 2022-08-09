<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
		url("https://static.wixstatic.com/media/445159_f6fe803589f1425aaef7d6393e8ea9bd~mv2.jpg/v1/fill/w_640,h_402,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/445159_f6fe803589f1425aaef7d6393e8ea9bd~mv2.jpg");
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
	color: #fff;
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
			<li><a href="/customer/customerpage">LOGIN</a></li>
			<li><a href="/customer/customerloginpage">CUSTOMER</a></li>
			<li><a href="#">CONTACT</a></li>
			<li><a href="/companyadmin/adminlogin">ADMIN</a></li>
		</ul>
	</div>
</body>
</html>