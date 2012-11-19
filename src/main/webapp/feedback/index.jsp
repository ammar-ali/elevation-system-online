<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title>Hello World</title>
<s:head />
</head>
<body>
   <s:form action="add" method="POST">
   <s:textfield name="name" id="name" label="name"/>
   <s:textfield name="email" id="email" label="email"/>
   <s:textfield name="description" id="description" label="description"/>
   <s:textfield name="rating" id="rating" label="rating"/>
   <s:hidden name="created" id="created" value=""/>
   <s:submit/>
   <hr/>
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
   </s:form>
</body>
</html>