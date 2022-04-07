<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>

<link rel="stylesheet" type="text/css"href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" />
<c:url value="/css/main.css" var="jstlCss" />
<link href="${jstlCss}" rel="stylesheet" />
<head>
<%-- <body>

	<table>
		<tr>
			<td>ID :</td>
			<td>${id}</td>
		</tr>
		<tr>
			<td>Name :</td>
			<td>${name}</td>
		</tr>
		<tr>
			<td>Quantity :</td>
			<td>${qty}</td>
		</tr>
		<tr>
			<td>UserName :</td>
			<td>${username}</td>
		</tr>
		<tr>
			<td>Password :</td>
			<td>${password}</td>
		</tr>

	</table>
</body> --%>

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

	</div>

	<script type="text/javascript"
		src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>