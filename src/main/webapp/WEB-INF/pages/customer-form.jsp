<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>	
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Form</title>
<link rel="stylesheet" type="text/css" href="../css/add-customer-style.css" />
<link rel="stylesheet" type="text/css" href="../css/style.css" />

</head>
<body>
  <div id="wrapper">
		<div id="header">
			<h2>CRM-Customer Relational Manager</h2>
		</div>
	</div>

	<div id="container">
		<h1>Save Customer</h1>
		
		<form:form action="saveCustomer" method="post" modelAttribute="customer">
			
			<!-- Need to associate this data with customer id -->
			<form:hidden path="id" />
			<table>
				<tbody>
					<tr>
						<td>First Name</td>
						<td>
							<form:input path="firstName" />
						</td>
					</tr>
					<tr>
						<td>Last Name</td>
						<td>
							<form:input path="lastName" />
						</td>
					</tr>
					<tr> 
						<td>Email</td>
						<td>
							<form:input path="email" />
						</td>
					</tr>
					<tr>
						<td></td>
						<td>
							<input type="submit" value='save' class='save' />
						</td>
					</tr>
				</tbody>
				
			</table>
		
		</form:form>
	</div>	
	<div>
	<h3> <a href="${pageContext.request.contextPath}/customer/list">Customer List</a>" </h3>
	</div>
</body>
</html>