<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!-- Start: page-top -->
<div id="page-top">

	<!-- start logo -->
	<div id="logo">
		<a href=""><img src="<%=request.getContextPath()%>/admin/images/shared/logo.png" width="156"
			height="40" alt="" />
		</a>
	</div>
	<!-- end logo -->

	<!--  start top-search -->
	<div id="top-search">
		<table border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td><input type="text" value="Search"
					onblur="if (this.value=='') { this.value='Search'; }"
					onfocus="if (this.value=='Search') { this.value=''; }"
					class="top-search-inp" />
				</td>
				<td><select class="styledselect">
						<option value="">All</option>
						<option value="">Products</option>
						<option value="">Categories</option>
						<option value="">Clients</option>
						<option value="">News</option>
				</select></td>
				<td><input type="image" src="<%=request.getContextPath()%>/admin/images/shared/top_search_btn.gif" />
				</td>
			</tr>
		</table>
	</div>
	<!--  end top-search -->
	<div class="clear"></div>

</div>
<!-- End: page-top -->