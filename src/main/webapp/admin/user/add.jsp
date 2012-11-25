<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<jsp:include page="/admin/header.jsp" />
<jsp:include page="/admin/menu.jsp" />
<jsp:include page="/admin/loginCheck.jsp" />
<script type="text/javascript">
	$(document).ready(function() {
		$('form').validationEngine();
	});
</script>
	<!--  start page-heading -->
	<div id="page-heading">
		<h1>Add User</h1>
	</div>
	<!-- end page-heading -->

	<table border="0" width="100%" cellpadding="0" cellspacing="0" id="content-table">
	<tr>
		<th rowspan="3" class="sized"><img src="<%=request.getContextPath()%>/admin/images/shared/side_shadowleft.jpg" width="20" height="300" alt="" /></th>
		<th class="topleft"></th>
		<td id="tbl-border-top">&nbsp;</td>
		<th class="topright"></th>
		<th rowspan="3" class="sized"><img src="<%=request.getContextPath()%>/admin/images/shared/side_shadowright.jpg" width="20" height="300" alt="" /></th>
	</tr>
	
	<tr>
		<td id="tbl-border-left"></td>
		<td>
		<!--  start content-table-inner ...................................................................... START -->
		<div id="content-table-inner">
		
			
	<table border="0" width="100%" cellpadding="0" cellspacing="0">
	<tr valign="top">
	<td>
	
	
		<!--  start step-holder -->
		<div id="step-holder">
			<div class="step-no"> </div>
			<div class="step-dark-left"><a href="">Add user details</a></div>
			<div class="step-dark-right">&nbsp;</div>
			<div class="clear"></div>
		</div>
		<!--  end step-holder -->
	
		<form action="doadd" method="POST">
		<!-- start id-form -->
		<table border="0" cellpadding="0" cellspacing="0"  id="id-form">
			<tr>
				<th valign="top">Username:</th>
				<td><input type="text" name="username" class="validate[required]" /></td>
				<td></td>
			</tr>
			<tr>
				<th valign="top">Password:</th>
				<td><input type="password" name="password" class="inp-form validate[required]" /></td>
				<td></td>
			</tr>
			<tr>
				<th valign="top">Email:</th>
				<td><input type="text" name="email" class="inp-form" /></td>
				<td></td>
			</tr>
			<tr>
				<th valign="top">Name:</th>
				<td><input type="text" name="name" class="inp-form validate[required]" /></td>
				<td></td>
			</tr>
			<tr>
				<th valign="top">Address:</th>
				<td><input type="text" name="address" class="inp-form" /></td>
				<td></td>
			</tr>
			<tr>
				<th valign="top">City:</th>
				<td><input type="text" name="city" class="inp-form" /></td>
				<td></td>
			</tr>
			<tr>
				<th valign="top">Country:</th>
				<td>
				<select name="country_id"  class="styledselect_form_1">
					<s:iterator value="countries">
					<option value="<s:property value="id"/>"><s:property value="name"/></option>
					</s:iterator>
				</select>
				</td>
				<td></td>
			</tr>
			<tr>
				<th valign="top">Phone:</th>
				<td><input type="text" name="phone" class="inp-form" /></td>
				<td></td>
			</tr>
			<tr>
				<th valign="top">Company:</th>
				<td><input type="text" name="company" class="inp-form" /></td>
				<td></td>
			</tr>
			<tr>
				<th valign="top">Type:</th>
				<td>
				<select name="type"  class="styledselect_form_1">
				<option value="0">User</option>
				<option value="1">Admin</option>
				</select>
				</td>
				<td></td>
			</tr>
	<tr>
		<th>&nbsp;</th>
		<td valign="top">
			<input type="submit" value="" class="form-submit" />
			<input type="reset" value="" class="form-reset"  />
		</td>
		<td></td>
	</tr>
	</table>
	<!-- end id-form  -->
	</form>
	</td>
	<td>


</td>
</tr>
<tr>
<td><img src="<%=request.getContextPath()%>/admin/images/shared/blank.gif" width="695" height="1" alt="blank" /></td>
<td></td>
</tr>
</table>
			
		
		</td>
		<td id="tbl-border-right"></td>
	</tr>
	<tr>
		<th class="sized bottomleft"></th>
		<td id="tbl-border-bottom">&nbsp;</td>
		<th class="sized bottomright"></th>
	</tr>
	</table>

  
 <jsp:include page="/admin/footer.jsp" />