<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!--  start nav-outer -->
<div class="nav-outer">

	<!-- start nav-right -->
	<div id="nav-right">

		<div class="nav-divider">&nbsp;</div>
		<div class="showhide-account">
			<img src="<%=request.getContextPath()%>/admin/images/shared/nav/nav_myaccount.gif" width="93" height="14"
				alt="" />
		</div>
		<div class="nav-divider">&nbsp;</div>
		<a href="<%= request.getContextPath() %>/admin/logout" id="logout"><img src="<%=request.getContextPath()%>/admin/images/shared/nav/nav_logout.gif"
			width="64" height="14" alt="" />
		</a>
		<div class="clear">&nbsp;</div>

		<!--  start account-content -->
		<div class="account-content">
			<div class="account-drop-inner">
				<a href="" id="acc-settings">Settings</a>
				<div class="clear">&nbsp;</div>
				<div class="acc-line">&nbsp;</div>
				<a href="" id="acc-details">Personal details </a>
				<div class="clear">&nbsp;</div>
				<div class="acc-line">&nbsp;</div>
				<a href="" id="acc-project">Project details</a>
				<div class="clear">&nbsp;</div>
				<div class="acc-line">&nbsp;</div>
				<a href="" id="acc-inbox">Inbox</a>
				<div class="clear">&nbsp;</div>
				<div class="acc-line">&nbsp;</div>
				<a href="" id="acc-stats">Statistics</a>
			</div>
		</div>
		<!--  end account-content -->

	</div>
	<!-- end nav-right -->


	<!--  start nav -->
	<div class="nav">
		<div class="table">

			<ul class="select">
				<li><a href="#nogo"><b>User</b>
				</a>
				<!--[if lte IE 6]><table><tr><td><![endif]-->
				<div class="select_sub show">
					<ul class="sub">
						<li><a href="<%= request.getContextPath() %>/admin/user/index">List users</a></li>
						<li class="sub_show"><a href="<%= request.getContextPath() %>/admin/user/add">Add user</a></li>
						<li><a href="<%= request.getContextPath() %>/admin/user/deleted">View deleted</a></li>
					</ul>
				</div>
				<!--[if lte IE 6]></td></tr></table></a><![endif]-->
				</li>
			</ul>

			<div class="nav-divider">&nbsp;</div>
			
			<ul class="select">
				<li><a href="#nogo"><b>Project</b>
				</a>
				<!--[if lte IE 6]><table><tr><td><![endif]-->
				<div class="select_sub show">
					<ul class="sub">
						<li><a href="<%= request.getContextPath() %>/admin/project/index">List projects</a></li>
						<li class="sub_show"><a href="<%= request.getContextPath() %>/admin/project/add">Add project</a></li>
						<li><a href="<%= request.getContextPath() %>/admin/project/deleted">View deleted</a></li>
					</ul>
				</div>
				<!--[if lte IE 6]></td></tr></table></a><![endif]-->
				</li>
			</ul>

			<div class="nav-divider">&nbsp;</div>

			<ul class="select">
				<li><a href="#nogo"><b>Product</b>
				</a>
				<!--[if lte IE 6]><table><tr><td><![endif]-->
				<div class="select_sub show">
					<ul class="sub">
						<li><a href="<%= request.getContextPath() %>/admin/product/index">List products</a></li>
						<li class="sub_show"><a href="<%= request.getContextPath() %>/admin/product/add">Add product</a></li>
						<li><a href="<%= request.getContextPath() %>/admin/product/deleted">View deleted</a></li>
					</ul>
				</div>
				<!--[if lte IE 6]></td></tr></table></a><![endif]-->
				</li>
			</ul>

			<div class="nav-divider">&nbsp;</div>
			
			<ul class="select">
				<li><a href="#nogo"><b>Order</b>
				</a>
				<!--[if lte IE 6]><table><tr><td><![endif]-->
				<div class="select_sub show">
					<ul class="sub">
						<li><a href="<%= request.getContextPath() %>/admin/order/index">List orders</a></li>
						
					</ul>
				</div>
				<!--[if lte IE 6]></td></tr></table></a><![endif]-->
				</li>
			</ul>

			<div class="nav-divider">&nbsp;</div>

			<ul class="select">
				<li><a href="#nogo"><b>Feedback</b>
				</a>
				<!--[if lte IE 6]><table><tr><td><![endif]-->
				<div class="select_sub show">
					<ul class="sub">
						<li><a href="<%= request.getContextPath() %>/admin/feedback/index">List feedbacks</a></li>
						
					</ul>
				</div>
				<!--[if lte IE 6]></td></tr></table></a><![endif]-->
				</li>
			</ul>

		</div>
	</div>
	<!--  start nav -->

</div>
<div class="clear"></div>
<!--  start nav-outer -->

</div>
	<!--  start nav-outer-repeat................................................... END -->
	<div class="clear"></div>
	<!-- start content-outer -->
	<div id="content-outer">
		<!-- start content -->
		<div id="content">