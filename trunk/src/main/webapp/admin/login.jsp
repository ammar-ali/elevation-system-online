<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<!--[if lt IE 7]> <html class="lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]> <html class="lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]> <html class="lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!-->
<html lang="en">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/admin/css/style.css">
<!--[if lt IE 9]><script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
</head>
<body>
	<form method="POST" action="<%=request.getContextPath()%>/admin/dologin" class="login">
		<p>
			<label for="username">Username:</label> <input type="text" name="username"
				id="login" value="">
		</p>

		<p>
			<label for="password">Password:</label> <input type="password"
				name="password" id="password" value="">
		</p>

		<p class="login-submit">
			<button type="submit" class="login-button">Login</button>
		</p>

	</form>
</body>
</html>