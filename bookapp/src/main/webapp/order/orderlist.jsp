<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Book Management System</title>
<style>
.table {
	width: 50%;
}

th, td {
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #f2f2f2
}

th {
	background-color: #ff9900;
	color: white;
}

span.glyphicon.glyphicon-user {
	top: 13px;
	font-size: 22px;
}
</style>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
	<nav class="navbar navbar-light" style="background-color: #3347ED;">
		<div class="container-fluid">
			<div class="navbar-header">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown"
					style="color: white;"> <span class="glyphicon glyphicon-user"></span> 

				</a>
			</div>
			<form class="navbar-form navbar-left" action="/books/list">
				<div class="form-group">
					<input type="submit" class="form-control" value="listbook"
						placeholder="ListBook">
				</div>

			</form>

			<form class="navbar-form navbar-left">
			<div class="form-group">
					<h4 style="color: white; text-transform: capitalize;">

						${user.name}</h4>
				</div>
				&nbsp;
				<div class="form-group">
					<input type="text" class="form-control" placeholder="Search">
				</div>
				<button type="submit" class="btn btn-default">S</button>
			</form>

			<ul class="nav navbar-nav navbar-right">

				<li><a href="/users/logout" style="color: white;"><span
						class="glyphicon glyphicon-log-out" style="color: white;"></span>
						Logout</a></li>
				<li><a href="#"> <span
						class="glyphicon glyphicon-shopping-cart" style="color: white;"></span>
				</a></li>

			</ul>
		</div>
	</nav>





	<h1 style="font-size: 40px">ORDERS LIST</h1>



	<form>
		<table class="table table-hover" style="width: 550px; height: 50px"
			border="1" >
			<thead>
				<tr>
					<th style="font-size: 20px">Id</th>
					<th style="font-size: 20px">ItemName</th>
					<th style="font-size: 20px">Quantity</th>
					<th style="font-size: 20px">TotalCost</th>
					<th style="font-size: 20px">Remove</th>

				</tr>
			</thead>
			<tbody>


				<c:forEach items="${MY_CART.orderItems}" var="orderItem"
					varStatus="id">
					<tr>
						<td>${id.index+1}</td>

						<td>${orderItem.book.name}</td>
						<td>${orderItem.quantity}</td>
						<td>Rs.${orderItem.quantity*orderItem.book.price}</td>
						<td><button style="font-size: 20px">
								<a href="/order/remove?id=${id.index}">Remove</a>
							</button></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</form>
	<button style="font-size: 20px">
		<a href="/books/list" align="center">Continue Shopping</a>
	</button>

	<div class="col-md-4a">
		<h1>
			<b>Price Details</b>
		</h1>


		<c:set var="total_amount" value="0" />
		<c:forEach items="${MY_CART.orderItems}" var="orderItem">
			<c:set var="total_amount"
				value="${total_amount + orderItem.book.price*orderItem.quantity}" />
		</c:forEach>

		<form name="orderForm" action="../orders/save" method="post">
			<input type="hidden" name="total_amount" value="${total_amount}" />
			<table border="1" style="width: 550px; height: 50px" align="center">

				<tbody>
					<tr>
						<td>Price</td>
						<td>Rs. ${total_amount}</td>
					</tr>
					<tr>
						<td>Delivery Charges</td>
						<td>FREE</td>
					</tr>
					<tr>
						<th><b>Amount Payable </b></th>
						<th><b>Rs. ${total_amount}</b></th>
					</tr>
					<tr>
						<td colspan="2" align="center">

							<button type="submit" style="font-size: 20px;background-color:orange;"
								class="btn btn-success btn-block;">Place an Order</button>
						</td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>


</body>
</html>