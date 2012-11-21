<%@ taglib prefix="s" uri="/struts-tags" %>
<div id="menu">
    <div class="pivot">
        <div class="separator float-right hide-phone"></div>
        <div class="item float-right" id="language">
            <span class="light"><div><span class="icon icon-l"></span>Language</div></span>

            <div class="drop-arrow"></div>
            <div class="drop-content">
                <div class="drop-body">
                    <ul>
                        <li><a href="default.htm"><img alt="Russian" src="../os/lang-ru.png">Russian</a></li>
                        <li><a href="default.htm"><img alt="Belorussian" src="../os/lang-by.png">Belorussian</a></li>
                        <li><a href="default.htm"><img alt="Ukrainian" src="../os/lang-ua.png">Ukrainian</a></li>
                        <li><a href="default.htm"><img alt="English" src="../os/lang-en.png">English</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="separator float-right"></div>
        <div class="item float-right">
            <span class="light"><div><span class="icon icon-money"></span>US Dollar</div></span>

            <div class="drop-arrow"></div>
            <div class="drop-content">
                <div class="drop-body">
                    <ul>
                        <li><a href="default.htm">Euro</a></li>
                        <li><a href="default.htm">Pesos</a></li>
                        <li><a href="default.htm">Pound Sterling</a></li>
                        <li><a href="default.htm">US Dollar</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="separator float-right"></div>

        <div class="separator hide-phone"></div>
        <div class="item"><a class="light" href="login.html">
            <div><span class="icon icon-heart"></span>Wish List (0)</div>
        </a></div>
        <div class="separator"></div>
        <div class="item"><a class="light" href="login.html">
            <div><span class="icon icon-user"></span>My Account</div>
        </a></div>
        <div class="separator"></div>
        <div class="item"><a class="light" href="cart.html">
            <div><span class="icon icon-basket"></span>Shopping Cart</div>
        </a></div>
        <div class="separator"></div>
        <div class="item"><a class="light" href="checkout.html">
            <div><span class="icon icon-card"></span>Checkout</div>
        </a></div>
        <div class="separator"></div>
    </div>
</div>
<div class="pivot">
<header>
    <div id="logo"><a href="index.html"><img src="images/logo.png" alt="Oceanic Store"></a></div>
                    <span id="search">
                        <input type="text" name="filter_name">
                        <span class="button-search"></span>
                    </span>
    <br>
    <span id="welcome">Welcome visitor you can <a href="login.html">login</a> or <a href="login.html">create an
        account</a>.</span>

    <div id="cart" class="item">
        <div class="cart-total">
            <span class="icon show-phone hide-desktop hide-tablet"></span>$3208.00
            <div class="drop-arrow"></div>
        </div>
        <div class="cart-wrap">
            <div class="cart-text">Shopping Cart</div>
            <div class="cart-count">4 item(s)</div>
        </div>
        <div class="drop-content">
            <div class="drop-body">
                <table class="cart-list">
                    <tbody>
                    <tr>
                        <td class="image"><a href="product.html"><img src="../os/cart1.jpg" alt="Product Name"></a></td>
                        <td class="name ta-left"><a href="product.html">Product Name</a>

                            <div></div>
                        </td>
                        <td class="quantity ta-center">2</td>
                        <td class="total">$1800.00</td>
                        <td class="remove">
                            <div></div>
                        </td>
                    </tr>
                    <tr>
                        <td class="image"><a href="product.html"><img src="../os/cart2.jpg" alt="Product Name"></a></td>
                        <td class="name ta-left"><a href="product.html">Product Name</a>

                            <div></div>
                        </td>
                        <td class="quantity ta-center">1</td>
                        <td class="total">$600.00</td>
                        <td class="remove">
                            <div></div>
                        </td>
                    </tr>
                    <tr>
                        <td class="image"><a href="product.html"><img src="../os/cart3.jpg" alt="Product Name"></a></td>
                        <td class="name ta-left"><a href="product.html">Product Name</a>

                            <div></div>
                        </td>
                        <td class="quantity ta-center">1</td>
                        <td class="total">$800.00</td>
                        <td class="remove">
                            <div></div>
                        </td>
                    </tr>
                    </tbody>
                </table>
                <table class="cart-end">
                    <tbody>
                    <tr>
                        <th>Sub-Total:</th>
                        <td>$3200.00</td>
                    </tr>
                    <tr>
                        <th>Eco Tax (-2.00):</th>
                        <td>$8.00</td>
                    </tr>
                    <tr>
                        <th>Total:</th>
                        <td>$3208.00</td>
                    </tr>
                    </tbody>
                </table>
                <div class="cart-buttons">
                    <a href="checkout.html" class="button button-small button-alt">Checkout</a>
                    <a href="cart.html" class="button button-small">View Cart</a>
                </div>
            </div>
        </div>
    </div>
