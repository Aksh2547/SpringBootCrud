<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form:form method="POST" action="/addproduct" object="${product}">
		<table>
			<tr>
				<td><form:label path="id">Id</form:label></td>
				<td><form:input type =":hidden" path="id" /></td>
			</tr>
			<tr>
				<td><form:label path="name">Name</form:label></td>
				<td><form:input path="name" /></td>
			</tr>
			<tr>
				<td><form:label path="qty">Quantity</form:label></td>
				<td><form:input path="qty" /></td>
			</tr>
			<tr>
				<td><form:label path="username">UserName</form:label></td>
				<td><form:input path="username" /></td>
			</tr>
			<tr>
				<td><form:label path="password">Password</form:label></td>
				<td><form:input path="password" /></td>
			</tr>

			<td colspan="2"><input type="submit" value="Submit" /></td>
		</table>
	</form:form>

</body>
</html>