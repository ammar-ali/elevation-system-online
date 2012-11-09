<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
</head>
 
<body>
<h1>Customer Information</h1>
 
<h2>Add Customer</h2>
<s:form action="addCustomer" >
  <s:textfield name="name" label="Name" value="" />
  <s:textfield name="username" label="Username" value="" />
  <s:password name="password" label="Password" value="" />
  <s:textfield name="address" label="Address" value="" />
  <s:textfield name="email" label="Email" value="" />
  <s:textfield name="company" label="Company" value="" />
  <s:submit />
</s:form>
 
<h2>All Customers</h2>
 
<s:if test="customerList.size() > 0">
<table border="1px" cellpadding="8px">
	<tr>
		<th>Customer Id</th>
		<th>Username</th>
		<th>Name</th>
		<th>Address</th>
		<th>Email</th>
		<th>Company</th>
		<th>Created Date</th>
	</tr>
	<s:iterator value="customerList" status="userStatus">
		<tr>
			<td><s:property value="customerId" /></td>
			<td><s:property value="username" /></td>
			<td><s:property value="name" /></td>
			<td><s:property value="address" /></td>
			<td><s:property value="email" /></td>
			<td><s:property value="company" /></td>
			<td><s:date name="createdDate" format="dd/MM/yyyy" /></td>
		</tr>
	</s:iterator>
</table>
</s:if>
<br/>
<br/>
 
</body>
</html>