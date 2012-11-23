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
                <section class="typography">
                    <h2>About Us</h2>
                    <table class="table left">
                        <thead>
                        <tr><th>Header 1</th><td>Header 2</td><td>Header 3</td><td>Header 4</td></tr>
                        </thead>
                        <tfoot>
                        <tr><th>Total:</th><td>2</td><td>3</td><td>4</td></tr>
                        </tfoot>
                        <tbody>
                        <tr><th>Row 1:</th><td>Cell 1</td><td>Cell 2</td><td>Cell 3</td></tr>
                        <tr><th>Row 2:</th><td>Cell 4</td><td>Cell 5</td><td>Cell 6</td></tr>
                        <tr><th>Row 3:</th><td>Cell 7</td><td>Cell 8</td><td>Cell 9</td></tr>
                        </tbody>
                    </table>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec in sagittis sem. Aliquam vitae egestas odio. Praesent euismod nunc vitae sapien cursus accumsan. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin ornare nisl at enim vestibulum nec cursus risus fermentum. Curabitur vestibulum, mi a pulvinar euismod, tortor purus vehicula nulla, et malesuada diam leo et leo. Integer dapibus neque ac nibh fringilla tempus. Duis sit amet orci erat. Aenean ut dolor nunc, quis dictum urna.</p>
                    <h3>Heading level 3</h3>
                    <p>Donec vel tortor lectus. Nunc eu dictum velit. <a href="/">Nam at orci ut nisi laoreet mollis</a>. Ut scelerisque pulvinar dictum. Praesent vitae enim ipsum. Quisque at lacus tellus. Nunc sed tellus ipsum. Nulla quis nunc eu neque dictum adipiscing. Donec gravida diam sed orci pellentesque ullamcorper. Suspendisse eu aliquam tortor. Sed feugiat hendrerit magna, quis tristique nibh volutpat non. Duis convallis euismod aliquet. Pellentesque sapien odio, cursus a cursus at, sollicitudin vel ligula. </p>

                    <h4>Heading level 4</h4>
                    <p><img src="/uploads/no_image.gif" alt="" class="left">Quisque lobortis mattis ullamcorper. Cras nunc odio, hendrerit ut varius quis, suscipit vitae leo. Nunc luctus, urna eget tristique lacinia, metus erat lacinia mauris, vel varius dolor turpis ut est. Morbi nec neque leo. Morbi volutpat fringilla diam, eu pharetra risus rhoncus sit amet. Duis vitae nibh rutrum nisi semper interdum vel quis nulla. Praesent mollis augue ut purus iaculis ac auctor massa laoreet. Quisque nec placerat felis.</p>
                    <h5>Heading level 5</h5>
                    <p>Donec sagittis pulvinar velit id volutpat. Praesent ullamcorper, magna sed vehicula adipiscing, eros libero porta lectus, sed euismod quam sem pellentesque libero. Maecenas iaculis aliquet auctor. Suspendisse sit amet nisl elit. Morbi sapien ipsum, porta sit amet laoreet eu, posuere id nunc. Aenean ultrices, libero vel viverra volutpat, mauris nulla volutpat nisi, eu lobortis ipsum elit a mi. Praesent et dolor a tortor adipiscing aliquet. Vestibulum ut eros eu odio dictum pulvinar. Vestibulum id augue leo, ac malesuada nulla. Duis sed felis vel tellus tempor pretium. Vestibulum eget nisl vel erat commodo venenatis at et ante. Nam a leo purus.</p>
                    <hr>
                    <p><img src="/uploads/no_image.gif" alt="" class="right">Suspendisse aliquam dignissim lacus, at ullamcorper velit eleifend vel. Etiam nec sem id purus adipiscing pellentesque. Donec ut enim magna, sit amet aliquet lorem. Nullam eu sem id turpis iaculis tempus fringilla sed sem. Quisque fringilla purus ut nisi vulputate mattis. Donec vehicula lorem et mauris vehicula blandit. Donec sagittis sem ac elit feugiat dignissim. Nulla tristique tellus eu eros ullamcorper et laoreet magna venenatis. Aenean posuere commodo sollicitudin. Pellentesque sodales fringilla odio, eu rutrum turpis ultricies tristique. Morbi vitae urna dolor, eget tempor quam. Duis rhoncus, nisi vitae pulvinar lobortis, eros orci condimentum dui, viverra porta est urna eget arcu. Pellentesque ac tellus odio. Nam justo lacus, scelerisque eu euismod suscipit, imperdiet ut tellus.</p>
                    <div class="clear"></div>
                </section>
            </div>
        </div>
    </div>

<jsp:include page="/footer.jsp"/>