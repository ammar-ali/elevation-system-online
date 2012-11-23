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
                <section class="order-list">
                    <h2>Orders</h2>
                    <ul>
                        <s:iterator value="#session.user.orders" var="o">
                            <li>
                                <div>
                                    <strong>Order ID:</strong> #<s:property value="id"/><br>
                                    <strong>Date Added:</strong> <s:property value="created"/><br>
                                    <strong>Products:</strong> <s:property value="#o.productCount"/>
                                </div>
                                <div>
                                    <strong>Status:</strong> <s:property value="#o.statusText"/><br>
                                    <strong>Customer:</strong> <s:property value="name"/><br>
                                    <strong>Total:</strong> $<s:property value="#o.orderTotal"/>
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