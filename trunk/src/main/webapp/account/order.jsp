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

                <s:if test="hasActionErrors()">
                    <div class="errors">
                        <s:actionerror/>
                    </div>
                </s:if>

                <section class="content">

                    <h2>Order Details</h2>

                    <p>
                        <b>Order ID:</b> #<s:property value="order.id"/> <br>
                        <b>Date Added:</b> <s:property value="order.created"/><br>
                        <b>Payment Method:</b> <s:property value="order.payment.name"/><br>
                        <b>Status:</b> <s:property value="order.statusText"/><br>
                    </p>

                    <div class="fluid50">
                        <h2>Payment Info</h2>
                        <s:property value="#session.user.name"/><br>
                        <s:property value="#session.user.address"/><br>
                        <s:property value="#session.user.phone"/><br>
                        <s:property value="#session.user.city"/><br>
                        <s:property value="#session.user.country.name"/><br>
                    </div>
                    <div class="fluid50">
                        <h2>Shipping Info</h2>
                        <s:property value="order.name"/><br>
                        <s:property value="order.address"/><br>
                        <s:property value="order.phone"/><br>
                        <s:property value="order.city"/><br>
                        <s:property value="order.country.name"/><br>
                    </div>
                    <div class="clear"></div>

                    <h2>Products</h2>
                    <table class="table" width="100%">
                        <thead>
                        <tr>
                            <td class="ta-left">Product Name</td>
                            <td class="ta-right">Quantity</td>
                            <td class="ta-right">Price</td>
                            <td class="ta-right">Total</td>
                        </tr>
                        </thead>
                        <tbody>
                        <s:iterator value="order.orderProducts">
                            <tr>
                                <td class="ta-left"><s:property value="product.name"/></td>
                                <td class="ta-right"><s:property value="quantity"/></td>
                                <td class="ta-right"><s:property value="price"/></td>
                                <td class="ta-right"><s:property value="quantity * price"/></td>
                            </tr>
                        </s:iterator>
                        </tbody>
                        <tfoot>
                        <tr>
                            <td colspan="5">
                                <div class="float-right">
                                    $<s:property value="order.orderTotal"/>
                                </div>
                                <div class="float-right ta-right" style="padding-right: 10px; font-weight: bold;">
                                    Total:
                                </div>
                            </td>
                        </tr>
                        </tfoot>
                    </table>
                    <a href="/account/" class="button">Back</a>
                </section>
            </div>
        </div>
    </div>

<jsp:include page="/footer.jsp"/>