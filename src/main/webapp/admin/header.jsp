<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title><tiles:insertAttribute name="title" ignore="true" />
</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/admin/css/screen.css" type="text/css"
	media="screen" title="default" />
<!--[if IE]>
<link rel="stylesheet" media="all" type="text/css" href="css/pro_dropline_ie.css" />
<![endif]-->
<!--  jquery core -->
<script src="<%=request.getContextPath()%>/admin/js/jquery/jquery-1.4.1.min.js" type="text/javascript"></script>
<!--  checkbox styling script -->
<script src="<%=request.getContextPath()%>/admin/js/jquery/ui.core.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/admin/js/jquery/ui.checkbox.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/admin/js/jquery/jquery.bind.js" type="text/javascript"></script>
<script type="text/javascript">
	$(function() {
		$('input').checkBox();
		$('#toggle-all').click(function() {
			$('#toggle-all').toggleClass('toggle-checked');
			$('#mainform input[type=checkbox]').checkBox('toggle');
			return false;
		});
	});
</script>

<!--  styled select box script version 2 -->
<script src="<%=request.getContextPath()%>/admin/js/jquery/jquery.selectbox-0.5_style_2.js"
	type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('.styledselect_form_1').selectbox({
			inputClass : "styledselect_form_1"
		});
		$('.styledselect_form_2').selectbox({
			inputClass : "styledselect_form_2"
		});
		
	});
</script>

<!--  styled select box script version 3 -->
<script src="<%=request.getContextPath()%>/admin/js/jquery/jquery.selectbox-0.5_style_2.js"
	type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('.styledselect_pages').selectbox({
			inputClass : "styledselect_pages"
		});
	});
</script>

<!-- Custom jquery scripts -->
<script src="<%=request.getContextPath()%>/admin/js/jquery/custom_jquery.js" type="text/javascript"></script>

<!-- Tooltips -->
<script src="<%=request.getContextPath()%>/admin/js/jquery/jquery.tooltip.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/admin/js/jquery/jquery.dimensions.js" type="text/javascript"></script>
<script type="text/javascript">
	$(function() {
		$('a.info-tooltip ').tooltip({
			track : true,
			delay : 0,
			fixPNG : true,
			showURL : false,
			showBody : " - ",
			top : -35,
			left : 5
		});
	});
</script>
<script type="text/javascript">
$(document).ready(function() {
	$(".order_status").change(function() {
		$status = $(this).val().split(" ")[0];
		
		$id = $(this).val().split(" ")[1];
		
		$.get("<%=request.getContextPath()%>/admin/order/updateStatus", {id: $id, order_status: $status});
	});
	$('form').validationEngine();
});
</script>
<!-- MUST BE THE LAST SCRIPT IN <HEAD></HEAD></HEAD> png fix -->
<script src="<%=request.getContextPath()%>/admin/js/jquery/jquery.pngFix.pack.js" type="text/javascript"></script>

<script type="text/javascript">
	$(document).ready(function() {
		$(document).pngFix();
	});
</script>
</head>
<body>
	<!-- Start: page-top-outer -->
	<div id="page-top-outer">

<!-- Start: page-top -->
<div id="page-top">

	<!-- start logo -->
	<div id="logo">
		
	</div>
	<!-- end logo -->

	<!--  start top-search -->
	<%-- <div id="top-search">
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
	</div> --%>
	<!--  end top-search -->
	<div class="clear"></div>

</div>
<!-- End: page-top -->
</div>
	<!-- End: page-top-outer -->
	<div class="clear">&nbsp;</div>
	<!--  start nav-outer-repeat................................................................................................. START -->
	<div class="nav-outer-repeat">