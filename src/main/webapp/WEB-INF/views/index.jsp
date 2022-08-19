<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Index</title>
<style>
#div1 {
    background:
        url();
    background-size: 100px 80px;
    background-repeat: no-repeat;
}
</style>
</head>
<body>
 <div>
        <h1>User Login</h1>
    </div>
    <div>
        <a href="/customer/customerpage">Customer Login</a>
    </div>
    <div></div>
    <div>
        <h1>Customer Details</h1>
    </div>
    <div>
        <a href="/customer/customerlist">Customer list</a>
    </div>
    <div>
        <a href="/customer/deletecustomer?customerid=">Delete Customer</a>
    </div>
    <div>
        <a href="/customer/findcustomerbyid?customerid=">Find Customer By Id</a>
    </div>
    <div></div>

    <div>
        <h1>Food Product</h1>
    </div>
    <div>
        <a href="/foodproduct/list">Food Product List</a>
    </div>
    <div>
        <a href="/foodproduct/addform">Add Food Product</a>
    </div>
    <div>
        <a href="/foodproduct/updateform?foodid=">Update
            Food Product</a>
    </div>
    <div>
        <a href="/foodproduct/deletefoodproduct?foodproductid=">Delete
            Food Product</a>
    </div>
    <div>
        <a href="/foodproduct/findfoodproductbyid?foodproductid=">Find
            Food Product</a>
    </div>
    <div></div>
    <div>
        <h1>Orders </h1>
    </div>
    <div>
        <a href="/order/list">Orders List</a>
    </div>
    <div>
        <a href="/order/addform">Add Orders</a>
    </div>
    <div>
        <a href="/order/updateform?orderId=">Update Orders</a>
    </div>
    <div>
        <a href="/order/deleteorder?orderId=">Delete Orders</a>
    </div>
    <div>
        <a href="/order/findorderbyid?orderId=">Find Orders</a>
    </div>
    <div>
        <a href="/order/getcustomerorders?customerid=">Get Customer And Orders</a>
    </div>
    <div></div>
    <div>
        <h1>Order Details</h1>
    </div>
    <div>
        <a href="/orderdetails/list">Order Details List</a>
    </div>
    <div>
        <a href="/orderdetails/addform">Add Order Details</a>
    </div>
    <div>
        <a href="/orderdetails/updateform?orderid=">Update
            Order Details</a>
    </div>
    <div>
        <a href="/orderdetails/deleteorder?orderid=">Delete
            Order Details</a>
    </div>
    <div>
        <a href="/orderdetails/findorderdetailsbyid?orderid=">Find Order Details</a>
    </div>
    <div>
        <a href="/orderdetails/getcustomerorderdetails?customerid=">Get Customers And Order Details</a>
    </div>
    <div></div>
</body>
</html>