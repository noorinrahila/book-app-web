<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style>
	span.glyphicon.glyphicon-user {
    top: 13px;
    font-size: 22px;
}
.table {
	width: 50%;
}

th, td {
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: white;
}

th {
	background-color: #ff9900;
	color: white;
}
	</style>
</head>
<body>
	<nav class="navbar navbar-light" style="background-color: #3347ED;">
	<div class="container-fluid">
		<div class="navbar-header">
			<a href="#" class="dropdown-toggle" data-toggle="dropdown"
				style="color: white;"> <span class="glyphicon glyphicon-user"></span> 

			</a>
		</div>


		<form class="navbar-form navbar-left">
			<div class="form-group">
				<h4 style="color: white; text-transform: capitalize;">

					${user.name}</h4>
			</div>
			&nbsp;
			<div class="form-group">
				<input type="text" class="form-control" placeholder="Search">
			</div>
			<button type="submit" class="btn btn-default">Submit</button>
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


	<form action="../orderItems/addToCart" method="post">

		<input type="hidden" name="book_id" value="${BOOK_ORDER.id}" />
		<table class="table" align="center">
			<tr>
				<th>Book Name</th>
				<th>Price</th>
				<th>Quantity</th>
			</tr>
			<tr>

				<td>${BOOK_ORDER.name}</td>

				<td>Rs. ${BOOK_ORDER.price}</td>
				<td><input type="number" name="qty" min="1" value="1" required /></td>
				<br />
				<c:if test="${!empty LOGGED_IN_USER}">
					<td><button type="submit" class="btn btn-primary">Add
							To Cart</button></td>
				</c:if>
				<c:if test="${empty LOGGED_IN_USER}">
					<td><button type="submit" class="btn btn-primary">Add
							To Cart</button></td>
				</c:if>




			</tr>
		</table>
	</form>
</body>
</html>