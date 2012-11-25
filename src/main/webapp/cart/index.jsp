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
                <section class="cart">
                    <div class="content">
                        <s:if test="#session.cart!=null">
                            <table class="table left" style="width: 100%;">
                                <thead>
                                <tr>
                                    <td class="hide-phone">Image</td>
                                    <td class="ta-left">Product Name</td>
                                    <td class="ta-left">Quantity</td>
                                    <td class="ta-right">Unit Price</td>
                                    <td class="ta-right">Total</td>
                                    <td class="ta-right">Action</td>
                                </tr>
                                </thead>
                                <tfoot>
                                <tr>
                                    <td colspan="6">
                                        <div class="float-right">
                                            $<s:property value="#session.cart.total"/>
                                    </div>
                                        <div class="float-right ta-right" style="padding-right: 10px; font-weight: bold;">
                                            Total:
                                        </div>
                                    </td>
                                </tr>
                                </tfoot>
                                <tbody>
                                <s:iterator value="#session.cart.products">
                                    <s:iterator value="value">
                                        <tr>
                                            <td width="1" class="ta-center hide-phone product">
                                                <a href="/product?id=<s:property value="product.id"/>"><img src="<s:property value="product.getImage()"/>" alt="<s:property value="product.name"/>"></a>
                                            </td>
                                            <td><a href="/product?id=<s:property value="product.id"/>"><s:property value="product.name"/></a></td>
                                            <td><s:property value="quantity"/></td>
                                            <td class="ta-right">$<s:property value="price"/></td>
                                            <td class="ta-right">$<s:property value="quantity * price"/></td>
                                            <td class="ta-right"><a href="/cart/remove?id=<s:property value="product.id"/>">Remove</a></td>
                                        </tr>
                                    </s:iterator>
                                </s:iterator>
                                </tbody>
                            </table>
                            <div class="buttons">
                                <div class="right"><a href="/cart/checkout" class="button button-alt">Checkout</a></div>
                                <div class="clear"></div>
                            </div>
                        </s:if>
                        <div class="buttons">
                            <div class="left"><a href="/" class="button">Continue Shopping</a></div>
                            <div class="clear"></div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </div>

<jsp:include page="/footer.jsp"/>