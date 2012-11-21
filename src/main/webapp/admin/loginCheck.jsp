<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<s:if test="%{#session.admin == null || #session.admin != 'true'}">
	<jsp:forward page="/admin/login.jsp" />
</s:if>