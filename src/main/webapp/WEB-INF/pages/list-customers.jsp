<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored ="false"%>

<%@taglib uri="http://java.sun.com./jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="UTF-8">
<title>List Customers</title>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style.css" />
</head>
<body>
	<div id="wrapper">
		<div id="header">
			<h2>CRM-Customer Relational Manager</h2>
		</div>
	</div>

	<div id="container">
		<div id="content">

			<input type='button' value='Add Customer'
				onclick="window.location.href='./showForm'; return false;"
				class="add-button" />
			<table border="1">
				<thead>
					<tr>
						<td>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Action</th>
						</td>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${customer}" var="customers">
					<c:url  var="updateLink" value=" /customer/showFormForUpdate">
						<c:param name="customerId" value="${customer.id}"/>
					</c:url>
						<tr>

							<td><c:out value="${customer.firstName}" /></td>
							<td><c:out value="${customer.firstName}" /></td>
							<td><c:out value="${customer.firstName}" /></td>
							<td><a href='${updateLink}'>Update</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

		</div>
	</div>
</body>
</html>