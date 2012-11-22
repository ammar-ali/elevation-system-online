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

            <section class="grid">
                <s:iterator value="products">
                    <div class="wrap">
                        <div class="struct">
                            <div class="frame">
                                <a href="/product?id=<s:property value="id"/>" class="image"><img src="<s:property value="getImage()"/>" alt="<s:property value="name"/>"></a>
                                <div class="name"><a href="/product?id=<s:property value="id"/>"><s:property value="name"/></a></div>
                                <div class="price">$<s:property value="price"/></div>
                                <div class="buttons">
                                    <a href="/cart/add?id=<s:property value="id"/>&q=1" class="button">Add to cart</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </s:iterator>
            </section>
            <div class="pagination">
                <div class="links">
                    <b>1</b>
                    <a href="default.htm">2</a>
                    <a href="default.htm">3</a>
                    <a href="default.htm">></a>
                </div>
                <div class="result">Showing 1 to 5 of 12 (3 Pages)</div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="/footer.jsp"/>