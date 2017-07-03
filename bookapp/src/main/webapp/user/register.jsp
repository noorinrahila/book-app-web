<!DOCTYPE HTML>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="index.css" rel="stylesheet" />
<title>HOME PAGE</title>
</head>
<body align="center">
	<div class="container">
		<div class="row centered-form">
			<div
				class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title" align="center">
							Register form<br> 
						</h3>
					</div>
					<div class="panel-body">

						<form action="../users/save" method="POST">
							<div class="input-group">
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-user"></i></span> <input id="name"
									type="text" class="form-control" name="name"
									placeholder="Name" required>
							</div>
<br>
							<div class="input-group">
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-envelope"></i></span> <input id="email"
									type="text" class="form-control" name="email"
									placeholder="Email" required>
							</div>
							<br>
							<div class="input-group">
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-lock"></i></span> <input id="password"
									type="password" class="form-control" name="password"
									placeholder="Password" required>
							</div>
							<br>
							<div class="input-group">
								&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
								<button type="submit" class="btn btn-warning">
									&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspSUBMIT <span
										class="glyphicon glyphicon-send"></span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
								</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
<body>
</html>