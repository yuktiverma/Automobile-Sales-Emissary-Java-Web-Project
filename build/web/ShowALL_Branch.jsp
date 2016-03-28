<%--
    Document   : ShowAll_Org
    Created on : Apr 20, 2013, 5:50:07 AM
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

            <center><div class="style1" style="width: 400px">Inserted Branches </div><br><br>

                <table bgcolor=white border=1 width="600"><tr><td>
                            <center><table ><tr><th class="table1">Branch_ID</th><th></th><th class="table1"> Branch Name</th></tr>

        <core:forEach items="${requestScope['r'].rows}" var="data">
            <tr bgcolor='lightgray'><td class="table1">${data.Branch_Id}</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td class="table1">${data.Branch_Name}</td><td class="table1"><a href='Show_Branch.do?Branch_Id=${data.Branch_Id}'><b> Show Full Info</b> </a></td><td>&nbsp;&nbsp;&nbsp;</td><td class="table1"><a href='Edit_Branch.do?Branch_Id=${data.Branch_Id}'><b> Edit</b> </a></td><td>&nbsp;&nbsp;&nbsp;</td><td class="table1"><a href='Delete_Branch.do?Branch_Id=${data.Branch_Id}'><b>Delete</b> </a></td> </tr>
    </core:forEach>
                    </table >
                </center></td></tr></table>
            </center>
            </div>
    </body>
</html>
