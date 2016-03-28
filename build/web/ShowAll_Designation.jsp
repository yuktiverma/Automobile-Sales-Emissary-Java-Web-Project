<%-- 
    Document   : ShowAll_Designation
    Created on : Apr 20, 2013, 9:25:18 AM
    Author     : ARPIT
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Display Data</title>

    </head>
    <body>
        <div style="width: 648px ; height:350px; background: white;">

            <center><div class="style1" style="width: 600px" >Inserted Designation</div> <br><br>

                <table  border=1 cellspacing="50"><tr><td>
                            <center><table >  <tr ><th class="table1" >Designation_Id</th><th>&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;</th>

                                        <th class="table1" >Designation_Name</th></tr>
                                    <tr>&nbsp;&nbsp;</tr>

        <core:forEach items="${requestScope['r'].rows}" var="data">
            <tr bgcolor='lightgray'><td class="table1">${data.Desig_Id}</td><th></th><td class="table1">${data.Desig_Name}</td><td class="table1"><a href='Show_Designation.do?Desig_Id=${data.Desig_Id}'><b> Show Full Info </b> </a></td><td>&nbsp;&nbsp;&nbsp;</td><td class="table1"><a href='Edit_Designation.do?Desig_Id=${data.Desig_Id}'><b> Edit</b> </a></td><td class="table1"><td>&nbsp;&nbsp;&nbsp;</td><td class="table1"><a href='Delete_Designation.do?Desig_Id=${data.Desig_Id}'><b> Delete</b> </a></td> </tr>
    </core:forEach>
                    </table>
                </center></td></tr></table>
            </center>
            </div>
    </body>
</html>
