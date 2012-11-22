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
        <aside id="content-left">
            <section class="grid">
                <h2>Featured</h2>
                <s:iterator value="featuredProducts">
                    <div class="wrap">
                        <div class="struct">
                            <div class="frame">
                                <a href="/product?id=<s:property value="id"/>" class="image"><img src="<s:property value="getImage()"/>" alt="<s:property value="name"/>"></a>
                                <div class="name"><a href="/product?id=<s:property value="id"/>"><s:property value="name"/></a></div>
                                <div class="price">$<s:property value="price"/></div>
                            </div>
                        </div>
                    </div>
                </s:iterator>
            </section>
        </aside>
        <div id="content-center">
            <section class="product-info">
                <div class="left">
                    <img src="<s:property value="product.getImage()"/>" alt="image">
                </div>
                <div class="right">
                    <div class="description">
                        <div class="price">
                            <div class="price-new">$<s:property value="product.price"/></div>
                        </div>
                    </div>

                    <div class="cart">
                        <a href="/cart/add?id=<s:property value="product.id"/>&q=1" class="button">Add to cart</a>
                    </div>

                </div>
            </section>

            <div id="tab-description" class="typography product-description">
                <s:property value="product.description"/>
            </div>
        </div>
    </div>
</div>

<jsp:include page="/footer.jsp"/>