<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>

<link rel="stylesheet" type="text/css"href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" />
<c:url value="/css/main.css" var="jstlCss" />
<link href="${jstlCss}" rel="stylesheet" />
<head>
<body>
	<div class="container">

		<div class="starter-template">
			<h1>Added Product</h1>
			
			<table
				class="table table-striped table-hover table-condensed table-bordered">
				<tr>
					<th>Id</th>
					<th>Name</th>
					<th>Quantity</th>
					<th>UserName</th>
					<th>Password</th>
				</tr>

				<tr>
					<td>${id}</td>
					<td>${name}</td>
					<td>${qty}</td>
					<td>${username}</td>
					<td>${password}</td>
				</tr>

			</table>
		</div>
<h2>Record Added Successfully !!!!!!!!</h2>
	</div>

	<script type="text/javascript"
		src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>