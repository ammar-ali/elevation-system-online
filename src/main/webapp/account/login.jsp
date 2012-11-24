<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<jsp:include page="/header.jsp">
    <jsp:param name="title" value="title"/>
</jsp:include>

<body>
<div class="page">

    <jsp:include page="/menu.jsp">
        <jsp:param name="title" value="title"/>
    </jsp:include>

    <div class="pivot">
        <div id="content">
            <div id="content-center">
                <s:if test="hasActionErrors()">
                    <div class="errors">
                        <s:actionerror/>
                    </div>
                </s:if>
                <section class="fluid50">
                    <div class="content">
                        <h2>New Customer</h2>
                        <p><b>Register Account</b><br>By creating an account you will be able to shop faster, be up to date on an order's status, and keep track of the orders you have previously made.</p>
                        <a href="/account/register/" class="button">Continue</a>
                    </div>
                </section>
                <section class="fluid50">
                    <div class="content">
                        <h2>Returning Customer</h2>
                        <div class="form-inline">
                            <form action="/account/login" method="POST" id="login">
                                <p>I am a returning customer</p>
                                <div class="field">
                                    <label>Username:</label>
                                    <input type="text" name="username" class="validate[required]" id="username">
                                </div>
                                <div class="field">
                                    <label>Password:</label>
                                    <input type="password" name="password" class="validate[required]" id="password">
                                </div>
                                <div class="field">
                                    <input type="submit" value="Continue" class="button">
                                </div>
                            </form>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </div>

<jsp:include page="/footer.jsp"/>