</header>

<nav class="nav-phone show-phone hide-desktop hide-tablet">
    <div>Menu</div>
    <select>
        <option>Home</option>
        <option>Computers</option>
        <option>Electronics</option>
        <option>Books</option>
        <option>Clothing</option>
        <option>Shoes</option>
        <option>Industrial</option>
        <option>Toys</option>
        <option>Watches</option>
        <option>Fabric</option>
    </select>
</nav>

<nav class="nav hide-phone">
    <ul>
        <li class="tftooltip" title="Home"><a href="index.html"><span class="icon"></span></a></li>
        <li>
            <a href="list.html">Computers</a>

            <div class="sub-arrow"></div>
            <div class="sub-content">
                <div class="sub-body">
                    <ul>
                        <li><a href="list.html">Desktops</a></li>
                        <li><a href="list.html">Software</a></li>
                        <li><a href="list.html">Components</a></li>
                    </ul>
                    <ul>
                        <li><a href="list.html">Monitors</a></li>
                        <li><a href="list.html">Laptops</a></li>
                        <li><a href="list.html">Tablets</a></li>
                    </ul>
                </div>
            </div>
        </li>
        <li>
            <a href="list.html">Electronics</a>

            <div class="sub-arrow"></div>
            <div class="sub-content">
                <div class="sub-body">
                    <ul>
                        <li><a href="list.html">MP3 Players</a></li>
                        <li><a href="list.html">Cameras</a></li>
                        <li><a href="list.html">Phones</a></li>
                    </ul>
                    <ul>
                        <li><a href="list.html">Home Audio</a></li>
                        <li><a href="list.html">Television</a></li>
                    </ul>
                </div>
            </div>
        </li>
        <li>
            <a href="list.html">Books</a>

            <div class="sub-arrow"></div>
            <div class="sub-content">
                <div class="sub-body">
                    <ul>
                        <li><a href="list.html">History</a></li>
                        <li><a href="list.html">Romance</a></li>
                        <li><a href="list.html">Travel</a></li>
                        <li><a href="list.html">Comics</a></li>
                        <li><a href="list.html">Cookbooks</a></li>
                        <li><a href="list.html">Professional</a></li>
                    </ul>
                    <ul>
                        <li><a href="list.html">Audiobooks</a></li>
                        <li><a href="list.html">Children's Books</a></li>
                        <li><a href="list.html">Crafts, Hobbies</a></li>
                        <li><a href="list.html">Politics</a></li>
                        <li><a href="list.html">Biographies</a></li>
                    </ul>
                </div>
            </div>
        </li>
        <li>
            <a href="list.html">Clothing</a>

            <div class="sub-arrow"></div>
            <div class="sub-content">
                <div class="sub-body">
                    <ul>
                        <li><a href="list.html">Women</a></li>
                        <li><a href="list.html">Men</a></li>
                        <li><a href="list.html">Juniors</a></li>
                    </ul>
                    <ul>
                        <li><a href="list.html">Kids</a></li>
                        <li><a href="list.html">Baby</a></li>
                        <li><a href="list.html">Accessories</a></li>
                    </ul>
                </div>
            </div>
        </li>
        <li>
            <a href="list.html">Shoes</a>

            <div class="sub-arrow"></div>
            <div class="sub-content">
                <div class="sub-body">
                    <ul>
                        <li><a href="list.html">Women's</a></li>
                        <li><a href="list.html">Men's</a></li>
                    </ul>
                    <ul>
                        <li><a href="list.html">Kids</a></li>
                        <li><a href="list.html">Sportswear</a></li>
                    </ul>
                </div>
            </div>
        </li>
        <li><a href="list.html">Industrial</a></li>
        <li><a href="list.html">Toys</a></li>
        <li><a href="list.html">Watches</a></li>
        <li>
            <a href="list.html">Fabric</a>

            <div class="sub-arrow"></div>
            <div class="sub-content">
                <div class="sub-body">
                    <ul>
                        <li><a href="list.html">Batik</a></li>
                        <li><a href="list.html">Calico</a></li>
                        <li><a href="list.html">Knits</a></li>
                        <li><a href="list.html">Lace</a></li>
                    </ul>
                    <ul>
                        <li><a href="list.html">Leather</a></li>
                        <li><a href="list.html">Linen</a></li>
                        <li><a href="list.html">Muslin</a></li>
                        <li><a href="list.html">Satin</a></li>
                    </ul>
                    <ul>
                        <li><a href="list.html">Silk</a></li>
                        <li><a href="list.html">Toile</a></li>
                        <li><a href="list.html">Tulle</a></li>
                    </ul>
                </div>
            </div>
        </li>
    </ul>
    <div class="clear"></div>
</nav>
</div>