<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<jsp:include page="/admin/header.jsp" />
<jsp:include page="/admin/menu.jsp" />
<jsp:include page="/admin/loginCheck.jsp" />

	<!--  start page-heading -->
	<div id="page-heading">
		<h1>Edit product</h1>
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
			<div class="step-dark-left"><a href="">Add product detail</a></div>
			<div class="step-dark-right">&nbsp;</div>
			<div class="clear"></div>
		</div>
		<!--  end step-holder -->
	
		<form action="update" method="POST">
		<!-- start id-form -->
		<table border="0" cellpadding="0" cellspacing="0"  id="id-form">
			<tr>
				<th valign="top">Name:</th>
				<td><input type="text" name="name" value="<s:property value="product.name"/>" class="inp-form" /></td>
				<td></td>
			</tr>
			<tr>
				<th valign="top">Description:</th>
				<td><textarea rows="" name="description" cols="" class="form-textarea"><s:property value="product.description"/></textarea></td>
				<td></td>
			</tr>
			<tr>
				<th valign="top">Price:</th>
				<td><input type="text" name="price" value="<s:property value="product.price"/>" class="inp-form" /></td>
				<td></td>
			</tr>
	<tr>
		<th>&nbsp;</th>
		<td valign="top">
			<input type="hidden" name="id" value="<s:property value="product.id"/>" />
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