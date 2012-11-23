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
                <section class="content">
                    <div class="form-inline">
                        <h2>Contact Form</h2>

                        <s:if test="hasActionMessages()">
                            <div class="messages">
                                <s:actionmessage/>
                            </div>
                        </s:if>

                        <form action="/contact/add" method="POST">
                            <div class="field"><label>Name</label><input type="text" name="name"></div>
                            <div class="field"><label>E-Mail</label><input type="text" name="email"></div>
                            <div class="field">
                                <label>Rating</label>
                                <select name="rating">
                                    <option value="10">10</option>
                                    <option value="9">9</option>
                                    <option value="8">8</option>
                                    <option value="7">7</option>
                                    <option value="6">6</option>
                                    <option value="5">5</option>
                                    <option value="4">4</option>
                                    <option value="3">3</option>
                                    <option value="2">2</option>
                                    <option value="1">1</option>
                                </select>
                            </div>
                            <div class="field"><label>Description</label><textarea rows="8" style="width: 80%" name="description"></textarea></div>
                            <div class="field"><input type="submit" value="Submit" class="button"></div>
                        </form>
                    </div>
                </section>
            </div>
        </div>
    </div>

<jsp:include page="/footer.jsp"/>