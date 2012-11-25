<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<jsp:include page="/admin/header.jsp" />
<jsp:include page="/admin/menu.jsp" />
<jsp:include page="/admin/loginCheck.jsp" />

	<!--  start page-heading -->
	<div id="page-heading">
		<h1>List User</h1>
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
		
			<!--  start table-content  -->
			<div id="table-content">
					
					<!--  start product-table ..................................................................................... -->
				<form id="mainform" action="list" method="POST">
				<table border="0" width="100%" cellpadding="0" cellspacing="0" id="product-table">
				<tr>
					<th class="table-header-check"><a id="toggle-all" ></a> </th>
					<th class="table-header-repeat line-left minwidth-1"><a href="">Username</a>	</th>
					<th class="table-header-repeat line-left minwidth-1"><a href="">Email</a></th>
					<th class="table-header-repeat line-left"><a href="">Address</a></th>
					<th class="table-header-repeat line-left"><a href="">City</a></th>
					<th class="table-header-repeat line-left"><a href="">Phone</a></th>
					<th class="table-header-options line-left"><a href="">Options</a></th>
				</tr>
				<s:iterator value="users">
				<tr>
					<td><input  type="checkbox"/></td>
					<td><s:property value="username"/></td>
					<td><s:property value="email"/></td>
					<td><s:property value="address"/></td>
					<td><s:property value="city"/></td>
					<td><s:property value="phone"/></td>
					<td class="options-width">
					<a href="edit?id=<s:property value="id"/>" title="Edit" class="icon-1 info-tooltip"></a>
					<a href="del?id=<s:property value="id"/>" title="Delete" class="icon-2 info-tooltip"></a>
					</td>
				</tr>
				</s:iterator>
				
				</table>
				<!--  end product-table................................... --> 
				</form>
			
			</div>
			<!--  end content-table  -->
			
			<!--  start actions-box ............................................... -->
			<!-- <div id="actions-box">
				<a href="" class="action-slider"></a>
				<div id="actions-box-slider">
					<a href="" class="action-edit">Show Deleted</a>
					<a href="" class="action-delete">Hide Deleted</a>
				</div>
				<div class="clear"></div>
			</div> -->
			<!-- end actions-box........... -->
			
		<!--  start paging..................................................... -->
			<table border="0" cellpadding="0" cellspacing="0" id="paging-table">
			<tr>
			<td>
				<a href="?page=1" class="page-far-left"></a>
				<a href="?page=<s:property value="previousPage"/>" class="page-left"></a>
				<div id="page-info">Page <strong><s:property value="page"/></strong> / <s:property value="lastPage"/></div>
				<a href="?page=<s:property value="nextPage"/>" class="page-right"></a>
				<a href="?page=<s:property value="lastPage"/>" class="page-far-right"></a>
			</td>
			</tr>
			</table>
			<!--  end paging................ -->
			
			<div class="clear"></div>
		 
		</div>
		<!--  end content-table-inner ............................................END  -->
		
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