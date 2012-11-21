<%@ taglib prefix="s" uri="/struts-tags" %>
<div class="ribbon">
    <div class="top"></div>
    <div class="pivot">
        <div class="center">
            <div class="column" id="about-us">
                <img class="logo" src="images/logo.png" alt="Oceanic Store">
                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec in sagittis sem. Aliquam vitae egestas odio. Praesent euismod nunc vitae sapien cursus accumsan. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.
            </div>

            <div class="column">
                <h2>Contact Us</h2>
                <ul id="contacts">
                    <li>
                        <div class="icon phone"></div>
                        <div>0-000-000-00-00</div>
                        <div>0-000-000-00-00</div>
                    </li>
                    <li class="one">
                        <div class="icon fax"></div>
                        <div>0-000-000-00-00</div>
                        <div></div>
                    </li>
                    <li class="one">
                        <div class="icon email"></div>
                        <div>sample@sample.net</div>
                        <div></div>
                    </li>
                    <li class="one">
                        <div class="icon address"></div>
                        <div>Vidnoe 52</div>
                        <div></div>
                    </li>
                    <li class="one">
                        <div class="icon skype"></div>
                        <div>Username</div>
                        <div></div>
                    </li>
                </ul>
            </div>
            <div class="column hide-phone">
                <h2>Twitter</h2>
                <ul class="tweet_list">
                    <li class="tweet_first tweet_odd">
                        <span class="tweet_text"><img src="../os/avatar.png" alt="Username">Lorem ipsum dolor sit amet, consectetur adipiscing elit. <a href="default.htm">link</a></span>
                        <span class="tweet_time"><a href="default.htm" title="view tweet on twitter">about 7 hours ago</a></span>
                        <span class="tweet_icon"></span>
                    </li>
                    <li class="tweet_even">
                        <span class="tweet_text"><img src="../os/avatar.png" alt="Username">Lorem ipsum dolor sit amet, consectetur adipiscing elit. <a href="default.htm">link</a></span>
                        <span class="tweet_time"><a href="default.htm" title="view tweet on twitter">about 7 hours ago</a></span>
                        <span class="tweet_icon"></span>
                    </li>
                    <li class="tweet_odd">
                        <span class="tweet_text"><img src="../os/avatar.png" alt="Username">Lorem ipsum dolor sit amet, consectetur adipiscing elit. <a href="default.htm">link</a></span>
                        <span class="tweet_time"><a href="default.htm" title="view tweet on twitter">about 7 hours ago</a></span>
                        <span class="tweet_icon"></span>
                    </li>
                </ul>
            </div>
            <div class="column hide-phone hide-tablet">
                <h2>Facebook</h2>

                <script type="text/javascript" src="../../static.ak.connect.facebook.com/js/api_lib/v0.4/FeatureLoader.js.php/en_US"></script>
                <script type="text/javascript">FB.init("1690883eb733618b294e98cb1dfba95a");</script>
                <div id="facebook">
                    <script type="text/javascript">
                        var l = window.location;
                        var p = l.protocol + '//' + l.host + l.pathname.toString().replace(/\/[^\/]+$/, '../');

                        /* FACEBOOK ID */
                        var fbId = '109822959866';
                        var fbCSS = p + 'css/facebook.css';

                        document.write('<fb:fan profile_id="' + fbId + '" stream="0" connections="6" logobar="0" width="220" height="250" css="' + fbCSS + '"></fb:fan>');
                    </script>
                </div>
            </div>
        </div>
    </div>
    <div class="bottom"></div>
</div>

<div class="pivot">
    <footer>
        <div class="column first">
            <h2>Information</h2>
            <ul>
                <li><a href="about.html">About Us</a></li>
                <li><a href="default.htm">Delivery Information</a></li>
                <li><a href="default.htm">Privacy Policy</a></li>
                <li><a href="default.htm">Terms & Conditions</a></li>
            </ul>
        </div>
        <div class="column">
            <h2>Customer Service</h2>
            <ul>
                <li><a href="contacts.html">Contact Us</a></li>
                <li><a href="default.htm">Returns</a></li>
                <li><a href="sitemap.html">Site Map</a></li>
            </ul>
        </div>
        <div class="column">
            <h2>Extras</h2>
            <ul>
                <li><a href="default.htm">Brands</a></li>
                <li><a href="default.htm">Gift Vouchers</a></li>
                <li><a href="default.htm">Affiliates</a></li>
                <li><a href="default.htm">Specials</a></li>
            </ul>
        </div>
        <div class="column last">
            <h2>My Account</h2>
            <ul>
                <li><a href="login.html">My Account</a></li>
                <li><a href="orders.html">Order History</a></li>
                <li><a href="default.htm">Wish List</a></li>
                <li><a href="default.htm">Newsletter</a></li>
            </ul>
        </div>
    </footer>
    <div id="copyright">
        <div class="float-right">Powered By Oceanic Store</div>
        Theme by <a href="../../themefest.ru/default.htm" target="_blank">ThemeFest</a>

        <div class="clear"></div>
    </div>
</div>
</div>
</body>
</html>