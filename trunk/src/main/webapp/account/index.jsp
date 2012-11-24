<%@ page import="edu.aptech.vn.model.Order" %>
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
                <section class="content">
                    <div class="form-inline account">
                        <h2>Info</h2>

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

                        <p>
                            <label>Username: <b><s:property value="#session.user.username"/></b></label>
                        </p>

                        <form action="/account/" method="POST">
                            <div class="field"><label>Name</label><input type="text" name="name" class="validate[required]" value="<s:property value="#session.user.name"/>"></div>
                            <div class="field"><label>E-Mail</label><input type="text" name="email" class="validate[required,custom[email]]" value="<s:property value="#session.user.email"/>"></div>
                            <div class="field"><label>Password</label><input type="password" name="password"/></div>
                            <div class="field"><label>Company</label><input type="text" name="company" value="<s:property value="#session.user.company"/>"></div>
                            <div class="field"><label>Address</label><input type="text" name="address" value="<s:property value="#session.user.address"/>"></div>
                            <div class="field"><label>City</label><input type="text" name="city" value="<s:property value="#session.user.city"/>"></div>
                            <div class="field"><label>Phone</label><input type="text" name="phone" value="<s:property value="#session.user.phone"/>"></div>
                            <div class="field">
                                <label>Country</label>
                                <select name="country_id">
                                    <s:iterator value="countries">
                                        <s:if test="#session.user.country.id==id">
                                            <option value="<s:property value="id"/>" selected="selected"><s:property value="name"/></option>
                                        </s:if>
                                        <s:else>
                                            <option value="<s:property value="id"/>"><s:property value="name"/></option>
                                        </s:else>
                                    </s:iterator>
                                </select>
                            </div>
                            <div class="field"><input type="submit" value="Submit" class="button"></div>
                        </form>
                    </div>
                </section>
                <section class="order-list">
                    <h2>Orders</h2>
                    <ul>
                        <s:iterator value="userOrders">
                            <li>
                                <div>
                                    <strong>Order ID:</strong> #<s:property value="id"/><br>
                                    <strong>Date Added:</strong> <s:property value="created"/><br>
                                    <strong>Products:</strong> <s:property value="productCount"/>
                                </div>
                                <div>
                                    <strong>Status:</strong> <s:property value="statusText"/><br>
                                    <strong>Name:</strong> <s:property value="name"/><br>
                                    <strong>Total:</strong> $<s:property value="orderTotal"/>
                                </div>
                                <div>
                                    <a href="/account/order?id=<s:property value="id"/> ">View</a><br>
                                </div>
                            </li>
                        </s:iterator>
                    </ul>
                </section>
            </div>
        </div>
    </div>

<jsp:include page="/footer.jsp"/>