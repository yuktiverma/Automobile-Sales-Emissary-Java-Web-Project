<%--
    Document   : Edit_Area
    Created on : Apr 22, 2013, 2:49:33 PM
    Author     : Disha
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Display Industry</title>
    </head>
     <body>
        <div style="width: 648px ; height:350px; background: white;">

            <center><div class="style1" style="width: 400px">Inserted Industry </div><br><br>

                <table  bgcolor=white border=1 width='450'><tr><td>
                            <center><table class="table1"><tr><th class="table1" width="130">Industry ID</th><th class="table1"> Name</th><th class="table1" width="130"> Description</th></tr>

        <core:forEach items="${requestScope['r'].rows}" var="data">
<tr bgcolor='lightgray'><td class="table1"  width="130">${data.Industry_Id}</td><td  class="table1" width="130">${data.Industry_Name}</td><td class="table1" width="130">${data.Industry_Desc}</td></tr>
    </core:forEach>
                    </table>
                </center></td></tr></table>
            </center>
        </div>
    </body>
</html>
