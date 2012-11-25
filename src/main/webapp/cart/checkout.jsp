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
                <section class="checkout">
                    <form action="/cart/pay" method="POST">
                        <div class="block">
                            <div class="block-head">Order Details</div>
                            <div class="block-content">
                                <div class="fluid50">
                                    <div class="form-inline content">
                                        <h2>Order Info</h2>

                                        <div class="field"><label>Company:</label><input type="text" name="name" class="validate[required]"></div>
                                        <div class="field"><label>Address:</label><input type="text" name="address" class="validate[required]"></div>
                                        <div class="field"><label>Phone:</label><input type="text" name="phone"></div>
                                        <div class="field"><label>City:</label><input type="text" name="city"></div>
                                        <div class="field"><label>Country:</label>
                                            <select name="country_id">
                                                <s:iterator value="countries">
                                                        <option value="<s:property value="id"/>"><s:property value="name"/></option>
                                                </s:iterator>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="clear"></div>
                            </div>
                        </div>
                        <div class="block">
                            <div class="block-head">Payment Method</div>
                            <div class="block-content">
                                <div class="content form-inline">
                                    <p>Please select the preferred payment method to use on this order.</p>

                                    <s:iterator value="payments">
                                        <div class="field">
                                            <input type="radio" name="payment_id" value="<s:property value="id"/>" class="validate[required]"> &nbsp;
                                            <s:property value="name"/>
                                        </div>
                                    </s:iterator>

                                    <input type="submit" value="Send Order" class="button">
                                </div>
                                <div class="clear"></div>
                            </div>
                        </div>
                    </form>
                </section>
            </div>
        </div>
    </div>

<jsp:include page="/footer.jsp"/>