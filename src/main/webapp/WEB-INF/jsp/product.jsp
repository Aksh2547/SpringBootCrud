<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>

<link rel="stylesheet" type="text/css"href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" />
<c:url value="/css/main.css" var="jstlCss" />
<link href="${jstlCss}" rel="stylesheet" />

</head>
<body>
	<div class="container">

		<div class="starter-template">
			<h1>Product List</h1>
			<table
				class="table table-striped table-hover table-condensed table-bordered">
				<tr>
					<th>Id</th>
					<th>Name</th>
					<th>Quantity</th>
					<th>UserName</th>
					<th>Password</th>
					<th>Action</th>
				</tr>
				<c:forEach var="prod" items="${prod}">
					<tr>
						<td>${prod.id}</td>
						<td>${prod.name}</td>
						<td>${prod.qty}</td>
						<td>${prod.username}</td>
						<td>${prod.password}</td>
						<td> <a href="/showformupdate/${prod.id }" class="btn btn-primary">update</a>
							 <a href="/deleteProduct/${prod.id }" class="btn btn-danger">delete</a>	</td>
						
					</tr>
				</c:forEach>
			</table>
		</div>

	</div>

	<script type="text/javascript"src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>

</html>