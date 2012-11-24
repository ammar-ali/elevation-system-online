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
                        <b>Date Added:</b> 10/05/2012<br>
                        <b>Payment Method:</b> Cash On Delivery<br>
                        <b>Shipping Method:</b> Flat Shipping Rate<br><br>
                    </p>

                    <div class="fluid50">
                        <h2>Payment Address</h2>
                        Address 1<br>
                        Ocenic 11s<br>
                        Angus<br>
                        United Kingdom
                    </div>
                    <div class="fluid50">
                        <h2>Shipping Address</h2>
                        Address 1<br>
                        Ocenic 11s<br>
                        Angus<br>
                        United Kingdom
                    </div>
                    <div class="clear"></div>

                    <h2>Products</h2>
                    <table class="table" width="100%">
                        <thead>
                        <tr>
                            <td class="ta-left">Product Name</td>
                            <td class="ta-left hide-phone">Model</td>
                            <td class="ta-right">Quantity</td>
                            <td class="ta-right">Price</td>
                            <td class="ta-right">Total</td>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td class="ta-left">Product Name</td>
                            <td class="ta-left hide-phone">product 1</td>
                            <td class="ta-right">2</td>
                            <td class="ta-right">$900.00</td>
                            <td class="ta-right">$1800.00</td>
                        </tr>
                        <tr>
                            <td class="ta-left">Product Name</td>
                            <td class="ta-left hide-phone">product 2</td>
                            <td class="ta-right">1</td>
                            <td class="ta-right">$600.00</td>
                            <td class="ta-right">$600.00</td>
                        </tr>
                        <tr>
                            <td class="ta-left">Product Name</td>
                            <td class="ta-left hide-phone">product 3</td>
                            <td class="ta-right">1</td>
                            <td class="ta-right">$800.00</td>
                            <td class="ta-right">$800.00</td>
                        </tr>
                        </tbody>
                        <tfoot>
                        <tr>
                            <td colspan="5">
                                <div class="float-right">
                                    $3200.00<br>
                                    $8.00<br>
                                    $3208.00
                                </div>
                                <div class="float-right ta-right" style="padding-right: 10px; font-weight: bold;">
                                    Sub-Total:<br>
                                    Eco Tax (-2.00):<br>
                                    Total:
                                </div>
                            </td>
                        </tr>
                        </tfoot>
                    </table>

                    <h2>Order History</h2>
                    <table class="table" width="100%">
                        <thead>
                        <tr>
                            <td class="ta-left" width="20%">Date Added</td>
                            <td class="ta-left">Status</td>
                            <td class="ta-left">Comment</td>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td class="ta-left va-top">11/05/2012</td>
                            <td class="ta-left va-top">Pending</td>
                            <td class="ta-left va-top">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec in sagittis sem. Aliquam vitae egestas odio. Praesent euismod nunc vitae sapien cursus accumsan.</td>
                        </tr>
                        <tr>
                            <td class="ta-left va-top">15/05/2012</td>
                            <td class="ta-left va-top">Pending</td>
                            <td class="ta-left va-top">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec in sagittis sem. Aliquam vitae egestas odio. Praesent euismod nunc vitae sapien cursus accumsan.</td>
                        </tr>
                        </tbody>
                    </table>
                    <a href="/account/" class="button">Back</a>
                </section>
            </div>
        </div>
    </div>

<jsp:include page="/footer.jsp"/>