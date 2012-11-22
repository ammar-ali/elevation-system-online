<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<jsp:include page="/header.jsp">
    <jsp:param name="id" value="id"/>
    <jsp:param name="title" value="title"/>
</jsp:include>

<body>
<div class="page">

    <jsp:include page="/menu.jsp"/>

    <div class="pivot">
        <div id="content">
            <div id="content-center">
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
            </div>
        </div>
    </div>

<jsp:include page="/footer.jsp"/>