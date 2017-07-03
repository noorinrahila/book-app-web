<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Book Management System</title>
<meta charset="utf-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
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
			<form class="navbar-form navbar-left" action="/books/list">
				<div class="form-group">
					<h4 style="color: white; text-transform: capitalize;">

						${user.name}</h4>
				</div>
				&nbsp;
				<div class="form-group">
					<input type="submit" class="form-control" value="listbook"
						placeholder="ListBook">
				</div>

			</form>

			<form class="navbar-form navbar-left">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="Search">
				</div>
				<button type="submit" class="btn btn-default">Search</button>
			</form>

			<ul class="nav navbar-nav navbar-right">

				<li><a href="/users/logout" style="{color:white;}:hover{color:black;}"><span
						class="glyphicon glyphicon-log-out" style="color:white;"></span>
						Logout</a></li>
				<li><a href="#"> <span
						class="glyphicon glyphicon-shopping-cart" style="color: white;"></span>
				</a></li>

			</ul>
		</div>
	</nav>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-9">
				<span> <b> Sort by : </b>
				</span> Price : <a href="../books?price=asc"> <span
					class="badge badge-primary">Low to High</span>
				</a> <a href="../books?price=desc"><span class="badge badge-primary">High
						to Low</span></a> <a href="../books?released_date=desc"><span
					class="badge badge-success">Newest First</span></a> <a
					href="../books/sales"><span class="badge badge-success">Top
						Books</span></a>
			</div>
		</div>
		<div class="row">
			<div class="col-md-9">

				<h4>List of Books</h4>

				<c:forEach items="${books}" var="book">
					<div class="row book-container-bg">
						<div class="col-lg-4 col-md-4 col-xs-12">
							<img class="card-img-left" src="../assets/image/core.jpg"
								width="100" alt="Card image cap">
						</div>

						<div class="col-lg-8 col-md-8 col-xs-12">
							<p class="card-text">${book.name}-Rs.${book.price }
								<br /> Published Date - ${book.releasedDate}
							</p>
							<a href="../books/${book.id}" class="btn btn-success btn-sm">View</a>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>

	</div>


</body>

</body>
</html>