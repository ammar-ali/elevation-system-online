<%@ page import="edu.aptech.vn.action.AccountAction" %>
<%@ page import="edu.aptech.vn.model.User" %>
<%@ page import="com.opensymphony.xwork2.ActionContext" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<div class="pivot">
<header>
    <div id="logo"><a href="/"><img src="/images/logo.png" alt="Oceanic Store"></a></div>
                    <span id="search">
                        <input type="text" name="filter_name">
                        <span class="button-search"></span>
                    </span>
    <br>
    <% if (!AccountAction.isLogged()) { %>
    <span id="welcome">Welcome visitor you can <a href="/account/">login</a> or <a href="/account/">create an account</a>.</span>
    <% } else { %>
    <span id="welcome">Welcome <b><s:property value="#session.user.name"/></b> you can go to <a href="/account/">your account</a> or <a href="/account/logout">logout</a>.</span>
    <% } %>

    <div id="cart" class="item">
        <div class="cart-total">
            <span class="icon show-phone hide-desktop hide-tablet"></span>$3208.00
            <div class="drop-arrow"></div>
        </div>
        <div class="cart-wrap">
            <div class="cart-text">Shopping Cart</div>
            <div class="cart-count"><s:property value="#session.cart.products.size()"/> item(s)</div>
        </div>
        <div class="drop-content">
            <div class="drop-body">
                <table class="cart-list">
                    <tbody>
                    <s:iterator value="#session.cart.products">
                        <s:iterator value="value">
                            <tr>
                                <td class="image"><a href="/product?id=<s:property value="product.id"/>"><img src="<s:property value="product.getImage()"/>" alt="<s:property value="product.name"/>"></a></td>
                                <td class="name ta-left"><a href="/product?id=<s:property value="product.id"/>"><s:property value="product.name"/></a>
                                    <div></div>
                                </td>
                                <td class="quantity ta-center"><s:property value="quantity"/></td>
                                <td class="total">$<s:property value="quantity * price"/></td>
                                <td class="remove"><a href="/cart/remove?id=<s:property value="product.id"/>" title="Remove"></a></td>
                            </tr>
                        </s:iterator>
                    </s:iterator>
                    </tbody>
                </table>
                <table class="cart-end">
                    <tbody>
                    <tr>
                        <th>Total:</th>
                        <td>$<s:property value="#session.cart.total"/></td>
                    </tr>
                    </tbody>
                </table>
                <div class="cart-buttons">
                    <a href="/cart/checkout" class="button button-small button-alt">Checkout</a>
                    <a href="/cart" class="button button-small">View Cart</a>
                </div>
            </div>
        </div>
    </div>
</header>

<nav class="nav-phone show-phone hide-desktop hide-tablet">
    <div>Menu</div>
    <select>
        <option value="/">Home</option>
        <option value="/product/">Products</option>
        <option value="/about/">About Us</option>
        <option value="/contact/">Contact</option>
        <option value="/account/">My Account</option>
        <option value="/cart/">Shopping Cart</option>
    </select>
</nav>

<nav class="nav hide-phone">
    <ul>
        <li class="tftooltip" title="Home"><a href="/"><span class="icon"></span></a></li>
        <li>
            <a href="/product/">Products</a>
        </li>
        <li>
            <a href="/about/">About Us</a>
        </li>
        <li>
            <a href="/contact/">Contact</a>
        </li>
        <li>
            <a href="/account/">My Account</a>
        </li>
        <li>
            <a href="/cart/">Shopping Cart</a>
        </li>
    </ul>
    <div class="clear"></div>
</nav>
</div>
<s:if test="title != 'Home'">
    <div class="ribbon breadcrumb">
        <div class="top"></div>
        <div class="pivot">
            <div class="center">
                <h1><s:property value="title"/> </h1>
            </div>
        </div>
        <div class="bottom"></div>
    </div>
</s:if>