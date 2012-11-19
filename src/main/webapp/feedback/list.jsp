<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
    <title>Hello World</title>
    <s:head />
</head>
<body>
    <table>
        <tr>
            <td>name</td>
            <td>email</td>
            <td>description</td>
            <td>rating</td>
            <td>created</td>
        </tr>
        <s:iterator value="feedbacks">
            <tr>
                <td><s:property value="name"/></td>
                <td><s:property value="email"/></td>
                <td><s:property value="description"/></td>
                <td><s:property value="rating"/></td>
                <td><s:property value="created"/>
            </tr>
        </s:iterator>
    </table>
</body>
</html>