<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<jsp:include page="/admin/header.jsp"/>
<jsp:include page="/admin/menu.jsp"/>
<jsp:include page="/admin/loginCheck.jsp"/>

<!--   start page-heading -->
<div id="page-heading">
    <h1>Error</h1>
</div>
<!-- end page-heading -->

<s:if test="hasActionErrors()">
    <div class="errors">
        <s:actionerror/>
    </div>
</s:if>

<s:if test="hasActionMessages()">
    <div class="messages">
        <s:actionmessage/>
    </div>
</s:if>

<jsp:include page="/admin/footer.jsp" />