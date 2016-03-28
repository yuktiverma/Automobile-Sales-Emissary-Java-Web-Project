<%-- 
    Document   : BranchNameTable
    Created on : May 2, 2013, 1:35:30 PM
    Author     : Acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%@taglib uri="http://displaytag.sf.net" prefix="d" %>
        <d:table export="true" style="background-color:#666666;" name="sessionScope.BranchNameBean.all1">
            <d:setProperty name="export.pdf" value="true"></d:setProperty>
            <d:setProperty name="export.xml" value="false"></d:setProperty>
            <d:column sortable="true" style="background-color:#ffffff;" property="basemodel_id" title="Basemodel_id"></d:column>
            <d:column style="background-color:#ffffff;" property="basemodel_name" title="Basemodel_name"></d:column>
            <d:column style="background-color:#ffffff;" property="acc_target" title="Acc_target"></d:column>
            <d:column style="background-color:#ffffff;" property="model_id" title="Model_id"></d:column>
            <d:column style="background-color:#ffffff;" property="model_name" title="Model_name"></d:column>
            <d:column style="background-color:#ffffff;" property="engine" title="Engine"></d:column>
            <d:column style="background-color:#ffffff;" property="capacity" title="Capacity"></d:column>
            <d:column style="background-color:#ffffff;" property="dealer_margin" title="Dealer_margin"></d:column>
            <d:column style="background-color:#ffffff;" property="color_id" title="Color_id"></d:column>
            <d:column style="background-color:#ffffff;" property="color_name" title="Color_name"></d:column>
        </d:table>
      </body>
</html>
