<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<jsp:include page="/admin/header.jsp" />
<jsp:include page="/admin/menu.jsp" />
<jsp:include page="/admin/loginCheck.jsp" />

	<!--  start page-heading -->
	<div id="page-heading">
		<h1>Order details</h1>
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
					<th class="table-header-repeat line-left"><a href="">OrderId</a>	</th>
					<th class="table-header-repeat line-left minwidth-1"><a href="">Product</a></th>
					<th class="table-header-repeat line-left"><a href="">Quantity</a></th>
					<th class="table-header-repeat line-left"><a href="">Price</a></th>
					<th class="table-header-options line-left"><a href="">Options</a></th>
				</tr>
				<s:iterator value="orderDetail" >
				<tr>
					<td><input  type="checkbox"/></td>
					<td><s:property value="id"/></td>
					<td><s:property value="getProduct().getName()"/></td>
					<td><s:property value="quantity"/></td>
					<td><s:property value="price"/></td>
					<td class="options-width">
					
					</td>
				</tr>
				</s:iterator>
				
				</table>
				<!--  end product-table................................... --> 
				</form>
			
			</div>
			<!--  end content-table  -->
			
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