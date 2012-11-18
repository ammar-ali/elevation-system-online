<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*"%>
<jsp:include page="/admin/loginCheck.jsp" />
admin login success
<br/>
<a href="<%= request.getContextPath() %>/admin/doLogout">Logout</a>

