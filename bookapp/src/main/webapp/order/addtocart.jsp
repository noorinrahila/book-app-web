<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="/order/save" method="post">
		<table>

			<tr>
				<th>Book Name</th>
				<th>TotalPrice</th>
				<th>Quantity</th>
			</tr>
			<tr>
				<td><input type="text" name="book_name" readonly
					value="${book.name}" /></td>
			</tr>
			<tr>
				<td><input type="text" name="totalprice"
					value="${TOTAL_AMOUNT}" /></td>
			</tr>

			<tr>
				<td><button type="submit">Order</button></td>
			</tr>

		</table>

	</form>

</body>
</html>