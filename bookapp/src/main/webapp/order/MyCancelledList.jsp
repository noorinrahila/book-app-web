<html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List My Orders</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
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
    <ul class="nav navbar-nav">
      <li class="active"><a href="../firstscreen.jsp">Home</a></li>
     
    </ul>
    <ul class="nav navbar-nav navbar-right">
    <li><a href="/users/logout">${user.name} <span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
  </ul>
  </div>
</nav>

<center><h1>MY CANCELLED ORDERS</h1></center>
	<div class="content">
		<div class="container-fluid">

			<div class="row">
				<div class="col-md-12">
					<div class="panel panel-default">
						<div class="panel-heading">
							<strong><i class="fa fa-list"></i> My Orders</strong>
						</div>
						<div class="panel-body">
							<table id="ordersTbl" border="1"
								class="table table-striped table-bordered">
								<thead>
									<tr>
										<th width="10%">Order Id</th>
										<th>Order Items</th>
						                <th>Quantity</th>
										<th>Status</th>
									     <th>CancelledDate</th>
										
										
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${MY_ORDERS}" var="order">
										<tr>
											<c:if test="${order.status == 'CANCELLED'}">
										
											<td>${order.id}</td>
											<td>
												<ul>
												
													<c:forEach items="${order.orderItems}" var="item">
														<li>${item.book.name}</li>
													  <td> ${item.quantity}</td>
														
													</c:forEach>
												</ul>
											</td>
										    <td>${order.status}</td>
																							<td>${order.cancelledDate }</td>
												
											</c:if>

										</tr>

									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
	<script>
		$(document).ready(function() {
			$("#ordersTbl").DataTable();
		});
	</script>
</body>
</html>