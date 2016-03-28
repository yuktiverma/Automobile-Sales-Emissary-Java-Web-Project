<%-- 
    Document   : TargetTable
    Created on : 3 May, 2013, 12:51:16 PM
    Author     : Shimmu
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
        <d:table export="true" style="background-color:#666666;" name="sessionScope.TargetBaseBean.all1">
            <d:setProperty name="export.pdf" value="true"></d:setProperty>
            <d:setProperty name="export.xml" value="false"></d:setProperty>
            <d:column sortable="true" style="background-color:#ffffff;" property="target_id" title="Target_Id"></d:column>
            <d:column style="background-color:#ffffff;" property="basemodel_id" title="BaseModel_Id"></d:column>
            <d:column style="background-color:#ffffff;" property="model_id" title="Model_Id"></d:column>
            <d:column style="background-color:#ffffff;" property="no_of_pro" title="No_Of_Product"></d:column>
            <d:column style="background-color:#ffffff;" property="month_id" title="Month_Id"></d:column>
            <d:column style="background-color:#ffffff;" property="taget_desc" title="Target_Desc"></d:column>
            <d:column style="background-color:#ffffff;" property="year" title="Year"></d:column>

        </d:table>
      </body>

</html>
