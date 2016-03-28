<%-- 
    Document   : EmployeeTable
    Created on : 2 May, 2013, 3:30:18 PM
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
        <d:table export="true" style="background-color:#666666;" name="sessionScope.EmployeeBean.all1">
            <d:setProperty name="export.pdf" value="true"></d:setProperty>
            <d:setProperty name="export.xml" value="false"></d:setProperty>
            <d:column sortable="true" style="background-color:#ffffff;" property="empid" title="Emp_Id"></d:column>
            <d:column style="background-color:#ffffff;" property="empcode" title="Emp_COde"></d:column>
            <d:column style="background-color:#ffffff;" property="branchid" title="Branch_Id"></d:column>
            <d:column style="background-color:#ffffff;" property="fname" title="F_Name"></d:column>
            <d:column style="background-color:#ffffff;" property="lname" title="L_Name"></d:column>
            <d:column style="background-color:#ffffff;" property="c_add" title="C_Street"></d:column>
            <d:column style="background-color:#ffffff;" property="c_city" title="C_City"></d:column>
            <d:column style="background-color:#ffffff;" property="c_state" title="C_State"></d:column>
            <d:column style="background-color:#ffffff;" property="c_zc" title="C_ZipCode"></d:column>
            <d:column style="background-color:#ffffff;" property="c_country" title="C_Country"></d:column>
            <d:column style="background-color:#ffffff;" property="c_phn1" title="C_Phn1"></d:column>
            <d:column style="background-color:#ffffff;" property="c_phn2" title="C_Phn2"></d:column>
            <d:column style="background-color:#ffffff;" property="c_mobile" title="C_Mobile"></d:column>
            <d:column style="background-color:#ffffff;" property="p_add" title="P_Street"></d:column>
            <d:column style="background-color:#ffffff;" property="p_city" title="P_City"></d:column>
            <d:column style="background-color:#ffffff;" property="p_state" title="P_State"></d:column>
            <d:column style="background-color:#ffffff;" property="p_zc" title="P_ZipCode"></d:column>
            <d:column style="background-color:#ffffff;" property="p_country" title="P_Country"></d:column>
            <d:column style="background-color:#ffffff;" property="p_phn1" title="P_Phn1"></d:column>
            <d:column style="background-color:#ffffff;" property="p_phn2" title="P_Phn2"></d:column>
            <d:column style="background-color:#ffffff;" property="p_mobile" title="P_Mobile"></d:column>
            <d:column style="background-color:#ffffff;" property="email" title="Email"></d:column>
            <d:column style="background-color:#ffffff;" property="doj" title="DateOfJoining"></d:column>
            <d:column style="background-color:#ffffff;" property="dol" title="DateOfLeaving"></d:column>

        </d:table>
      </body>

</html>
