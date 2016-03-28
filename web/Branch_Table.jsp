<%--
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <%@taglib  uri="http://displaytag.sf.net" prefix="d" %>
        <d:table export="true" style="background-color:#666666;" name="sessionScope.MiscListBean.al">
            <d:setProperty name="export.pdf" value="true"></d:setProperty>
            <d:setProperty name="export.xml" value="false"></d:setProperty>
            <d:column sortable="true" style="background-color:#ffffff;" property="branch_id" title="Branch_Id"></d:column>
            <d:column style="background-color:#ffffff;" property="org_id" title="Org_Id"></d:column>
            <d:column style="background-color:#ffffff;" property="branch_name" title="Branch_Name"></d:column>
            <d:column style="background-color:#ffffff;" property="branch_streetadd" title="Branch_StreetAddress"></d:column>
            <d:column style="background-color:#ffffff;" property="branch_city" title="Branch_City"></d:column>
            <d:column style="background-color:#ffffff;" property="branch_state" title="Branch_State"></d:column>
            <d:column style="background-color:#ffffff;" property="branch_zip" title="Branch_ZipCode"></d:column>
            <d:column style="background-color:#ffffff;" property="branch_country" title="Branch_Country"></d:column>
            <d:column style="background-color:#ffffff;" property="branch_phn1" title="Branch_Phone1"></d:column>
            <d:column style="background-color:#ffffff;" property="branch_phn2" title="Branch_Phone2"></d:column>
            <d:column style="background-color:#ffffff;" property="branch_fax" title="Branch_Fax"></d:column>
        </d:table>
    </body>
</html>