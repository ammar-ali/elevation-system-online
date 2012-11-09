<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*"%>

<html>
<head>
</head>
<body>
<s:if test="#session.admin != 'true'">
	<jsp:forward page="login.jsp"/>
</s:if>
</body>
</html>