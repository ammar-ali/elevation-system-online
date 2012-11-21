<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<jsp:include page="/header.jsp">
    <jsp:param name="id" value="id"/>
</jsp:include>

<body>
<div class="page">

<jsp:include page="/menu.jsp"/>

<div class="pivot">
    <div id="content">
        <div id="content-center">
            <div class="flex-container">
                <div class="slider-top"></div>
                <div class="flexslider">
                    <ul class="slides">
                        <li><img src="images/slides/slide1.jpg" alt=""></li>
                        <li><img src="images/slides/slide2.jpg" alt=""></li>
                    </ul>
                </div>
                <div class="slider-bottom"></div>
            </div>
            <script type="text/javascript">
                $(window).load(function() {
                    $('.flexslider').flexslider();
                });
            </script>
            <div class="grid">
                <h2>Featured</h2>
                <div class="wrap">
                    <div class="struct">
                        <div class="frame">
                            <div class="ribbon-new"></div>
                            <a href="product.html" class="image"><img src="../os/grid1.jpg" alt="Product Name"></a>
                            <div class="name"><a href="product.html">Product Name</a></div>
                            <div class="price">$900.00</div>
                            <div class="buttons">
                                <a href="default.htm" class="button">Add to cart</a>
                                <a href="default.htm" class="button-icon icon-wish tftooltip" title="Wish List"></a>
                                <a href="default.htm" class="button-icon icon-compare tftooltip" title="Compare"></a>
                            </div>
                        </div>
                    </div>
                </div><div class="wrap">
                <div class="struct">
                    <div class="frame">
                        <div class="ribbon-sale"></div>
                        <a href="product.html" class="image"><img src="../os/grid2.jpg" alt="Product Name"></a>
                        <div class="name"><a href="product.html">Product Name</a></div>
                        <div class="price"><span class="old">$650.00</span> <span class="new">$600.00</span></div>
                        <div class="buttons">
                            <a href="default.htm" class="button">Add to cart</a>
                            <a href="default.htm" class="button-icon icon-wish tftooltip" title="Wish List"></a>
                            <a href="default.htm" class="button-icon icon-compare tftooltip" title="Compare"></a>
                        </div>
                    </div>
                </div>
            </div><div class="wrap">
                <div class="struct">
                    <div class="frame">
                        <a href="product.html" class="image"><img src="../os/grid3.jpg" alt="Product Name"></a>
                        <div class="name"><a href="product.html">Product Name</a></div>
                        <div class="price">$1200.00</div>
                        <div class="buttons">
                            <a href="default.htm" class="button">Add to cart</a>
                            <a href="default.htm" class="button-icon icon-wish tftooltip" title="Wish List"></a>
                            <a href="default.htm" class="button-icon icon-compare tftooltip" title="Compare"></a>
                        </div>
                    </div>
                </div>
            </div><div class="wrap">
                <div class="struct">
                    <div class="frame">
                        <a href="product.html" class="image"><img src="../os/grid4.jpg" alt="Product Name"></a>
                        <div class="name"><a href="product.html">Product Name</a></div>
                        <div class="price">$1100.00</div>
                        <div class="buttons">
                            <a href="default.htm" class="button">Add to cart</a>
                            <a href="default.htm" class="button-icon icon-wish tftooltip" title="Wish List"></a>
                            <a href="default.htm" class="button-icon icon-compare tftooltip" title="Compare"></a>
                        </div>
                    </div>
                </div>
            </div>
            </div>
            <div class="grid">
                <h2>Bestsellers</h2>
                <div class="wrap">
                    <div class="struct">
                        <div class="frame">
                            <a href="product.html" class="image"><img src="../os/grid5.jpg" alt="Product Name"></a>
                            <div class="name"><a href="product.html">Product Name</a></div>
                            <div class="price">$1500.00</div>
                            <div class="buttons">
                                <a href="default.htm" class="button">Add to cart</a>
                                <a href="default.htm" class="button-icon icon-wish tftooltip" title="Wish List"></a>
                                <a href="default.htm" class="button-icon icon-compare tftooltip" title="Compare"></a>
                            </div>
                        </div>
                    </div>
                </div><div class="wrap">
                <div class="struct">
                    <div class="frame">
                        <div class="ribbon-new"></div>
                        <a href="product.html" class="image"><img src="../os/grid6.jpg" alt="Product Name"></a>
                        <div class="name"><a href="product.html">Product Name</a></div>
                        <div class="price">$70.00</div>
                        <div class="buttons">
                            <a href="default.htm" class="button">Add to cart</a>
                            <a href="default.htm" class="button-icon icon-wish tftooltip" title="Wish List"></a>
                            <a href="default.htm" class="button-icon icon-compare tftooltip" title="Compare"></a>
                        </div>
                    </div>
                </div>
            </div><div class="wrap">
                <div class="struct">
                    <div class="frame">
                        <a href="product.html" class="image"><img src="../os/grid7.jpg" alt="Product Name"></a>
                        <div class="name"><a href="product.html">Product Name</a></div>
                        <div class="price">$400.00</div>
                        <div class="buttons">
                            <a href="default.htm" class="button">Add to cart</a>
                            <a href="default.htm" class="button-icon icon-wish tftooltip" title="Wish List"></a>
                            <a href="default.htm" class="button-icon icon-compare tftooltip" title="Compare"></a>
                        </div>
                    </div>
                </div>
            </div><div class="wrap">
                <div class="struct">
                    <div class="frame">
                        <div class="ribbon-sale"></div>
                        <a href="product.html" class="image"><img src="../os/grid8.jpg" alt="Product Name"></a>
                        <div class="name"><a href="product.html">Product Name</a></div>
                        <div class="price"><span class="old">$200.00</span> <span class="new">$120.00</span></div>
                        <div class="buttons">
                            <a href="default.htm" class="button">Add to cart</a>
                            <a href="default.htm" class="button-icon icon-wish tftooltip" title="Wish List"></a>
                            <a href="default.htm" class="button-icon icon-compare tftooltip" title="Compare"></a>
                        </div>
                    </div>
                </div>
            </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="/footer.jsp"/>