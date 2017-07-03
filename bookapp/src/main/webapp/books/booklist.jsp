<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
	<br>
	<div class="table-responsive">
		<table class="table" align="center">
			<thead>
				<tr>
					<th style="font-size: 30px">Id</th>
					<th style="font-size: 30px">Name</th>
					<th style="font-size: 30px">Price</th>
					<th style="font-size: 30px">ReleasedDate</th>
					<th style="font-size: 30px"></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${BOOK_SALES}" var="book">
					<tr>
						<td>${book.id}</td>
						<td>${book.name}</td>
						<td>${book.price}</td>
						<td>${book.released_date}</td>
						<td><a href="../books/${book.id}">View</a>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>