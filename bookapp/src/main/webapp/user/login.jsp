<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
@CHARSET "ISO-8859-1";

body {
	background-image: url(../assests/image/1.jpg);
	background-repeat: no-repeat;
	background-size: 1390px 700px;
}

.text-center {
	font-size: 30px;
	font-weight: bold;
	margin-top: 40px;
	color: #115E93;
}

h3 {
	font-size: 24px;
	text-transform: uppercase;
	color: #303030;
	font-weight: 600;
	margin-bottom: 30px;
}

form {
	font-size: 19px;
	line-height: 1.375em;
	color: #F0F4EF;
	font-weight: 400;
	align: center;
}

input {
	margin-bottom: 50px;
	font-size: 19px;
	align: justify;
}

.centered-form {
	margin-top: 160px;
}

.centered-form .panel {
	background: rgba(223, 229, 220, 0.3);
}

.input-group {
	align: center;
}
</style>
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<div class="row centered-form">
			<div
				class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title" align="center">Login in</h3>
					</div>
					<div class="panel-body">

						<form action="../users/validate" method="POST">
							<div class="input-group">
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-user"></i></span> <input id="email"
									type="text" class="form-control" name="email"
									placeholder="Email">
							</div>
							<br>
							<div class="input-group">
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-lock"></i></span> <input id="password"
									type="password" class="form-control" name="password"
									placeholder="Password">
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

</body>
</html>